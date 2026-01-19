global main
extern puts

section .data
msg db "Hello World", 0 

section .text
main:
	mov rdi, msg
	call puts
	
	xor eax, eax
	ret 
