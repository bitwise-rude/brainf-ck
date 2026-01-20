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
start_label0:
cmp byte [r12],0
je label0
call print
dec byte [r12]
dec byte [r12]
call print
call print
cmp byte [r12],0
jne start_label0
label0:
inc r12
inc r12
inc r12
dec byte [r12]
inc r12
inc byte [r12]
inc r12
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc byte [r12]
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
start_label1:
cmp byte [r12],0
je label1
start_label2:
cmp byte [r12],0
je label2
inc r12
inc r12
inc r12
inc byte [r12]
dec r12
dec r12
dec r12
dec byte [r12]
cmp byte [r12],0
jne start_label2
label2:
inc r12
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc r12
inc byte [r12]
inc r12
inc r12
inc byte [r12]
start_label3:
cmp byte [r12],0
je label3
dec r12
dec r12
inc byte [r12]
inc r12
inc r12
inc r12
inc r12
inc r12
inc byte [r12]
dec r12
dec r12
dec r12
dec byte [r12]
cmp byte [r12],0
jne start_label3
label3:
dec r12
dec byte [r12]
cmp byte [r12],0
jne start_label1
label1:
inc r12
inc r12
inc r12
inc r12
start_label4:
cmp byte [r12],0
je label4
start_label5:
cmp byte [r12],0
je label5
inc r12
inc r12
inc r12
inc byte [r12]
inc r12
inc byte [r12]
dec r12
dec r12
dec r12
dec r12
dec byte [r12]
cmp byte [r12],0
jne start_label5
label5:
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc r12
inc r12
inc byte [r12]
start_label6:
cmp byte [r12],0
je label6
dec r12
inc byte [r12]
inc r12
inc r12
inc r12
inc byte [r12]
inc r12
inc byte [r12]
dec r12
dec r12
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
inc r12
start_label8:
cmp byte [r12],0
je label8
start_label9:
cmp byte [r12],0
je label9
inc r12
inc r12
inc r12
inc byte [r12]
dec r12
dec r12
dec r12
dec byte [r12]
cmp byte [r12],0
jne start_label9
label9:
dec r12
cmp byte [r12],0
jne start_label8
label8:
dec r12
dec r12
inc byte [r12]
inc byte [r12]
inc r12
inc byte [r12]
inc r12
inc r12
inc r12
inc r12
inc r12
inc r12
dec byte [r12]
cmp byte [r12],0
jne start_label7
label7:
dec r12
dec byte [r12]
cmp byte [r12],0
jne start_label4
label4:
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc r12
inc byte [r12]
inc r12
start_label10:
cmp byte [r12],0
je label10
start_label11:
cmp byte [r12],0
je label11
dec byte [r12]
cmp byte [r12],0
jne start_label11
label11:
dec r12
inc byte [r12]
dec r12
start_label12:
cmp byte [r12],0
je label12
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
jne start_label12
label12:
dec r12
inc byte [r12]
cmp byte [r12],0
jne start_label10
label10:
inc r12
inc r12
start_label13:
cmp byte [r12],0
je label13
start_label14:
cmp byte [r12],0
je label14
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc byte [r12]
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
dec byte [r12]
dec byte [r12]
inc r12
inc r12
inc r12
cmp byte [r12],0
jne start_label14
label14:
inc byte [r12]
start_label15:
cmp byte [r12],0
je label15
dec byte [r12]
dec r12
dec r12
dec r12
cmp byte [r12],0
jne start_label15
label15:
inc r12
inc r12
inc r12
start_label16:
cmp byte [r12],0
je label16
inc r12
inc r12
call input
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
start_label17:
cmp byte [r12],0
je label17
inc r12
cmp byte [r12],0
jne start_label17
label17:
dec r12
cmp byte [r12],0
jne start_label16
label16:
dec r12
dec r12
start_label18:
cmp byte [r12],0
je label18
dec r12
dec r12
dec r12
start_label19:
cmp byte [r12],0
je label19
inc r12
dec byte [r12]
dec byte [r12]
start_label20:
cmp byte [r12],0
je label20
dec r12
dec byte [r12]
inc r12
inc r12
inc byte [r12]
inc r12
dec byte [r12]
dec r12
dec r12
dec byte [r12]
cmp byte [r12],0
jne start_label20
label20:
dec r12
start_label21:
cmp byte [r12],0
je label21
start_label22:
cmp byte [r12],0
je label22
inc r12
inc r12
inc r12
cmp byte [r12],0
jne start_label22
label22:
inc byte [r12]
inc r12
dec byte [r12]
start_label23:
cmp byte [r12],0
je label23
inc byte [r12]
inc r12
inc r12
inc byte [r12]
inc r12
dec byte [r12]
cmp byte [r12],0
jne start_label23
label23:
inc byte [r12]
start_label24:
cmp byte [r12],0
je label24
dec r12
dec r12
dec r12
cmp byte [r12],0
jne start_label24
label24:
dec r12
dec byte [r12]
cmp byte [r12],0
jne start_label21
label21:
inc r12
inc byte [r12]
inc byte [r12]
inc r12
start_label25:
cmp byte [r12],0
je label25
dec r12
inc byte [r12]
inc r12
dec byte [r12]
cmp byte [r12],0
jne start_label25
label25:
inc r12
start_label26:
cmp byte [r12],0
je label26
start_label27:
cmp byte [r12],0
je label27
inc r12
inc r12
inc r12
cmp byte [r12],0
jne start_label27
label27:
inc byte [r12]
start_label28:
cmp byte [r12],0
je label28
dec r12
dec r12
dec r12
cmp byte [r12],0
jne start_label28
label28:
inc r12
inc r12
inc r12
dec byte [r12]
cmp byte [r12],0
jne start_label26
label26:
inc byte [r12]
start_label29:
cmp byte [r12],0
je label29
dec byte [r12]
inc r12
inc r12
inc r12
cmp byte [r12],0
jne start_label29
label29:
dec r12
dec byte [r12]
start_label30:
cmp byte [r12],0
je label30
inc byte [r12]
inc byte [r12]
inc r12
cmp byte [r12],0
jne start_label30
label30:
inc r12
start_label31:
cmp byte [r12],0
je label31
dec byte [r12]
dec byte [r12]
dec byte [r12]
dec byte [r12]
dec byte [r12]
dec byte [r12]
dec r12
cmp byte [r12],0
jne start_label31
label31:
inc r12
inc byte [r12]
inc byte [r12]
inc byte [r12]
start_label32:
cmp byte [r12],0
je label32
dec r12
dec r12
dec r12
cmp byte [r12],0
jne start_label32
label32:
inc r12
cmp byte [r12],0
jne start_label19
label19:
dec r12
cmp byte [r12],0
jne start_label18
label18:
inc r12
start_label33:
cmp byte [r12],0
je label33
dec byte [r12]
start_label34:
cmp byte [r12],0
je label34
inc byte [r12]
inc r12
inc r12
inc byte [r12]
inc r12
dec byte [r12]
cmp byte [r12],0
jne start_label34
label34:
inc byte [r12]
inc r12
inc r12
inc byte [r12]
inc r12
inc r12
inc r12
inc byte [r12]
inc r12
start_label35:
cmp byte [r12],0
je label35
dec r12
dec r12
dec r12
cmp byte [r12],0
jne start_label35
label35:
inc r12
dec byte [r12]
inc r12
inc byte [r12]
inc r12
start_label36:
cmp byte [r12],0
je label36
inc r12
start_label37:
cmp byte [r12],0
je label37
dec byte [r12]
inc r12
inc byte [r12]
inc r12
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc r12
inc r12
inc byte [r12]
inc byte [r12]
start_label38:
cmp byte [r12],0
je label38
inc r12
inc r12
inc r12
cmp byte [r12],0
jne start_label38
label38:
inc byte [r12]
inc byte [r12]
inc byte [r12]
dec r12
dec r12
dec r12
inc byte [r12]
inc byte [r12]
dec r12
dec r12
dec r12
inc byte [r12]
inc byte [r12]
start_label39:
cmp byte [r12],0
je label39
inc r12
inc r12
inc r12
cmp byte [r12],0
jne start_label39
label39:
inc r12
inc r12
inc r12
cmp byte [r12],0
jne start_label37
label37:
dec r12
dec r12
dec r12
start_label40:
cmp byte [r12],0
je label40
inc r12
start_label41:
cmp byte [r12],0
je label41
inc r12
inc r12
inc r12
cmp byte [r12],0
jne start_label41
label41:
inc byte [r12]
inc r12
inc r12
inc r12
cmp byte [r12],0
jne start_label40
label40:
dec r12
dec r12
dec r12
dec r12
dec r12
dec r12
dec r12
start_label42:
cmp byte [r12],0
je label42
dec r12
dec r12
inc byte [r12]
inc byte [r12]
dec r12
inc byte [r12]
start_label43:
cmp byte [r12],0
je label43
dec byte [r12]
dec r12
dec r12
dec r12
inc byte [r12]
cmp byte [r12],0
jne start_label43
label43:
dec byte [r12]
inc r12
inc byte [r12]
inc byte [r12]
inc r12
inc r12
inc r12
inc byte [r12]
inc byte [r12]
inc r12
inc r12
inc r12
inc byte [r12]
inc byte [r12]
dec r12
dec r12
dec r12
dec r12
cmp byte [r12],0
jne start_label42
label42:
dec r12
dec r12
dec r12
inc byte [r12]
start_label44:
cmp byte [r12],0
je label44
dec byte [r12]
dec r12
dec r12
dec r12
inc byte [r12]
cmp byte [r12],0
jne start_label44
label44:
inc byte [r12]
inc r12
dec byte [r12]
inc r12
inc r12
dec byte [r12]
inc r12
inc r12
cmp byte [r12],0
jne start_label36
label36:
dec r12
dec r12
inc byte [r12]
dec r12
dec r12
inc byte [r12]
dec r12
dec r12
dec r12
inc byte [r12]
dec r12
dec r12
dec byte [r12]
start_label45:
cmp byte [r12],0
je label45
inc byte [r12]
dec r12
inc byte [r12]
dec r12
dec r12
dec byte [r12]
cmp byte [r12],0
jne start_label45
label45:
inc byte [r12]
dec r12
inc byte [r12]
start_label46:
cmp byte [r12],0
je label46
dec byte [r12]
inc r12
inc byte [r12]
inc r12
start_label47:
cmp byte [r12],0
je label47
dec byte [r12]
dec r12
dec byte [r12]
dec r12
dec r12
start_label48:
cmp byte [r12],0
je label48
dec r12
dec r12
dec r12
cmp byte [r12],0
jne start_label48
label48:
inc r12
start_label49:
cmp byte [r12],0
je label49
inc r12
inc r12
start_label50:
cmp byte [r12],0
je label50
inc r12
inc r12
inc r12
cmp byte [r12],0
jne start_label50
label50:
dec r12
dec r12
inc byte [r12]
dec r12
start_label51:
cmp byte [r12],0
je label51
dec r12
dec r12
dec r12
cmp byte [r12],0
jne start_label51
label51:
inc r12
dec byte [r12]
cmp byte [r12],0
jne start_label49
label49:
cmp byte [r12],0
jne start_label47
label47:
dec r12
start_label52:
cmp byte [r12],0
je label52
dec r12
start_label53:
cmp byte [r12],0
je label53
dec r12
start_label54:
cmp byte [r12],0
je label54
dec r12
dec r12
dec r12
cmp byte [r12],0
jne start_label54
label54:
inc r12
inc byte [r12]
inc r12
inc r12
start_label55:
cmp byte [r12],0
je label55
inc r12
inc r12
inc r12
cmp byte [r12],0
jne start_label55
label55:
dec r12
dec r12
dec byte [r12]
cmp byte [r12],0
jne start_label53
label53:
dec r12
start_label56:
cmp byte [r12],0
je label56
dec r12
dec r12
dec r12
cmp byte [r12],0
jne start_label56
label56:
cmp byte [r12],0
jne start_label52
label52:
inc r12
inc r12
inc r12
dec byte [r12]
inc r12
inc r12
inc r12
start_label57:
cmp byte [r12],0
je label57
inc r12
inc r12
inc r12
cmp byte [r12],0
jne start_label57
label57:
inc byte [r12]
inc r12
cmp byte [r12],0
jne start_label46
label46:
inc r12
inc byte [r12]
start_label58:
cmp byte [r12],0
je label58
dec byte [r12]
dec r12
dec r12
start_label59:
cmp byte [r12],0
je label59
dec byte [r12]
cmp byte [r12],0
jne start_label59
label59:
dec r12
cmp byte [r12],0
jne start_label58
label58:
dec byte [r12]
start_label60:
cmp byte [r12],0
je label60
start_label61:
cmp byte [r12],0
je label61
inc r12
inc r12
inc r12
cmp byte [r12],0
jne start_label61
label61:
dec r12
start_label62:
cmp byte [r12],0
je label62
dec r12
dec r12
start_label63:
cmp byte [r12],0
je label63
dec r12
dec r12
dec r12
cmp byte [r12],0
jne start_label63
label63:
inc r12
inc r12
inc r12
inc r12
inc r12
inc byte [r12]
inc r12
start_label64:
cmp byte [r12],0
je label64
inc r12
inc r12
inc r12
cmp byte [r12],0
jne start_label64
label64:
dec r12
dec byte [r12]
cmp byte [r12],0
jne start_label62
label62:
inc r12
inc r12
inc r12
start_label65:
cmp byte [r12],0
je label65
inc r12
start_label66:
cmp byte [r12],0
je label66
inc r12
inc r12
inc r12
cmp byte [r12],0
jne start_label66
label66:
dec r12
dec r12
dec r12
dec r12
inc byte [r12]
inc r12
start_label67:
cmp byte [r12],0
je label67
dec r12
dec r12
dec r12
cmp byte [r12],0
jne start_label67
label67:
inc r12
inc r12
dec byte [r12]
cmp byte [r12],0
jne start_label65
label65:
inc r12
cmp byte [r12],0
jne start_label60
label60:
dec r12
dec r12
dec r12
dec r12
dec r12
dec r12
start_label68:
cmp byte [r12],0
je label68
dec byte [r12]
dec byte [r12]
dec byte [r12]
dec r12
dec byte [r12]
dec byte [r12]
dec byte [r12]
dec byte [r12]
dec byte [r12]
start_label69:
cmp byte [r12],0
je label69
dec byte [r12]
start_label70:
cmp byte [r12],0
je label70
dec byte [r12]
start_label71:
cmp byte [r12],0
je label71
dec r12
dec byte [r12]
inc r12
inc r12
inc byte [r12]
inc byte [r12]
inc byte [r12]
dec r12
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc byte [r12]
start_label72:
cmp byte [r12],0
je label72
dec byte [r12]
cmp byte [r12],0
jne start_label72
label72:
cmp byte [r12],0
jne start_label71
label71:
cmp byte [r12],0
jne start_label70
label70:
cmp byte [r12],0
jne start_label69
label69:
dec r12
inc byte [r12]
dec r12
inc byte [r12]
cmp byte [r12],0
jne start_label68
label68:
inc r12
cmp byte [r12],0
jne start_label33
label33:
inc r12
inc r12
cmp byte [r12],0
jne start_label13
label13:
start_label73:
cmp byte [r12],0
je label73
call print
call print
call print
call print
call input
call print
call print
call print
call input
call input
call print
call print
dec byte [r12]
call print
dec byte [r12]
call print
call print
dec byte [r12]
call print
call print
cmp byte [r12],0
jne start_label73
label73:
mov rax,60
mov rdi,0
syscall

