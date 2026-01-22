[bits 64]
global _start
section .bss
tape resb 3000000
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
cmp byte [r12],0
je end_label0
start_label0:
call print
dec byte [r12]
dec byte [r12]
dec byte [r12]
dec byte [r12]
call print
call print
dec byte [r12]
call print
call print
dec byte [r12]
call print
call print
cmp byte [r12],0
jne start_label0
end_label0:
dec byte [r12]
dec byte [r12]
dec byte [r12]
inc r12
dec byte [r12]
dec byte [r12]
dec byte [r12]
inc r12
inc r12
inc r12
inc r12
dec byte [r12]
inc r12
dec byte [r12]
inc r12
dec byte [r12]
inc r12
inc r12
inc r12
inc r12
inc r12
dec byte [r12]
dec byte [r12]
inc r12
inc r12
inc r12
inc r12
inc r12
inc r12
inc r12
inc r12
inc r12
inc r12
inc r12
inc r12
inc r12
inc r12
inc r12
inc r12
inc r12
inc r12
inc byte [r12]
inc r12
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
cmp byte [r12],0
je end_label1
start_label1:
dec r12
dec r12
inc byte [r12]
inc byte [r12]
cmp byte [r12],0
je end_label2
start_label2:
dec byte [r12]
dec byte [r12]
dec r12
inc byte [r12]
dec r12
dec r12
inc byte [r12]
dec r12
dec r12
inc byte [r12]
inc r12
inc r12
inc r12
inc r12
cmp byte [r12],0
je end_label3
start_label3:
inc r12
cmp byte [r12],0
je end_label4
start_label4:
dec r12
dec byte [r12]
inc r12
inc r12
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc r12
inc r12
cmp byte [r12],0
je end_label5
start_label5:
dec byte [r12]
cmp byte [r12],0
jne start_label5
end_label5:
inc byte [r12]
inc byte [r12]
inc byte [r12]
dec r12
dec r12
dec r12
inc byte [r12]
cmp byte [r12],0
je end_label6
start_label6:
dec r12
inc byte [r12]
inc byte [r12]
inc r12
inc r12
inc byte [r12]
dec r12
dec byte [r12]
dec byte [r12]
cmp byte [r12],0
jne start_label6
end_label6:
cmp byte [r12],0
jne start_label4
end_label4:
inc byte [r12]
inc r12
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc byte [r12]
cmp byte [r12],0
je end_label7
start_label7:
inc r12
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
dec r12
dec r12
dec byte [r12]
cmp byte [r12],0
jne start_label7
end_label7:
inc r12
inc r12
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc byte [r12]
call print
cmp byte [r12],0
je end_label8
start_label8:
dec byte [r12]
cmp byte [r12],0
jne start_label8
end_label8:
inc r12
inc r12
inc byte [r12]
cmp byte [r12],0
je end_label9
start_label9:
dec r12
dec r12
dec r12
dec r12
inc byte [r12]
inc r12
inc r12
inc byte [r12]
inc r12
inc r12
dec byte [r12]
cmp byte [r12],0
jne start_label9
end_label9:
dec r12
dec r12
dec r12
dec r12
dec r12
dec r12
cmp byte [r12],0
je end_label10
start_label10:
inc r12
inc byte [r12]
dec r12
dec byte [r12]
cmp byte [r12],0
jne start_label10
end_label10:
dec r12
dec r12
cmp byte [r12],0
jne start_label3
end_label3:
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
call print
cmp byte [r12],0
je end_label11
start_label11:
dec byte [r12]
cmp byte [r12],0
jne start_label11
end_label11:
inc r12
inc byte [r12]
inc byte [r12]
cmp byte [r12],0
jne start_label2
end_label2:
dec byte [r12]
dec byte [r12]
inc r12
inc r12
cmp byte [r12],0
je end_label12
start_label12:
dec byte [r12]
dec byte [r12]
inc r12
cmp byte [r12],0
je end_label13
start_label13:
dec byte [r12]
cmp byte [r12],0
jne start_label13
end_label13:
inc r12
cmp byte [r12],0
jne start_label12
end_label12:
dec r12
dec r12
cmp byte [r12],0
je end_label14
start_label14:
inc r12
inc r12
dec byte [r12]
dec byte [r12]
cmp byte [r12],0
je end_label15
start_label15:
dec byte [r12]
cmp byte [r12],0
je end_label16
start_label16:
dec byte [r12]
cmp byte [r12],0
je end_label17
start_label17:
dec byte [r12]
dec byte [r12]
dec byte [r12]
dec byte [r12]
dec byte [r12]
cmp byte [r12],0
je end_label18
start_label18:
inc r12
inc byte [r12]
inc r12
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc byte [r12]
dec r12
dec r12
inc byte [r12]
cmp byte [r12],0
jne start_label18
end_label18:
dec byte [r12]
dec byte [r12]
inc r12
inc r12
dec byte [r12]
call print
dec byte [r12]
dec byte [r12]
dec byte [r12]
dec byte [r12]
dec byte [r12]
inc r12
call input
cmp byte [r12],0
je end_label19
start_label19:
dec r12
dec byte [r12]
inc r12
dec byte [r12]
cmp byte [r12],0
jne start_label19
end_label19:
dec r12
cmp byte [r12],0
je end_label20
start_label20:
cmp byte [r12],0
je end_label21
start_label21:
dec r12
cmp byte [r12],0
jne start_label21
end_label21:
inc byte [r12]
cmp byte [r12],0
je end_label22
start_label22:
dec byte [r12]
inc r12
inc r12
cmp byte [r12],0
jne start_label22
end_label22:
dec r12
dec byte [r12]
cmp byte [r12],0
jne start_label20
end_label20:
dec r12
cmp byte [r12],0
je end_label23
start_label23:
dec r12
dec r12
call input
cmp byte [r12],0
je end_label24
start_label24:
dec byte [r12]
cmp byte [r12],0
jne start_label24
end_label24:
cmp byte [r12],0
jne start_label23
end_label23:
inc r12
inc r12
inc r12
inc r12
cmp byte [r12],0
jne start_label17
end_label17:
inc r12
cmp byte [r12],0
jne start_label16
end_label16:
dec r12
cmp byte [r12],0
je end_label25
start_label25:
inc r12
dec byte [r12]
cmp byte [r12],0
je end_label26
start_label26:
inc byte [r12]
dec r12
inc byte [r12]
inc byte [r12]
inc byte [r12]
cmp byte [r12],0
jne start_label26
end_label26:
inc byte [r12]
dec r12
inc byte [r12]
inc byte [r12]
inc byte [r12]
cmp byte [r12],0
je end_label27
start_label27:
inc byte [r12]
cmp byte [r12],0
je end_label28
start_label28:
dec byte [r12]
dec byte [r12]
dec byte [r12]
dec byte [r12]
inc r12
cmp byte [r12],0
jne start_label28
end_label28:
inc byte [r12]
dec r12
dec r12
dec r12
dec r12
dec r12
dec r12
cmp byte [r12],0
je end_label29
start_label29:
inc r12
inc r12
cmp byte [r12],0
jne start_label29
end_label29:
dec r12
cmp byte [r12],0
je end_label30
start_label30:
dec byte [r12]
cmp byte [r12],0
jne start_label30
end_label30:
cmp byte [r12],0
jne start_label27
end_label27:
inc r12
cmp byte [r12],0
je end_label31
start_label31:
dec r12
inc byte [r12]
cmp byte [r12],0
je end_label32
start_label32:
dec byte [r12]
dec byte [r12]
dec byte [r12]
dec byte [r12]
inc r12
cmp byte [r12],0
jne start_label32
end_label32:
inc byte [r12]
inc byte [r12]
cmp byte [r12],0
je end_label33
start_label33:
dec r12
cmp byte [r12],0
jne start_label33
end_label33:
dec r12
cmp byte [r12],0
je end_label34
start_label34:
inc r12
cmp byte [r12],0
jne start_label34
end_label34:
inc r12
cmp byte [r12],0
je end_label35
start_label35:
cmp byte [r12],0
je end_label36
start_label36:
inc r12
cmp byte [r12],0
jne start_label36
end_label36:
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
dec r12
dec r12
dec byte [r12]
cmp byte [r12],0
je end_label37
start_label37:
dec r12
cmp byte [r12],0
jne start_label37
end_label37:
cmp byte [r12],0
jne start_label35
end_label35:
cmp byte [r12],0
jne start_label31
end_label31:
inc r12
cmp byte [r12],0
je end_label38
start_label38:
inc r12
inc r12
inc r12
inc r12
cmp byte [r12],0
jne start_label38
end_label38:
cmp byte [r12],0
jne start_label25
end_label25:
dec r12
cmp byte [r12],0
je end_label39
start_label39:
dec byte [r12]
cmp byte [r12],0
je end_label40
start_label40:
cmp byte [r12],0
je end_label41
start_label41:
inc r12
inc byte [r12]
inc r12
inc byte [r12]
dec r12
dec r12
dec byte [r12]
cmp byte [r12],0
jne start_label41
end_label41:
inc r12
cmp byte [r12],0
je end_label42
start_label42:
dec r12
inc byte [r12]
inc r12
dec byte [r12]
cmp byte [r12],0
jne start_label42
end_label42:
inc byte [r12]
inc byte [r12]
inc r12
inc byte [r12]
inc r12
inc r12
cmp byte [r12],0
jne start_label40
end_label40:
dec r12
cmp byte [r12],0
je end_label43
start_label43:
dec r12
dec r12
inc byte [r12]
inc byte [r12]
cmp byte [r12],0
je end_label44
start_label44:
dec byte [r12]
dec byte [r12]
inc r12
inc r12
cmp byte [r12],0
je end_label45
start_label45:
dec byte [r12]
cmp byte [r12],0
jne start_label45
end_label45:
cmp byte [r12],0
jne start_label44
end_label44:
inc r12
cmp byte [r12],0
je end_label46
start_label46:
cmp byte [r12],0
je end_label47
start_label47:
dec byte [r12]
cmp byte [r12],0
jne start_label47
end_label47:
inc r12
cmp byte [r12],0
je end_label48
start_label48:
dec r12
dec r12
inc byte [r12]
inc r12
inc r12
dec byte [r12]
cmp byte [r12],0
jne start_label48
end_label48:
inc r12
cmp byte [r12],0
jne start_label46
end_label46:
cmp byte [r12],0
jne start_label43
end_label43:
cmp byte [r12],0
jne start_label39
end_label39:
dec r12
cmp byte [r12],0
je end_label49
start_label49:
cmp byte [r12],0
je end_label50
start_label50:
cmp byte [r12],0
je end_label51
start_label51:
dec r12
dec r12
cmp byte [r12],0
jne start_label51
end_label51:
dec byte [r12]
cmp byte [r12],0
je end_label52
start_label52:
inc r12
inc r12
cmp byte [r12],0
jne start_label52
end_label52:
dec r12
inc byte [r12]
dec r12
dec byte [r12]
cmp byte [r12],0
jne start_label50
end_label50:
inc r12
cmp byte [r12],0
je end_label53
start_label53:
dec byte [r12]
dec r12
inc byte [r12]
cmp byte [r12],0
jne start_label53
end_label53:
dec r12
dec r12
cmp byte [r12],0
je end_label54
start_label54:
dec r12
dec r12
cmp byte [r12],0
jne start_label54
end_label54:
dec byte [r12]
dec r12
cmp byte [r12],0
je end_label55
start_label55:
inc r12
cmp byte [r12],0
je end_label56
start_label56:
inc byte [r12]
inc r12
inc r12
cmp byte [r12],0
jne start_label56
end_label56:
inc r12
cmp byte [r12],0
je end_label57
start_label57:
inc r12
cmp byte [r12],0
jne start_label57
end_label57:
inc r12
cmp byte [r12],0
je end_label58
start_label58:
dec byte [r12]
cmp byte [r12],0
jne start_label58
end_label58:
cmp byte [r12],0
jne start_label55
end_label55:
inc r12
cmp byte [r12],0
je end_label59
start_label59:
cmp byte [r12],0
je end_label60
start_label60:
inc byte [r12]
inc r12
inc r12
cmp byte [r12],0
jne start_label60
end_label60:
dec r12
dec byte [r12]
dec byte [r12]
inc r12
inc r12
cmp byte [r12],0
je end_label61
start_label61:
inc r12
cmp byte [r12],0
jne start_label61
end_label61:
inc byte [r12]
inc r12
inc r12
inc r12
cmp byte [r12],0
jne start_label59
end_label59:
cmp byte [r12],0
jne start_label49
end_label49:
dec r12
cmp byte [r12],0
je end_label62
start_label62:
dec byte [r12]
cmp byte [r12],0
je end_label63
start_label63:
dec byte [r12]
dec byte [r12]
cmp byte [r12],0
je end_label64
start_label64:
inc byte [r12]
dec r12
dec r12
dec r12
dec r12
dec byte [r12]
dec byte [r12]
cmp byte [r12],0
je end_label65
start_label65:
inc byte [r12]
inc r12
cmp byte [r12],0
je end_label66
start_label66:
dec byte [r12]
cmp byte [r12],0
jne start_label66
end_label66:
inc r12
cmp byte [r12],0
je end_label67
start_label67:
dec r12
dec r12
inc byte [r12]
inc r12
inc byte [r12]
inc r12
dec byte [r12]
cmp byte [r12],0
jne start_label67
end_label67:
dec r12
dec r12
cmp byte [r12],0
je end_label68
start_label68:
inc r12
inc r12
inc byte [r12]
dec r12
dec r12
dec byte [r12]
cmp byte [r12],0
jne start_label68
end_label68:
cmp byte [r12],0
jne start_label65
end_label65:
inc byte [r12]
inc byte [r12]
cmp byte [r12],0
je end_label69
start_label69:
inc r12
cmp byte [r12],0
jne start_label69
end_label69:
cmp byte [r12],0
jne start_label64
end_label64:
dec r12
dec r12
cmp byte [r12],0
je end_label70
start_label70:
inc r12
inc byte [r12]
inc r12
inc byte [r12]
dec r12
dec r12
dec byte [r12]
cmp byte [r12],0
jne start_label70
end_label70:
inc r12
dec byte [r12]
dec byte [r12]
cmp byte [r12],0
je end_label71
start_label71:
dec r12
inc byte [r12]
inc r12
dec byte [r12]
cmp byte [r12],0
jne start_label71
end_label71:
inc byte [r12]
inc byte [r12]
inc r12
inc r12
inc r12
cmp byte [r12],0
jne start_label63
end_label63:
dec r12
cmp byte [r12],0
je end_label72
start_label72:
dec r12
dec r12
dec r12
cmp byte [r12],0
je end_label73
start_label73:
dec byte [r12]
cmp byte [r12],0
jne start_label73
end_label73:
inc byte [r12]
inc byte [r12]
inc byte [r12]
inc r12
cmp byte [r12],0
je end_label74
start_label74:
dec byte [r12]
cmp byte [r12],0
jne start_label74
end_label74:
inc r12
cmp byte [r12],0
je end_label75
start_label75:
dec r12
inc byte [r12]
inc r12
inc r12
inc r12
inc byte [r12]
dec r12
dec r12
dec byte [r12]
cmp byte [r12],0
jne start_label75
end_label75:
inc byte [r12]
inc r12
inc r12
inc r12
cmp byte [r12],0
jne start_label72
end_label72:
cmp byte [r12],0
jne start_label62
end_label62:
dec r12
cmp byte [r12],0
je end_label76
start_label76:
inc byte [r12]
cmp byte [r12],0
je end_label77
start_label77:
cmp byte [r12],0
je end_label78
start_label78:
dec r12
cmp byte [r12],0
jne start_label78
end_label78:
dec r12
dec r12
cmp byte [r12],0
je end_label79
start_label79:
dec r12
dec r12
cmp byte [r12],0
jne start_label79
end_label79:
dec byte [r12]
dec r12
dec byte [r12]
inc r12
inc r12
inc byte [r12]
inc r12
cmp byte [r12],0
je end_label80
start_label80:
inc r12
inc r12
cmp byte [r12],0
jne start_label80
end_label80:
inc r12
cmp byte [r12],0
je end_label81
start_label81:
inc r12
cmp byte [r12],0
jne start_label81
end_label81:
dec r12
dec byte [r12]
cmp byte [r12],0
jne start_label77
end_label77:
inc byte [r12]
cmp byte [r12],0
je end_label82
start_label82:
dec byte [r12]
dec r12
inc byte [r12]
cmp byte [r12],0
jne start_label82
end_label82:
dec r12
inc byte [r12]
inc byte [r12]
cmp byte [r12],0
je end_label83
start_label83:
cmp byte [r12],0
je end_label84
start_label84:
inc r12
inc byte [r12]
dec r12
dec byte [r12]
cmp byte [r12],0
jne start_label84
end_label84:
inc byte [r12]
inc byte [r12]
dec r12
cmp byte [r12],0
je end_label85
start_label85:
dec r12
dec r12
dec byte [r12]
inc r12
inc r12
inc byte [r12]
cmp byte [r12],0
jne start_label85
end_label85:
dec r12
inc byte [r12]
inc byte [r12]
cmp byte [r12],0
jne start_label83
end_label83:
dec r12
dec r12
dec r12
dec r12
dec r12
dec r12
dec r12
inc byte [r12]
inc r12
inc r12
inc r12
inc byte [r12]
inc r12
inc r12
inc r12
inc byte [r12]
cmp byte [r12],0
je end_label86
start_label86:
dec r12
dec r12
dec r12
dec byte [r12]
inc r12
inc byte [r12]
inc r12
inc byte [r12]
inc r12
inc byte [r12]
cmp byte [r12],0
je end_label87
start_label87:
dec r12
dec r12
dec r12
dec r12
dec r12
dec r12
dec r12
inc byte [r12]
inc r12
dec byte [r12]
inc r12
inc byte [r12]
inc r12
inc r12
inc r12
dec byte [r12]
inc r12
dec byte [r12]
inc r12
inc byte [r12]
cmp byte [r12],0
je end_label88
start_label88:
dec r12
dec r12
dec r12
dec r12
dec r12
dec byte [r12]
inc r12
inc byte [r12]
inc r12
inc byte [r12]
inc r12
inc r12
inc byte [r12]
inc r12
inc byte [r12]
cmp byte [r12],0
je end_label89
start_label89:
dec r12
dec r12
dec r12
dec r12
dec byte [r12]
inc r12
dec byte [r12]
inc r12
inc byte [r12]
inc r12
dec byte [r12]
inc r12
inc byte [r12]
cmp byte [r12],0
je end_label90
start_label90:
dec r12
dec r12
dec r12
dec r12
dec r12
dec r12
dec r12
dec r12
inc byte [r12]
inc r12
dec byte [r12]
inc r12
inc r12
inc byte [r12]
inc r12
inc r12
inc r12
dec byte [r12]
inc r12
inc byte [r12]
inc r12
inc byte [r12]
cmp byte [r12],0
je end_label91
start_label91:
dec r12
dec r12
dec r12
dec r12
dec r12
dec byte [r12]
inc r12
inc r12
inc byte [r12]
inc r12
inc r12
dec byte [r12]
inc r12
inc byte [r12]
cmp byte [r12],0
je end_label92
start_label92:
dec r12
dec r12
dec r12
dec r12
inc byte [r12]
inc r12
dec byte [r12]
inc r12
inc byte [r12]
inc r12
inc r12
inc byte [r12]
cmp byte [r12],0
jne start_label92
end_label92:
cmp byte [r12],0
jne start_label91
end_label91:
cmp byte [r12],0
jne start_label90
end_label90:
cmp byte [r12],0
jne start_label89
end_label89:
cmp byte [r12],0
jne start_label88
end_label88:
cmp byte [r12],0
jne start_label87
end_label87:
cmp byte [r12],0
jne start_label86
end_label86:
inc byte [r12]
inc byte [r12]
inc byte [r12]
cmp byte [r12],0
je end_label93
start_label93:
cmp byte [r12],0
je end_label94
start_label94:
inc r12
inc byte [r12]
dec r12
dec byte [r12]
cmp byte [r12],0
jne start_label94
end_label94:
dec r12
inc byte [r12]
inc byte [r12]
inc byte [r12]
cmp byte [r12],0
jne start_label93
end_label93:
dec byte [r12]
dec byte [r12]
dec byte [r12]
inc r12
inc r12
cmp byte [r12],0
je end_label95
start_label95:
dec byte [r12]
cmp byte [r12],0
je end_label96
start_label96:
dec r12
dec byte [r12]
inc r12
dec byte [r12]
cmp byte [r12],0
jne start_label96
end_label96:
dec r12
inc byte [r12]
inc byte [r12]
inc r12
inc r12
cmp byte [r12],0
jne start_label95
end_label95:
inc byte [r12]
inc byte [r12]
cmp byte [r12],0
je end_label97
start_label97:
cmp byte [r12],0
je end_label98
start_label98:
dec r12
dec byte [r12]
inc r12
dec byte [r12]
cmp byte [r12],0
jne start_label98
end_label98:
inc r12
inc r12
cmp byte [r12],0
jne start_label97
end_label97:
inc r12
cmp byte [r12],0
je end_label99
start_label99:
inc r12
cmp byte [r12],0
jne start_label99
end_label99:
cmp byte [r12],0
jne start_label76
end_label76:
dec r12
cmp byte [r12],0
jne start_label15
end_label15:
cmp byte [r12],0
jne start_label14
end_label14:
dec r12
cmp byte [r12],0
jne start_label1
end_label1:
cmp byte [r12],0
je end_label100
start_label100:
dec byte [r12]
dec byte [r12]
call print
call print
call input
call print
call print
dec byte [r12]
dec byte [r12]
call print
inc r12
call input
call input
call input
call print
cmp byte [r12],0
jne start_label100
end_label100:
mov rax,60
mov rdi,0
syscall

