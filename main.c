#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/wait.h>
#include <stdbool.h>

#define CODE_LENGTH 1000000
#define MAX_LABELS 1000000

#define CODE_HEADER "[bits 64]\nglobal _start\n\
section .bss\n\
tape resb 30000\n\
section .text\n\
print:\n\
    mov rax, 1\n\
    mov rdi, 1\n\
    mov rsi, r12\n\
    mov rdx, 1\n\
    syscall\n\
    ret\n\n\
input:\n\
    mov rax, 0\n\
    mov rdi, 0\n\
    mov rsi, r12\n\
    mov rdx, 1\n\
    syscall\n\
    ret\n\n\
_start:\n\
lea r12, [tape]\n"

#define CODE_FOOTER "mov rax,60\nmov rdi,0\nsyscall\n\n"

// lexemes
#define LEX_RIGHT_ANGLE "inc r12\n"
#define LEX_LEFT_ANGLE  "dec r12\n"
#define LEX_PLUS        "inc byte [r12]\n"
#define LEX_MINUS       "dec byte [r12]\n"
#define LEX_DOT         "call print\n"
#define LEX_COMMA		"call input\n"
#define LEX_LEFT_BRACKET "cmp byte [r12],0\nje "
#define LEX_RIGHT_BRACKET "cmp byte [r12],0\njne start_label"


void show_usages_exit(char *reason){
	printf("\tBrainf*ck\n\nUsages:Brainf*ck <source_file.bf>\n\n%s\n",reason);
	exit(1);
}

void show_compiler_error(int line_no, int char_no, char *message){
	printf("\t\nError[%d:%d]: %s \n\n",line_no,char_no,message);
	exit(1);
}

void assemble_bf(){
	// call NASM and assemble the code

	pid_t pid_nasm = fork();
	
	if (pid_nasm == 0){
		execlp(
				"nasm",
				"nasm",
				"-felf64",
				"output.asm",
				"-o", "output.o",
				NULL
		      );
		perror("Error in NASM");
	}else{
		wait(NULL);
	}
}

void link_bf(){	
	// call LD and link the code TODO: use pipline to avoid creating temp file
	pid_t pid_linker = fork();
	
	if(pid_linker == 0){
		execlp(
				"ld",
				"ld",
				"output.o",
				"-o", "test_bf",
				NULL
		      );
		perror("linker failed");
	}else{
		wait(NULL);
	}

}

int main(int argc, char *argv[])
{
	if (argc < 2) show_usages_exit("");
	
	// read file 
	FILE *fp = fopen(argv[1],"r");
	if (fp == NULL) show_usages_exit("File Not Found");

	// will contain  bf code read from file
	int  buffer;
	// Assembly lives here
	char *code_buffer = (char *) malloc(CODE_LENGTH);
	if(code_buffer == NULL) show_usages_exit("Couldn't Allocate memory on the heap\n");

	*code_buffer = '\0';

	// combine header
	strcat(code_buffer,CODE_HEADER);

	// label counters
	size_t label_counter = 0;
	int *labels = (int *) malloc(MAX_LABELS);
	// initialize to 0
	memset(labels,0,MAX_LABELS);

	int line_no = 1;
	int char_no = 1;

	while((buffer = fgetc(fp)) != EOF ){
		switch (buffer)
		{
		case '>':
			strcat(code_buffer,LEX_RIGHT_ANGLE);
			break;
		case '<':
			strcat(code_buffer,LEX_LEFT_ANGLE);
			break;
		case '+':
			strcat(code_buffer,LEX_PLUS);
			break;
		case '-':
			strcat(code_buffer,LEX_MINUS);
			break;
		case '.':
			strcat(code_buffer,LEX_DOT);
			break;
		case ',':
			strcat(code_buffer,LEX_COMMA);
			break;
		case '[':
			// itoa -> adding labels
			int length = snprintf(NULL,0,"%ld",label_counter);
			char *label_index = malloc(length+1);
			*(label_index+length) = '\0';
			snprintf(label_index,length+1,"%ld",label_counter);
			
			strcat(code_buffer, "start_label");
			strcat(code_buffer,label_index);
			strcat(code_buffer,":\n" LEX_LEFT_BRACKET "label");
			strcat(code_buffer,label_index);
			strcat(code_buffer,"\n");

			free(label_index);

			
			labels[label_counter] = 1;
			label_counter +=1;
			
			break;

		case ']':
			// itoa

			// find the nearby unclosed label
			size_t label_counter_2 = 0;
			bool found = false;

			for(int i=label_counter-1;i>=0;i--){
				if (labels[i] == 1) {
					 label_counter_2 = i;
					 found = true;
					 labels[i] = 0;
					 break;
				}
			}
			if (! found) show_compiler_error(line_no,char_no, "`]` without `[`, Invalid Syntax, Loop ended without a start");
	
			int length2 = snprintf(NULL,0,"%ld",label_counter_2);
			char *label_index2 = malloc(length2+1);
			*(label_index2+length2) = '\0';
			snprintf(label_index2,length2+1,"%ld",label_counter_2);

			strcat(code_buffer,LEX_RIGHT_BRACKET);
			strcat(code_buffer,label_index2);
			strcat(code_buffer,"\n" "label");
			strcat(code_buffer,label_index2);
			strcat(code_buffer,":\n");

			free(label_index2);
			
			break;
		
		case '\n':
			line_no += 1;
			break;
		}
		char_no += 1;

		
	}
	// check for khulla `[`
	for(int i=label_counter-1;i>=0;i--) if (labels[i] == 1) show_compiler_error(0,0,"One or many loop are not Closed. Couldn't Find `]` for ''[");	
	fclose(fp);
	free(labels);
	
	// combien footer
	strcat(code_buffer,CODE_FOOTER);

	// save assembly file
	FILE *fp2 = fopen("output.asm","w");
	if(fp2==NULL) show_usages_exit("Output file couldn't be opened");
	fprintf(fp2,"%s", code_buffer);
	fclose(fp2);

	assemble_bf();
	link_bf();

	// to delete or not to delete the assembly file is the question
	if (argc >= 3){
		if(strcmp(argv[2],"-ca") == 0) {
			remove("output.asm");
			remove("output.o");
		}
	}

	
	return 0;
}
