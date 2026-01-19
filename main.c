#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/wait.h>

#define CODE_LENGTH 100000

#define CODE_HEADER "global _start\n\
					section .bss\n\
					tape resb 30000\n\
					section .text\n\
					print:\n\
					mov rax,1\n\
					mov rdi,1 \n\
					mov rsi,[tape_pointer]\n\
					mov rdx,1\n\
					syscall\n\
					ret\n\n\
					_start:\n\
					tape_pointer dq tape\n"

#define CODE_FOOTER "mov rax,60\nmov rdi,0\nsyscall\n\n"

// lexemes
#define LEX_RIGHT_ANGLE "mov rax, [tape_pointer]\ninc rax\n mov [tape_pointer], rax\n"
#define LEX_LEFT_ANGLE "mov rax, [tape_pointer]\ndec rax\n mov [tape_pointer], rax\n"
#define LEX_PLUS "mov rax, [tape_pointer]\ninc byte [rax]\n"
#define LEX_MINUS "mov rax, [tape_pointer]\ndec byte [rax]\n"
#define LEX_DOT "call print\n"

void show_usages_exit(char *reason)
{
	printf("\tBrainf*ck\n\nUsages:Brainf*ck <source_file.bf>\n\n%s\n",reason);
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
	
	// read file how brain
	FILE *fp = fopen(argv[1],"r");
	if (fp == NULL) show_usages_exit("File Not Found");

	int  buffer;
	char *code_buffer = (char *) malloc(CODE_LENGTH);
	*code_buffer = '\0';

	// combine header
	strcat(code_buffer,CODE_HEADER);

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
		}
	}
	fclose(fp);
	
	
	// combien footer
	strcat(code_buffer,CODE_FOOTER);
	printf("%s",code_buffer);

	// save assembly file
	FILE *fp2 = fopen("output.asm","w");
	if(fp==NULL) show_usages_exit("Output file couldn't be opened");
	
	fprintf(fp2,"%s", code_buffer);
	fclose(fp2);

	assemble_bf();
	link_bf();
	
	return 0;
}
