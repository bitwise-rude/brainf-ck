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
inc r12
inc byte [r12]
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
inc byte [r12]
inc r12
inc byte [r12]
start_label0:
cmp byte [r12],0
je label0
start_label1:
cmp byte [r12],0
je label1
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc byte [r12]
start_label2:
cmp byte [r12],0
je label2
inc r12
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc byte [r12]
dec r12
dec byte [r12]
cmp byte [r12],0
jne start_label2
label2:
inc r12
call print
dec r12
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc byte [r12]
start_label3:
cmp byte [r12],0
je label3
inc r12
dec byte [r12]
dec byte [r12]
dec byte [r12]
dec byte [r12]
dec byte [r12]
dec byte [r12]
dec byte [r12]
dec byte [r12]
dec r12
dec byte [r12]
cmp byte [r12],0
jne start_label3
label3:
inc byte [r12]
dec r12
dec r12
dec r12
cmp byte [r12],0
jne start_label1
label1:
inc r12
call print
inc r12
inc r12
start_label4:
cmp byte [r12],0
je label4
start_label5:
cmp byte [r12],0
je label5
dec byte [r12]
cmp byte [r12],0
jne start_label5
label5:
dec r12
start_label6:
cmp byte [r12],0
je label6
inc r12
inc byte [r12]
dec r12
dec byte [r12]
cmp byte [r12],0
jne start_label6
label6:
inc r12
inc r12
start_label7:
cmp byte [r12],0
je label7
dec r12
dec r12
inc byte [r12]
inc r12
inc byte [r12]
inc r12
dec byte [r12]
cmp byte [r12],0
jne start_label7
label7:
dec r12
start_label8:
cmp byte [r12],0
je label8
inc r12
inc byte [r12]
dec r12
dec byte [r12]
start_label9:
cmp byte [r12],0
je label9
inc r12
inc byte [r12]
dec r12
dec byte [r12]
start_label10:
cmp byte [r12],0
je label10
inc r12
inc byte [r12]
dec r12
dec byte [r12]
start_label11:
cmp byte [r12],0
je label11
inc r12
inc byte [r12]
dec r12
dec byte [r12]
start_label12:
cmp byte [r12],0
je label12
inc r12
inc byte [r12]
dec r12
dec byte [r12]
start_label13:
cmp byte [r12],0
je label13
inc r12
inc byte [r12]
dec r12
dec byte [r12]
start_label14:
cmp byte [r12],0
je label14
inc r12
inc byte [r12]
dec r12
dec byte [r12]
start_label15:
cmp byte [r12],0
je label15
inc r12
inc byte [r12]
dec r12
dec byte [r12]
start_label16:
cmp byte [r12],0
je label16
inc r12
inc byte [r12]
dec r12
dec byte [r12]
start_label17:
cmp byte [r12],0
je label17
inc r12
start_label18:
cmp byte [r12],0
je label18
dec byte [r12]
cmp byte [r12],0
jne start_label18
label18:
inc r12
inc byte [r12]
inc r12
inc byte [r12]
dec r12
dec r12
dec r12
dec byte [r12]
start_label19:
cmp byte [r12],0
je label19
inc r12
inc byte [r12]
dec r12
dec byte [r12]
cmp byte [r12],0
jne start_label19
label19:
cmp byte [r12],0
jne start_label17
label17:
cmp byte [r12],0
jne start_label16
label16:
cmp byte [r12],0
jne start_label15
label15:
cmp byte [r12],0
jne start_label14
label14:
cmp byte [r12],0
jne start_label13
label13:
cmp byte [r12],0
jne start_label12
label12:
cmp byte [r12],0
jne start_label11
label11:
cmp byte [r12],0
jne start_label10
label10:
cmp byte [r12],0
jne start_label9
label9:
cmp byte [r12],0
jne start_label8
label8:
inc byte [r12]
inc r12
inc r12
inc r12
cmp byte [r12],0
jne start_label4
label4:
dec r12
dec r12
dec r12
cmp byte [r12],0
jne start_label0
label0:
call print
call print
call print
mov rax,60
mov rdi,0
syscall

