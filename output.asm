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

_start:
lea r12, [tape]
start_label1:
cmp byte [r12],0
je label1
cmp byte [r12],0
jne start_label1
label1:
mov rax,60
mov rdi,0
syscall

