#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/wait.h>
#include <stdbool.h>

#define CODE_LENGTH 100000000
#define MAX_LABELS 1000000

#define CODE_HEADER "[bits 64]\nglobal _start\n\
section .bss\n\
tape resb 3000000\n\
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
#define LEX_LEFT_BRACKET "cmp byte [r12],0\nje end_label%lu\nstart_label%lu:\n"
#define LEX_RIGHT_BRACKET "cmp byte [r12],0\njne start_label%lu\nend_label%lu:\n"

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
				"-o", "output",
				NULL
		      );
		perror("linker failed");
	}else{
		wait(NULL);
	}
}

struct stack_entry{
	int line_no;
	int char_no;
	size_t label_counter;
};


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
	char *code_end = code_buffer;
	if(code_buffer == NULL) show_usages_exit("Couldn't Allocate memory on the heap\n");

	*code_buffer = '\0';

	// combine header
	code_end+=sprintf(code_end,CODE_HEADER);

	// label counters
	size_t label_counter = 0;
 	struct stack_entry *stack = (struct stack_entry *) malloc(MAX_LABELS*sizeof(struct stack_entry));
	if(stack == NULL) show_usages_exit("Couldn't allocate memory on the heap\n");
	size_t stacktop=0;

	int line_no = 1;
	int char_no = 1;

	while((buffer = fgetc(fp)) != EOF ){
		switch (buffer)
		{
		case '>':
			code_end+=sprintf(code_end,LEX_RIGHT_ANGLE);
			break;
		case '<':
			code_end+=sprintf(code_end,LEX_LEFT_ANGLE);
			break;
		case '+':
			code_end+=sprintf(code_end,LEX_PLUS);
			break;
		case '-':
			code_end+=sprintf(code_end,LEX_MINUS);
			break;
		case '.':
			code_end+=sprintf(code_end,LEX_DOT);
			break;
		case ',':
			code_end+=sprintf(code_end,LEX_COMMA);
			break;
		case '[':
			code_end+=sprintf(code_end, LEX_LEFT_BRACKET,label_counter,label_counter);
			stack[stacktop].line_no=line_no;
			stack[stacktop].char_no=char_no;
			stack[stacktop++].label_counter=label_counter++;
			break;
		case ']':
			if (! stacktop--) show_compiler_error(line_no,char_no, "Unmatched `]`");
			code_end+=sprintf(code_end,LEX_RIGHT_BRACKET,stack[stacktop].label_counter,stack[stacktop].label_counter);
			break;
		case '\n':
			line_no += 1;
			char_no = 0;
			break;
		}
		char_no += 1;
		if(code_end>code_buffer+CODE_LENGTH-200) show_usages_exit("Generated program exceeds length limit");
	}
	// check for khulla `[`
	if (stacktop--) show_compiler_error(stack[stacktop].line_no,stack[stacktop].char_no,"Unmatched '['");


	fclose(fp);
	free(stack);
	
	// combien footer
	code_end+=sprintf(code_end,CODE_FOOTER);

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
