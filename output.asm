[bits 64]
global _start
section .bss
tape resb 30000
section .text
print:
    mov rax, 1
    mov rdi, 1
    mov rsi, r12
    mov rdx, 1
    syscall
    ret

input:
    mov rax, 0
    mov rdi, 0
    mov rsi, r12
    mov rdx, 1
    syscall
    ret

_start:
lea r12, [tape]
mov rax,60
mov rdi,0
syscall

