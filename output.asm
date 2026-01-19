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
inc r12
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc byte [r12]
start_label0:
cmp byte [r12],0
je label0
dec r12
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc r12
dec byte [r12]
cmp byte [r12],0
jne start_label0
label0:
dec r12
call print
inc r12
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc byte [r12]
start_label1:
cmp byte [r12],0
je label1
dec r12
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc r12
dec byte [r12]
cmp byte [r12],0
jne start_label1
label1:
dec r12
inc byte [r12]
call print
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc byte [r12]
call print
call print
inc byte [r12]
inc byte [r12]
inc byte [r12]
call print
inc r12
inc r12
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc byte [r12]
start_label2:
cmp byte [r12],0
je label2
dec r12
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc r12
dec byte [r12]
cmp byte [r12],0
jne start_label2
label2:
dec r12
inc byte [r12]
inc byte [r12]
call print
dec byte [r12]
dec byte [r12]
dec byte [r12]
dec byte [r12]
dec byte [r12]
dec byte [r12]
dec byte [r12]
dec byte [r12]
dec byte [r12]
dec byte [r12]
dec byte [r12]
dec byte [r12]
call print
inc r12
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc byte [r12]
start_label3:
cmp byte [r12],0
je label3
dec r12
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc r12
dec byte [r12]
cmp byte [r12],0
jne start_label3
label3:
dec r12
inc byte [r12]
call print
dec r12
call print
inc byte [r12]
inc byte [r12]
inc byte [r12]
call print
dec byte [r12]
dec byte [r12]
dec byte [r12]
dec byte [r12]
dec byte [r12]
dec byte [r12]
call print
dec byte [r12]
dec byte [r12]
dec byte [r12]
dec byte [r12]
dec byte [r12]
dec byte [r12]
dec byte [r12]
dec byte [r12]
call print
inc r12
inc r12
inc r12
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc byte [r12]
start_label4:
cmp byte [r12],0
je label4
dec r12
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc r12
dec byte [r12]
cmp byte [r12],0
jne start_label4
label4:
dec r12
inc byte [r12]
call print
mov rax,60
mov rdi,0
syscall

