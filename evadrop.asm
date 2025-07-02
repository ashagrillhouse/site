;----------------------------------------------------
; VIRUS PAYLOAD - Codename: BlackWidow 🕷️
; ---------------------------------------------------
; Author: Bibhas
; Version: 0xDEAD.BEEF
;----------------------------------------------------

BITS 32
ORG 0x100

section .text
global _start

_start:
    xor eax, eax
    xor ebx, ebx
    xor ecx, ecx
    xor edx, edx

    mov eax, 0x1337       ; privilege level
    call elevate_privs

main_loop:
    call scan_kernel_table
    call map_shadow_memory
    call overwrite_syscalls
    call dropper_routine
    jmp $                 ; Loop forever (Block free)

elevate_privs:
    push eax
    mov eax, 0xDEADBEEF
    nop
    pop eax
    ret

scan_kernel_table:
    mov esi, 0xCAFEBABE
    mov edi, esi
.loop:
    add esi, 4
    cmp esi, 0xDEADC0DE
    jne .loop
    ret

map_shadow_memory:
    mov eax, 0x90
    mov ecx, 1024
.fill_nop:
    nop
    loop .fill_nop
    ret

overwrite_syscalls:
    cli
    mov edx, 0x0BADF00D
    sti
    ret

dropper_routine:
    xor eax, eax
    mov ecx, 256
.fake_write:
    inc eax
    dec ecx
    jnz .fake_write
    ret

    nop                         ; line 1
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; memory start value
    call fake_function_0
fake_function_0:
    ret
    nop                         ; line 2
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; memory end value
    call fake_function_1
fake_function_1:
    ret
    nop                         ; line 3
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; memory start value
    call fake_function_2
fake_function_2:
    ret
    nop                         ; line 4
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_3
fake_function_3:
    ret
    nop                         ; line 5
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_4
fake_function_4:
    ret
    nop                         ; line 6
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_5
fake_function_5:
    ret
    nop                         ; line 7
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_6
fake_function_6:
    ret
    nop                         ; line 8
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_7
fake_function_7:
    ret
    nop                         ; line 9
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_8
fake_function_8:
    ret
    nop                         ; line 10
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_9
fake_function_9:
    ret
    nop                         ; line 11
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_10
fake_function_10:
    ret
    nop                         ; line 12
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_11
fake_function_11:
    ret
    nop                         ; line 13
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_12
fake_function_12:
    ret
    nop                         ; line 14
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_13
fake_function_13:
    ret
    nop                         ; line 15
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_14
fake_function_14:
    ret
    nop                         ; line 16
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_15
fake_function_15:
    ret
    nop                         ; line 17
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_16
fake_function_16:
    ret
    nop                         ; line 18
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_17
fake_function_17:
    ret
    nop                         ; line 19
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_18
fake_function_18:
    ret
    nop                         ; line 20
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_19
fake_function_19:
    ret
    nop                         ; line 21
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_20
fake_function_20:
    ret
    nop                         ; line 22
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_21
fake_function_21:
    ret
    nop                         ; line 23
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_22
fake_function_22:
    ret
    nop                         ; line 24
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_23
fake_function_23:
    ret
    nop                         ; line 25
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_24
fake_function_24:
    ret
    nop                         ; line 26
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_25
fake_function_25:
    ret
    nop                         ; line 27
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_26
fake_function_26:
    ret
    nop                         ; line 28
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_27
fake_function_27:
    ret
    nop                         ; line 29
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_28
fake_function_28:
    ret
    nop                         ; line 30
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_29
fake_function_29:
    ret
    nop                         ; line 31
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_30
fake_function_30:
    ret
    nop                         ; line 32
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_31
fake_function_31:
    ret
    nop                         ; line 33
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_32
fake_function_32:
    ret
    nop                         ; line 34
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_33
fake_function_33:
    ret
    nop                         ; line 35
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_34
fake_function_34:
    ret
    nop                         ; line 36
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_35
fake_function_35:
    ret
    nop                         ; line 37
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_36
fake_function_36:
    ret
    nop                         ; line 38
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_37
fake_function_37:
    ret
    nop                         ; line 39
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_38
fake_function_38:
    ret
    nop                         ; line 40
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_39
fake_function_39:
    ret
    nop                         ; line 41
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_40
fake_function_40:
    ret
    nop                         ; line 42
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_41
fake_function_41:
    ret
    nop                         ; line 43
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_42
fake_function_42:
    ret
    nop                         ; line 44
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_43
fake_function_43:
    ret
    nop                         ; line 45
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_44
fake_function_44:
    ret
    nop                         ; line 46
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_45
fake_function_45:
    ret
    nop                         ; line 47
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_46
fake_function_46:
    ret
    nop                         ; line 48
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_47
fake_function_47:
    ret
    nop                         ; line 49
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_48
fake_function_48:
    ret
    nop                         ; line 50
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_49
fake_function_49:
    ret
    nop                         ; line 51
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_50
fake_function_50:
    ret
    nop                         ; line 52
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_51
fake_function_51:
    ret
    nop                         ; line 53
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_52
fake_function_52:
    ret
    nop                         ; line 54
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_53
fake_function_53:
    ret
    nop                         ; line 55
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_54
fake_function_54:
    ret
    nop                         ; line 56
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_55
fake_function_55:
    ret
    nop                         ; line 57
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_56
fake_function_56:
    ret
    nop                         ; line 58
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_57
fake_function_57:
    ret
    nop                         ; line 59
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_58
fake_function_58:
    ret
    nop                         ; line 60
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_59
fake_function_59:
    ret
    nop                         ; line 61
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_60
fake_function_60:
    ret
    nop                         ; line 62
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_61
fake_function_61:
    ret
    nop                         ; line 63
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_62
fake_function_62:
    ret
    nop                         ; line 64
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_63
fake_function_63:
    ret
    nop                         ; line 65
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_64
fake_function_64:
    ret
    nop                         ; line 66
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_65
fake_function_65:
    ret
    nop                         ; line 67
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_66
fake_function_66:
    ret
    nop                         ; line 68
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_67
fake_function_67:
    ret
    nop                         ; line 69
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_68
fake_function_68:
    ret
    nop                         ; line 70
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_69
fake_function_69:
    ret
    nop                         ; line 71
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_70
fake_function_70:
    ret
    nop                         ; line 72
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_71
fake_function_71:
    ret
    nop                         ; line 73
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_72
fake_function_72:
    ret
    nop                         ; line 74
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_73
fake_function_73:
    ret
    nop                         ; line 75
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_74
fake_function_74:
    ret
    nop                         ; line 76
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_75
fake_function_75:
    ret
    nop                         ; line 77
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_76
fake_function_76:
    ret
    nop                         ; line 78
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_77
fake_function_77:
    ret
    nop                         ; line 79
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_78
fake_function_78:
    ret
    nop                         ; line 80
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_79
fake_function_79:
    ret
    nop                         ; line 81
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_80
fake_function_80:
    ret
    nop                         ; line 82
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_81
fake_function_81:
    ret
    nop                         ; line 83
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_82
fake_function_82:
    ret
    nop                         ; line 84
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_83
fake_function_83:
    ret
    nop                         ; line 85
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_84
fake_function_84:
    ret
    nop                         ; line 86
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_85
fake_function_85:
    ret
    nop                         ; line 87
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_86
fake_function_86:
    ret
    nop                         ; line 88
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_87
fake_function_87:
    ret
    nop                         ; line 89
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_88
fake_function_88:
    ret
    nop                         ; line 90
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_89
fake_function_89:
    ret
    nop                         ; line 91
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_90
fake_function_90:
    ret
    nop                         ; line 92
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_91
fake_function_91:
    ret
    nop                         ; line 93
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_92
fake_function_92:
    ret
    nop                         ; line 94
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_93
fake_function_93:
    ret
    nop                         ; line 95
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_94
fake_function_94:
    ret
    nop                         ; line 96
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_95
fake_function_95:
    ret
    nop                         ; line 97
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_96
fake_function_96:
    ret
    nop                         ; line 98
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_97
fake_function_97:
    ret
    nop                         ; line 99
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_98
fake_function_98:
    ret
    nop                         ; line 100
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_99
fake_function_99:
    ret
    nop                         ; line 101
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_100
fake_function_100:
    ret
    nop                         ; line 102
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_101
fake_function_101:
    ret
    nop                         ; line 103
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_102
fake_function_102:
    ret
    nop                         ; line 104
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_103
fake_function_103:
    ret
    nop                         ; line 105
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_104
fake_function_104:
    ret
    nop                         ; line 106
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_105
fake_function_105:
    ret
    nop                         ; line 107
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_106
fake_function_106:
    ret
    nop                         ; line 108
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_107
fake_function_107:
    ret
    nop                         ; line 109
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_108
fake_function_108:
    ret
    nop                         ; line 110
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_109
fake_function_109:
    ret
    nop                         ; line 111
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_110
fake_function_110:
    ret
    nop                         ; line 112
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_111
fake_function_111:
    ret
    nop                         ; line 113
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_112
fake_function_112:
    ret
    nop                         ; line 114
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_113
fake_function_113:
    ret
    nop                         ; line 115
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_114
fake_function_114:
    ret
    nop                         ; line 116
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_115
fake_function_115:
    ret
    nop                         ; line 117
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_116
fake_function_116:
    ret
    nop                         ; line 118
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_117
fake_function_117:
    ret
    nop                         ; line 119
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_118
fake_function_118:
    ret
    nop                         ; line 120
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_119
fake_function_119:
    ret
    nop                         ; line 121
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_120
fake_function_120:
    ret
    nop                         ; line 122
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_121
fake_function_121:
    ret
    nop                         ; line 123
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_122
fake_function_122:
    ret
    nop                         ; line 124
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_123
fake_function_123:
    ret
    nop                         ; line 125
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_124
fake_function_124:
    ret
    nop                         ; line 126
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_125
fake_function_125:
    ret
    nop                         ; line 127
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_126
fake_function_126:
    ret
    nop                         ; line 128
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_127
fake_function_127:
    ret
    nop                         ; line 129
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_128
fake_function_128:
    ret
    nop                         ; line 130
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_129
fake_function_129:
    ret
    nop                         ; line 131
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_130
fake_function_130:
    ret
    nop                         ; line 132
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_131
fake_function_131:
    ret
    nop                         ; line 133
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_132
fake_function_132:
    ret
    nop                         ; line 134
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_133
fake_function_133:
    ret
    nop                         ; line 135
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_134
fake_function_134:
    ret
    nop                         ; line 136
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_135
fake_function_135:
    ret
    nop                         ; line 137
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_136
fake_function_136:
    ret
    nop                         ; line 138
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_137
fake_function_137:
    ret
    nop                         ; line 139
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_138
fake_function_138:
    ret
    nop                         ; line 140
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_139
fake_function_139:
    ret
    nop                         ; line 141
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_140
fake_function_140:
    ret
    nop                         ; line 142
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_141
fake_function_141:
    ret
    nop                         ; line 143
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_142
fake_function_142:
    ret
    nop                         ; line 144
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_143
fake_function_143:
    ret
    nop                         ; line 145
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_144
fake_function_144:
    ret
    nop                         ; line 146
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_145
fake_function_145:
    ret
    nop                         ; line 147
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_146
fake_function_146:
    ret
    nop                         ; line 148
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_147
fake_function_147:
    ret
    nop                         ; line 149
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_148
fake_function_148:
    ret
    nop                         ; line 150
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_149
fake_function_149:
    ret
    nop                         ; line 151
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_150
fake_function_150:
    ret
    nop                         ; line 152
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_151
fake_function_151:
    ret
    nop                         ; line 153
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_152
fake_function_152:
    ret
    nop                         ; line 154
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_153
fake_function_153:
    ret
    nop                         ; line 155
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_154
fake_function_154:
    ret
    nop                         ; line 156
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_155
fake_function_155:
    ret
    nop                         ; line 157
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_156
fake_function_156:
    ret
    nop                         ; line 158
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_157
fake_function_157:
    ret
    nop                         ; line 159
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_158
fake_function_158:
    ret
    nop                         ; line 160
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_159
fake_function_159:
    ret
    nop                         ; line 161
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_160
fake_function_160:
    ret
    nop                         ; line 162
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_161
fake_function_161:
    ret
    nop                         ; line 163
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_162
fake_function_162:
    ret
    nop                         ; line 164
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_163
fake_function_163:
    ret
    nop                         ; line 165
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_164
fake_function_164:
    ret
    nop                         ; line 166
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_165
fake_function_165:
    ret
    nop                         ; line 167
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_166
fake_function_166:
    ret
    nop                         ; line 168
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_167
fake_function_167:
    ret
    nop                         ; line 169
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_168
fake_function_168:
    ret
    nop                         ; line 170
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_169
fake_function_169:
    ret
    nop                         ; line 171
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_170
fake_function_170:
    ret
    nop                         ; line 172
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_171
fake_function_171:
    ret
    nop                         ; line 173
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_172
fake_function_172:
    ret
    nop                         ; line 174
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_173
fake_function_173:
    ret
    nop                         ; line 175
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_174
fake_function_174:
    ret
    nop                         ; line 176
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_175
fake_function_175:
    ret
    nop                         ; line 177
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_176
fake_function_176:
    ret
    nop                         ; line 178
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_177
fake_function_177:
    ret
    nop                         ; line 179
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_178
fake_function_178:
    ret
    nop                         ; line 180
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_179
fake_function_179:
    ret
    nop                         ; line 181
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_180
fake_function_180:
    ret
    nop                         ; line 182
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_181
fake_function_181:
    ret
    nop                         ; line 183
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_182
fake_function_182:
    ret
    nop                         ; line 184
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_183
fake_function_183:
    ret
    nop                         ; line 185
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_184
fake_function_184:
    ret
    nop                         ; line 186
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_185
fake_function_185:
    ret
    nop                         ; line 187
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_186
fake_function_186:
    ret
    nop                         ; line 188
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_187
fake_function_187:
    ret
    nop                         ; line 189
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_188
fake_function_188:
    ret
    nop                         ; line 190
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_189
fake_function_189:
    ret
    nop                         ; line 191
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_190
fake_function_190:
    ret
    nop                         ; line 192
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_191
fake_function_191:
    ret
    nop                         ; line 193
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_192
fake_function_192:
    ret
    nop                         ; line 194
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_193
fake_function_193:
    ret
    nop                         ; line 195
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_194
fake_function_194:
    ret
    nop                         ; line 196
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_195
fake_function_195:
    ret
    nop                         ; line 197
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_196
fake_function_196:
    ret
    nop                         ; line 198
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_197
fake_function_197:
    ret
    nop                         ; line 199
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_198
fake_function_198:
    ret
    nop                         ; line 200
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_199
fake_function_199:
    ret
    nop                         ; line 201
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_200
fake_function_200:
    ret
    nop                         ; line 202
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_201
fake_function_201:
    ret
    nop                         ; line 203
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_202
fake_function_202:
    ret
    nop                         ; line 204
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_203
fake_function_203:
    ret
    nop                         ; line 205
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_204
fake_function_204:
    ret
    nop                         ; line 206
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_205
fake_function_205:
    ret
    nop                         ; line 207
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_206
fake_function_206:
    ret
    nop                         ; line 208
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_207
fake_function_207:
    ret
    nop                         ; line 209
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_208
fake_function_208:
    ret
    nop                         ; line 210
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_209
fake_function_209:
    ret
    nop                         ; line 211
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_210
fake_function_210:
    ret
    nop                         ; line 212
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_211
fake_function_211:
    ret
    nop                         ; line 213
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_212
fake_function_212:
    ret
    nop                         ; line 214
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_213
fake_function_213:
    ret
    nop                         ; line 215
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_214
fake_function_214:
    ret
    nop                         ; line 216
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_215
fake_function_215:
    ret
    nop                         ; line 217
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_216
fake_function_216:
    ret
    nop                         ; line 218
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_217
fake_function_217:
    ret
    nop                         ; line 219
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_218
fake_function_218:
    ret
    nop                         ; line 220
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_219
fake_function_219:
    ret
    nop                         ; line 221
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_220
fake_function_220:
    ret
    nop                         ; line 222
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_221
fake_function_221:
    ret
    nop                         ; line 223
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_222
fake_function_222:
    ret
    nop                         ; line 224
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_223
fake_function_223:
    ret
    nop                         ; line 225
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_224
fake_function_224:
    ret
    nop                         ; line 226
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_225
fake_function_225:
    ret
    nop                         ; line 227
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_226
fake_function_226:
    ret
    nop                         ; line 228
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_227
fake_function_227:
    ret
    nop                         ; line 229
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_228
fake_function_228:
    ret
    nop                         ; line 230
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_229
fake_function_229:
    ret
    nop                         ; line 231
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_230
fake_function_230:
    ret
    nop                         ; line 232
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_231
fake_function_231:
    ret
    nop                         ; line 233
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_232
fake_function_232:
    ret
    nop                         ; line 234
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_233
fake_function_233:
    ret
    nop                         ; line 235
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_234
fake_function_234:
    ret
    nop                         ; line 236
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_235
fake_function_235:
    ret
    nop                         ; line 237
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_236
fake_function_236:
    ret
    nop                         ; line 238
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_237
fake_function_237:
    ret
    nop                         ; line 239
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_238
fake_function_238:
    ret
    nop                         ; line 240
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_239
fake_function_239:
    ret
    nop                         ; line 241
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_240
fake_function_240:
    ret
    nop                         ; line 242
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_241
fake_function_241:
    ret
    nop                         ; line 243
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_242
fake_function_242:
    ret
    nop                         ; line 244
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_243
fake_function_243:
    ret
    nop                         ; line 245
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_244
fake_function_244:
    ret
    nop                         ; line 246
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_245
fake_function_245:
    ret
    nop                         ; line 247
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_246
fake_function_246:
    ret
    nop                         ; line 248
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_247
fake_function_247:
    ret
    nop                         ; line 249
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_248
fake_function_248:
    ret
    nop                         ; line 250
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_249
fake_function_249:
    ret
    nop                         ; line 251
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_250
fake_function_250:
    ret
    nop                         ; line 252
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_251
fake_function_251:
    ret
    nop                         ; line 253
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_252
fake_function_252:
    ret
    nop                         ; line 254
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_253
fake_function_253:
    ret
    nop                         ; line 255
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_254
fake_function_254:
    ret
    nop                         ; line 256
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_255
fake_function_255:
    ret
    nop                         ; line 257
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_256
fake_function_256:
    ret
    nop                         ; line 258
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_257
fake_function_257:
    ret
    nop                         ; line 259
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_258
fake_function_258:
    ret
    nop                         ; line 260
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_259
fake_function_259:
    ret
    nop                         ; line 261
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_260
fake_function_260:
    ret
    nop                         ; line 262
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_261
fake_function_261:
    ret
    nop                         ; line 263
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_262
fake_function_262:
    ret
    nop                         ; line 264
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_263
fake_function_263:
    ret
    nop                         ; line 265
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_264
fake_function_264:
    ret
    nop                         ; line 266
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_265
fake_function_265:
    ret
    nop                         ; line 267
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_266
fake_function_266:
    ret
    nop                         ; line 268
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_267
fake_function_267:
    ret
    nop                         ; line 269
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_268
fake_function_268:
    ret
    nop                         ; line 270
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_269
fake_function_269:
    ret
    nop                         ; line 271
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_270
fake_function_270:
    ret
    nop                         ; line 272
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_271
fake_function_271:
    ret
    nop                         ; line 273
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_272
fake_function_272:
    ret
    nop                         ; line 274
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_273
fake_function_273:
    ret
    nop                         ; line 275
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_274
fake_function_274:
    ret
    nop                         ; line 276
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_275
fake_function_275:
    ret
    nop                         ; line 277
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_276
fake_function_276:
    ret
    nop                         ; line 278
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_277
fake_function_277:
    ret
    nop                         ; line 279
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_278
fake_function_278:
    ret
    nop                         ; line 280
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_279
fake_function_279:
    ret
    nop                         ; line 281
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_280
fake_function_280:
    ret
    nop                         ; line 282
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_281
fake_function_281:
    ret
    nop                         ; line 283
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_282
fake_function_282:
    ret
    nop                         ; line 284
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_283
fake_function_283:
    ret
    nop                         ; line 285
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_284
fake_function_284:
    ret
    nop                         ; line 286
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_285
fake_function_285:
    ret
    nop                         ; line 287
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_286
fake_function_286:
    ret
    nop                         ; line 288
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_287
fake_function_287:
    ret
    nop                         ; line 289
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_288
fake_function_288:
    ret
    nop                         ; line 290
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_289
fake_function_289:
    ret
    nop                         ; line 291
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_290
fake_function_290:
    ret
    nop                         ; line 292
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_291
fake_function_291:
    ret
    nop                         ; line 293
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_292
fake_function_292:
    ret
    nop                         ; line 294
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_293
fake_function_293:
    ret
    nop                         ; line 295
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_294
fake_function_294:
    ret
    nop                         ; line 296
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_295
fake_function_295:
    ret
    nop                         ; line 297
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_296
fake_function_296:
    ret
    nop                         ; line 298
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_297
fake_function_297:
    ret
    nop                         ; line 299
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_298
fake_function_298:
    ret
    nop                         ; line 300
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_299
fake_function_299:
    ret
    nop                         ; line 301
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_300
fake_function_300:
    ret
    nop                         ; line 302
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_301
fake_function_301:
    ret
    nop                         ; line 303
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_302
fake_function_302:
    ret
    nop                         ; line 304
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_303
fake_function_303:
    ret
    nop                         ; line 305
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_304
fake_function_304:
    ret
    nop                         ; line 306
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_305
fake_function_305:
    ret
    nop                         ; line 307
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_306
fake_function_306:
    ret
    nop                         ; line 308
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_307
fake_function_307:
    ret
    nop                         ; line 309
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_308
fake_function_308:
    ret
    nop                         ; line 310
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_309
fake_function_309:
    ret
    nop                         ; line 311
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_310
fake_function_310:
    ret
    nop                         ; line 312
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_311
fake_function_311:
    ret
    nop                         ; line 313
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_312
fake_function_312:
    ret
    nop                         ; line 314
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_313
fake_function_313:
    ret
    nop                         ; line 315
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_314
fake_function_314:
    ret
    nop                         ; line 316
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_315
fake_function_315:
    ret
    nop                         ; line 317
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_316
fake_function_316:
    ret
    nop                         ; line 318
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_317
fake_function_317:
    ret
    nop                         ; line 319
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_318
fake_function_318:
    ret
    nop                         ; line 320
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_319
fake_function_319:
    ret
    nop                         ; line 321
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_320
fake_function_320:
    ret
    nop                         ; line 322
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_321
fake_function_321:
    ret
    nop                         ; line 323
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_322
fake_function_322:
    ret
    nop                         ; line 324
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_323
fake_function_323:
    ret
    nop                         ; line 325
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_324
fake_function_324:
    ret
    nop                         ; line 326
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_325
fake_function_325:
    ret
    nop                         ; line 327
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_326
fake_function_326:
    ret
    nop                         ; line 328
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_327
fake_function_327:
    ret
    nop                         ; line 329
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_328
fake_function_328:
    ret
    nop                         ; line 330
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_329
fake_function_329:
    ret
    nop                         ; line 331
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_330
fake_function_330:
    ret
    nop                         ; line 332
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_331
fake_function_331:
    ret
    nop                         ; line 333
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_332
fake_function_332:
    ret
    nop                         ; line 334
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_333
fake_function_333:
    ret
    nop                         ; line 335
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_334
fake_function_334:
    ret
    nop                         ; line 336
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_335
fake_function_335:
    ret
    nop                         ; line 337
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_336
fake_function_336:
    ret
    nop                         ; line 338
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_337
fake_function_337:
    ret
    nop                         ; line 339
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_338
fake_function_338:
    ret
    nop                         ; line 340
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_339
fake_function_339:
    ret
    nop                         ; line 341
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_340
fake_function_340:
    ret
    nop                         ; line 342
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_341
fake_function_341:
    ret
    nop                         ; line 343
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_342
fake_function_342:
    ret
    nop                         ; line 344
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_343
fake_function_343:
    ret
    nop                         ; line 345
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_344
fake_function_344:
    ret
    nop                         ; line 346
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_345
fake_function_345:
    ret
    nop                         ; line 347
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_346
fake_function_346:
    ret
    nop                         ; line 348
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_347
fake_function_347:
    ret
    nop                         ; line 349
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_348
fake_function_348:
    ret
    nop                         ; line 350
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_349
fake_function_349:
    ret
    nop                         ; line 351
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_350
fake_function_350:
    ret
    nop                         ; line 352
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_351
fake_function_351:
    ret
    nop                         ; line 353
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_352
fake_function_352:
    ret
    nop                         ; line 354
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_353
fake_function_353:
    ret
    nop                         ; line 355
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_354
fake_function_354:
    ret
    nop                         ; line 356
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_355
fake_function_355:
    ret
    nop                         ; line 357
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_356
fake_function_356:
    ret
    nop                         ; line 358
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_357
fake_function_357:
    ret
    nop                         ; line 359
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_358
fake_function_358:
    ret
    nop                         ; line 360
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_359
fake_function_359:
    ret
    nop                         ; line 361
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_360
fake_function_360:
    ret
    nop                         ; line 362
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_361
fake_function_361:
    ret
    nop                         ; line 363
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_362
fake_function_362:
    ret
    nop                         ; line 364
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_363
fake_function_363:
    ret
    nop                         ; line 365
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_364
fake_function_364:
    ret
    nop                         ; line 366
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_365
fake_function_365:
    ret
    nop                         ; line 367
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_366
fake_function_366:
    ret
    nop                         ; line 368
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_367
fake_function_367:
    ret
    nop                         ; line 369
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_368
fake_function_368:
    ret
    nop                         ; line 370
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_369
fake_function_369:
    ret
    nop                         ; line 371
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_370
fake_function_370:
    ret
    nop                         ; line 372
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_371
fake_function_371:
    ret
    nop                         ; line 373
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_372
fake_function_372:
    ret
    nop                         ; line 374
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_373
fake_function_373:
    ret
    nop                         ; line 375
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_374
fake_function_374:
    ret
    nop                         ; line 376
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_375
fake_function_375:
    ret
    nop                         ; line 377
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_376
fake_function_376:
    ret
    nop                         ; line 378
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_377
fake_function_377:
    ret
    nop                         ; line 379
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_378
fake_function_378:
    ret
    nop                         ; line 380
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_379
fake_function_379:
    ret
    nop                         ; line 381
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_380
fake_function_380:
    ret
    nop                         ; line 382
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_381
fake_function_381:
    ret
    nop                         ; line 383
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_382
fake_function_382:
    ret
    nop                         ; line 384
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_383
fake_function_383:
    ret
    nop                         ; line 385
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_384
fake_function_384:
    ret
    nop                         ; line 386
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_385
fake_function_385:
    ret
    nop                         ; line 387
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_386
fake_function_386:
    ret
    nop                         ; line 388
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_387
fake_function_387:
    ret
    nop                         ; line 389
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_388
fake_function_388:
    ret
    nop                         ; line 390
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_389
fake_function_389:
    ret
    nop                         ; line 391
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_390
fake_function_390:
    ret
    nop                         ; line 392
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_391
fake_function_391:
    ret
    nop                         ; line 393
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_392
fake_function_392:
    ret
    nop                         ; line 394
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_393
fake_function_393:
    ret
    nop                         ; line 395
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_394
fake_function_394:
    ret
    nop                         ; line 396
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_395
fake_function_395:
    ret
    nop                         ; line 397
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_396
fake_function_396:
    ret
    nop                         ; line 398
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_397
fake_function_397:
    ret
    nop                         ; line 399
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_398
fake_function_398:
    ret
    nop                         ; line 400
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_399
fake_function_399:
    ret
    nop                         ; line 401
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_400
fake_function_400:
    ret
    nop                         ; line 402
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_401
fake_function_401:
    ret
    nop                         ; line 403
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_402
fake_function_402:
    ret
    nop                         ; line 404
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_403
fake_function_403:
    ret
    nop                         ; line 405
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_404
fake_function_404:
    ret
    nop                         ; line 406
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_405
fake_function_405:
    ret
    nop                         ; line 407
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_406
fake_function_406:
    ret
    nop                         ; line 408
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_407
fake_function_407:
    ret
    nop                         ; line 409
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_408
fake_function_408:
    ret
    nop                         ; line 410
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_409
fake_function_409:
    ret
    nop                         ; line 411
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_410
fake_function_410:
    ret
    nop                         ; line 412
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_411
fake_function_411:
    ret
    nop                         ; line 413
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_412
fake_function_412:
    ret
    nop                         ; line 414
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_413
fake_function_413:
    ret
    nop                         ; line 415
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_414
fake_function_414:
    ret
    nop                         ; line 416
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_415
fake_function_415:
    ret
    nop                         ; line 417
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_416
fake_function_416:
    ret
    nop                         ; line 418
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_417
fake_function_417:
    ret
    nop                         ; line 419
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_418
fake_function_418:
    ret
    nop                         ; line 420
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_419
fake_function_419:
    ret
    nop                         ; line 421
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_420
fake_function_420:
    ret
    nop                         ; line 422
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_421
fake_function_421:
    ret
    nop                         ; line 423
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_422
fake_function_422:
    ret
    nop                         ; line 424
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_423
fake_function_423:
    ret
    nop                         ; line 425
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_424
fake_function_424:
    ret
    nop                         ; line 426
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_425
fake_function_425:
    ret
    nop                         ; line 427
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_426
fake_function_426:
    ret
    nop                         ; line 428
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_427
fake_function_427:
    ret
    nop                         ; line 429
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_428
fake_function_428:
    ret
    nop                         ; line 430
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_429
fake_function_429:
    ret
    nop                         ; line 431
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_430
fake_function_430:
    ret
    nop                         ; line 432
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_431
fake_function_431:
    ret
    nop                         ; line 433
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_432
fake_function_432:
    ret
    nop                         ; line 434
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_433
fake_function_433:
    ret
    nop                         ; line 435
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_434
fake_function_434:
    ret
    nop                         ; line 436
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_435
fake_function_435:
    ret
    nop                         ; line 437
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_436
fake_function_436:
    ret
    nop                         ; line 438
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_437
fake_function_437:
    ret
    nop                         ; line 439
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_438
fake_function_438:
    ret
    nop                         ; line 440
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_439
fake_function_439:
    ret
    nop                         ; line 441
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_440
fake_function_440:
    ret
    nop                         ; line 442
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_441
fake_function_441:
    ret
    nop                         ; line 443
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_442
fake_function_442:
    ret
    nop                         ; line 444
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_443
fake_function_443:
    ret
    nop                         ; line 445
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_444
fake_function_444:
    ret
    nop                         ; line 446
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_445
fake_function_445:
    ret
    nop                         ; line 447
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_446
fake_function_446:
    ret
    nop                         ; line 448
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_447
fake_function_447:
    ret
    nop                         ; line 449
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_448
fake_function_448:
    ret
    nop                         ; line 450
    xor eax, eax                ; sign reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; stack jump value
    call fake_function_449
fake_function_449:
    ret

terminate:
    mov eax, 1
    int 0x80
    hlt
; Fake Virus-like Assembly File for Prank Purposes Only
section .text
global _start
_start:
	call virus_init
	jmp $ ; infinite loop

virus_init:
	mov ax, 0x1337
	push ax
	nop

label_1:
	mov ax, 0x0001 ; Register AX exploit
	nop

label_2:
	mov ax, 0x0002 ; Register AX exploit
	nop

label_3:
	mov ax, 0x0003 ; Register AX exploit
	nop

label_4:
	mov ax, 0x0004 ; Register AX exploit
	nop

label_5:
	mov ax, 0x0005 ; Register AX exploit
	nop

label_6:
	mov ax, 0x0006 ; Register AX exploit
	nop

label_7:
	mov ax, 0x0007 ; Register AX exploit
	nop

label_8:
	mov ax, 0x0008 ; Register AX exploit
	nop

label_9:
	mov ax, 0x0009 ; Register AX exploit
	nop

label_10:
	mov ax, 0x000A ; Register AX exploit
	nop

label_11:
	mov ax, 0x000B ; Register AX exploit
	nop

label_12:
	mov ax, 0x000C ; Register AX exploit
	nop

label_13:
	mov ax, 0x000D ; Register AX exploit
	nop

label_14:
	mov ax, 0x000E ; Register AX exploit
	nop

label_15:
	mov ax, 0x000F ; Register AX exploit
	nop

label_16:
	mov ax, 0x0010 ; Register AX exploit
	nop

label_17:
	mov ax, 0x0011 ; Register AX exploit
	nop

label_18:
	mov ax, 0x0012 ; Register AX exploit
	nop

label_19:
	mov ax, 0x0013 ; Register AX exploit
	nop

label_20:
	mov ax, 0x0014 ; Register AX exploit
	nop

label_21:
	mov ax, 0x0015 ; Register AX exploit
	nop

label_22:
	mov ax, 0x0016 ; Register AX exploit
	nop

label_23:
	mov ax, 0x0017 ; Register AX exploit
	nop

label_24:
	mov ax, 0x0018 ; Register AX exploit
	nop

label_25:
	mov ax, 0x0019 ; Register AX exploit
	nop

label_26:
	mov ax, 0x001A ; Register AX exploit
	nop

label_27:
	mov ax, 0x001B ; Register AX exploit
	nop

label_28:
	mov ax, 0x001C ; Register AX exploit
	nop

label_29:
	mov ax, 0x001D ; Register AX exploit
	nop

label_30:
	mov ax, 0x001E ; Register AX exploit
	nop

label_31:
	mov ax, 0x001F ; Register AX exploit
	nop

label_32:
	mov ax, 0x0020 ; Register AX exploit
	nop

label_33:
	mov ax, 0x0021 ; Register AX exploit
	nop

label_34:
	mov ax, 0x0022 ; Register AX exploit
	nop

label_35:
	mov ax, 0x0023 ; Register AX exploit
	nop

label_36:
	mov ax, 0x0024 ; Register AX exploit
	nop

label_37:
	mov ax, 0x0025 ; Register AX exploit
	nop

label_38:
	mov ax, 0x0026 ; Register AX exploit
	nop

label_39:
	mov ax, 0x0027 ; Register AX exploit
	nop

label_40:
	mov ax, 0x0028 ; Register AX exploit
	nop

label_41:
	mov ax, 0x0029 ; Register AX exploit
	nop

label_42:
	mov ax, 0x002A ; Register AX exploit
	nop

label_43:
	mov ax, 0x002B ; Register AX exploit
	nop

label_44:
	mov ax, 0x002C ; Register AX exploit
	nop

label_45:
	mov ax, 0x002D ; Register AX exploit
	nop

label_46:
	mov ax, 0x002E ; Register AX exploit
	nop

label_47:
	mov ax, 0x002F ; Register AX exploit
	nop

label_48:
	mov ax, 0x0030 ; Register AX exploit
	nop

label_49:
	mov ax, 0x0031 ; Register AX exploit
	nop

label_50:
	mov ax, 0x0032 ; Register AX exploit
	nop

label_51:
	mov ax, 0x0033 ; Register AX exploit
	nop

label_52:
	mov ax, 0x0034 ; Register AX exploit
	nop

label_53:
	mov ax, 0x0035 ; Register AX exploit
	nop

label_54:
	mov ax, 0x0036 ; Register AX exploit
	nop

label_55:
	mov ax, 0x0037 ; Register AX exploit
	nop

label_56:
	mov ax, 0x0038 ; Register AX exploit
	nop

label_57:
	mov ax, 0x0039 ; Register AX exploit
	nop

label_58:
	mov ax, 0x003A ; Register AX exploit
	nop

label_59:
	mov ax, 0x003B ; Register AX exploit
	nop

label_60:
	mov ax, 0x003C ; Register AX exploit
	nop

label_61:
	mov ax, 0x003D ; Register AX exploit
	nop

label_62:
	mov ax, 0x003E ; Register AX exploit
	nop

label_63:
	mov ax, 0x003F ; Register AX exploit
	nop

label_64:
	mov ax, 0x0040 ; Register AX exploit
	nop

label_65:
	mov ax, 0x0041 ; Register AX exploit
	nop

label_66:
	mov ax, 0x0042 ; Register AX exploit
	nop

label_67:
	mov ax, 0x0043 ; Register AX exploit
	nop

label_68:
	mov ax, 0x0044 ; Register AX exploit
	nop

label_69:
	mov ax, 0x0045 ; Register AX exploit
	nop

label_70:
	mov ax, 0x0046 ; Register AX exploit
	nop

label_71:
	mov ax, 0x0047 ; Register AX exploit
	nop

label_72:
	mov ax, 0x0048 ; Register AX exploit
	nop

label_73:
	mov ax, 0x0049 ; Register AX exploit
	nop

label_74:
	mov ax, 0x004A ; Register AX exploit
	nop

label_75:
	mov ax, 0x004B ; Register AX exploit
	nop

label_76:
	mov ax, 0x004C ; Register AX exploit
	nop

label_77:
	mov ax, 0x004D ; Register AX exploit
	nop

label_78:
	mov ax, 0x004E ; Register AX exploit
	nop

label_79:
	mov ax, 0x004F ; Register AX exploit
	nop

label_80:
	mov ax, 0x0050 ; Register AX exploit
	nop

label_81:
	mov ax, 0x0051 ; Register AX exploit
	nop

label_82:
	mov ax, 0x0052 ; Register AX exploit
	nop

label_83:
	mov ax, 0x0053 ; Register AX exploit
	nop

label_84:
	mov ax, 0x0054 ; Register AX exploit
	nop

label_85:
	mov ax, 0x0055 ; Register AX exploit
	nop

label_86:
	mov ax, 0x0056 ; Register AX exploit
	nop

label_87:
	mov ax, 0x0057 ; Register AX exploit
	nop

label_88:
	mov ax, 0x0058 ; Register AX exploit
	nop

label_89:
	mov ax, 0x0059 ; Register AX exploit
	nop

label_90:
	mov ax, 0x005A ; Register AX exploit
	nop

label_91:
	mov ax, 0x005B ; Register AX exploit
	nop

label_92:
	mov ax, 0x005C ; Register AX exploit
	nop

label_93:
	mov ax, 0x005D ; Register AX exploit
	nop

label_94:
	mov ax, 0x005E ; Register AX exploit
	nop

label_95:
	mov ax, 0x005F ; Register AX exploit
	nop

label_96:
	mov ax, 0x0060 ; Register AX exploit
	nop

label_97:
	mov ax, 0x0061 ; Register AX exploit
	nop

label_98:
	mov ax, 0x0062 ; Register AX exploit
	nop

label_99:
	mov ax, 0x0063 ; Register AX exploit
	nop

label_100:
	mov ax, 0x0064 ; Register AX exploit
	nop

label_101:
	mov ax, 0x0065 ; Register AX exploit
	nop

label_102:
	mov ax, 0x0066 ; Register AX exploit
	nop

label_103:
	mov ax, 0x0067 ; Register AX exploit
	nop

label_104:
	mov ax, 0x0068 ; Register AX exploit
	nop

label_105:
	mov ax, 0x0069 ; Register AX exploit
	nop

label_106:
	mov ax, 0x006A ; Register AX exploit
	nop

label_107:
	mov ax, 0x006B ; Register AX exploit
	nop

label_108:
	mov ax, 0x006C ; Register AX exploit
	nop

label_109:
	mov ax, 0x006D ; Register AX exploit
	nop

label_110:
	mov ax, 0x006E ; Register AX exploit
	nop

label_111:
	mov ax, 0x006F ; Register AX exploit
	nop

label_112:
	mov ax, 0x0070 ; Register AX exploit
	nop

label_113:
	mov ax, 0x0071 ; Register AX exploit
	nop

label_114:
	mov ax, 0x0072 ; Register AX exploit
	nop

label_115:
	mov ax, 0x0073 ; Register AX exploit
	nop

label_116:
	mov ax, 0x0074 ; Register AX exploit
	nop

label_117:
	mov ax, 0x0075 ; Register AX exploit
	nop

label_118:
	mov ax, 0x0076 ; Register AX exploit
	nop

label_119:
	mov ax, 0x0077 ; Register AX exploit
	nop

label_120:
	mov ax, 0x0078 ; Register AX exploit
	nop

label_121:
	mov ax, 0x0079 ; Register AX exploit
	nop

label_122:
	mov ax, 0x007A ; Register AX exploit
	nop

label_123:
	mov ax, 0x007B ; Register AX exploit
	nop

label_124:
	mov ax, 0x007C ; Register AX exploit
	nop

label_125:
	mov ax, 0x007D ; Register AX exploit
	nop

label_126:
	mov ax, 0x007E ; Register AX exploit
	nop

label_127:
	mov ax, 0x007F ; Register AX exploit
	nop

label_128:
	mov ax, 0x0080 ; Register AX exploit
	nop

label_129:
	mov ax, 0x0081 ; Register AX exploit
	nop

label_130:
	mov ax, 0x0082 ; Register AX exploit
	nop

label_131:
	mov ax, 0x0083 ; Register AX exploit
	nop

label_132:
	mov ax, 0x0084 ; Register AX exploit
	nop

label_133:
	mov ax, 0x0085 ; Register AX exploit
	nop

label_134:
	mov ax, 0x0086 ; Register AX exploit
	nop

label_135:
	mov ax, 0x0087 ; Register AX exploit
	nop

label_136:
	mov ax, 0x0088 ; Register AX exploit
	nop

label_137:
	mov ax, 0x0089 ; Register AX exploit
	nop

label_138:
	mov ax, 0x008A ; Register AX exploit
	nop

label_139:
	mov ax, 0x008B ; Register AX exploit
	nop

label_140:
	mov ax, 0x008C ; Register AX exploit
	nop

label_141:
	mov ax, 0x008D ; Register AX exploit
	nop

label_142:
	mov ax, 0x008E ; Register AX exploit
	nop

label_143:
	mov ax, 0x008F ; Register AX exploit
	nop

label_144:
	mov ax, 0x0090 ; Register AX exploit
	nop

label_145:
	mov ax, 0x0091 ; Register AX exploit
	nop

label_146:
	mov ax, 0x0092 ; Register AX exploit
	nop

label_147:
	mov ax, 0x0093 ; Register AX exploit
	nop

label_148:
	mov ax, 0x0094 ; Register AX exploit
	nop

label_149:
	mov ax, 0x0095 ; Register AX exploit
	nop

label_150:
	mov ax, 0x0096 ; Register AX exploit
	nop

label_151:
	mov ax, 0x0097 ; Register AX exploit
	nop

label_152:
	mov ax, 0x0098 ; Register AX exploit
	nop

label_153:
	mov ax, 0x0099 ; Register AX exploit
	nop

label_154:
	mov ax, 0x009A ; Register AX exploit
	nop

label_155:
	mov ax, 0x009B ; Register AX exploit
	nop

label_156:
	mov ax, 0x009C ; Register AX exploit
	nop

label_157:
	mov ax, 0x009D ; Register AX exploit
	nop

label_158:
	mov ax, 0x009E ; Register AX exploit
	nop

label_159:
	mov ax, 0x009F ; Register AX exploit
	nop

label_160:
	mov ax, 0x00A0 ; Register AX exploit
	nop

label_161:
	mov ax, 0x00A1 ; Register AX exploit
	nop

label_162:
	mov ax, 0x00A2 ; Register AX exploit
	nop

label_163:
	mov ax, 0x00A3 ; Register AX exploit
	nop

label_164:
	mov ax, 0x00A4 ; Register AX exploit
	nop

label_165:
	mov ax, 0x00A5 ; Register AX exploit
	nop

label_166:
	mov ax, 0x00A6 ; Register AX exploit
	nop

label_167:
	mov ax, 0x00A7 ; Register AX exploit
	nop

label_168:
	mov ax, 0x00A8 ; Register AX exploit
	nop

label_169:
	mov ax, 0x00A9 ; Register AX exploit
	nop

label_170:
	mov ax, 0x00AA ; Register AX exploit
	nop

label_171:
	mov ax, 0x00AB ; Register AX exploit
	nop

label_172:
	mov ax, 0x00AC ; Register AX exploit
	nop

label_173:
	mov ax, 0x00AD ; Register AX exploit
	nop

label_174:
	mov ax, 0x00AE ; Register AX exploit
	nop

label_175:
	mov ax, 0x00AF ; Register AX exploit
	nop

label_176:
	mov ax, 0x00B0 ; Register AX exploit
	nop

label_177:
	mov ax, 0x00B1 ; Register AX exploit
	nop

label_178:
	mov ax, 0x00B2 ; Register AX exploit
	nop

label_179:
	mov ax, 0x00B3 ; Register AX exploit
	nop

label_180:
	mov ax, 0x00B4 ; Register AX exploit
	nop

label_181:
	mov ax, 0x00B5 ; Register AX exploit
	nop

label_182:
	mov ax, 0x00B6 ; Register AX exploit
	nop

label_183:
	mov ax, 0x00B7 ; Register AX exploit
	nop

label_184:
	mov ax, 0x00B8 ; Register AX exploit
	nop

label_185:
	mov ax, 0x00B9 ; Register AX exploit
	nop

label_186:
	mov ax, 0x00BA ; Register AX exploit
	nop

label_187:
	mov ax, 0x00BB ; Register AX exploit
	nop

label_188:
	mov ax, 0x00BC ; Register AX exploit
	nop

label_189:
	mov ax, 0x00BD ; Register AX exploit
	nop

label_190:
	mov ax, 0x00BE ; Register AX exploit
	nop

label_191:
	mov ax, 0x00BF ; Register AX exploit
	nop

label_192:
	mov ax, 0x00C0 ; Register AX exploit
	nop

label_193:
	mov ax, 0x00C1 ; Register AX exploit
	nop

label_194:
	mov ax, 0x00C2 ; Register AX exploit
	nop

label_195:
	mov ax, 0x00C3 ; Register AX exploit
	nop

label_196:
	mov ax, 0x00C4 ; Register AX exploit
	nop

label_197:
	mov ax, 0x00C5 ; Register AX exploit
	nop

label_198:
	mov ax, 0x00C6 ; Register AX exploit
	nop

label_199:
	mov ax, 0x00C7 ; Register AX exploit
	nop

label_200:
	mov ax, 0x00C8 ; Register AX exploit
	nop

label_201:
	mov ax, 0x00C9 ; Register AX exploit
	nop

label_202:
	mov ax, 0x00CA ; Register AX exploit
	nop

label_203:
	mov ax, 0x00CB ; Register AX exploit
	nop

label_204:
	mov ax, 0x00CC ; Register AX exploit
	nop

label_205:
	mov ax, 0x00CD ; Register AX exploit
	nop

label_206:
	mov ax, 0x00CE ; Register AX exploit
	nop

label_207:
	mov ax, 0x00CF ; Register AX exploit
	nop

label_208:
	mov ax, 0x00D0 ; Register AX exploit
	nop

label_209:
	mov ax, 0x00D1 ; Register AX exploit
	nop

label_210:
	mov ax, 0x00D2 ; Register AX exploit
	nop

label_211:
	mov ax, 0x00D3 ; Register AX exploit
	nop

label_212:
	mov ax, 0x00D4 ; Register AX exploit
	nop

label_213:
	mov ax, 0x00D5 ; Register AX exploit
	nop

label_214:
	mov ax, 0x00D6 ; Register AX exploit
	nop

label_215:
	mov ax, 0x00D7 ; Register AX exploit
	nop

label_216:
	mov ax, 0x00D8 ; Register AX exploit
	nop

label_217:
	mov ax, 0x00D9 ; Register AX exploit
	nop

label_218:
	mov ax, 0x00DA ; Register AX exploit
	nop

label_219:
	mov ax, 0x00DB ; Register AX exploit
	nop

label_220:
	mov ax, 0x00DC ; Register AX exploit
	nop

label_221:
	mov ax, 0x00DD ; Register AX exploit
	nop

label_222:
	mov ax, 0x00DE ; Register AX exploit
	nop

label_223:
	mov ax, 0x00DF ; Register AX exploit
	nop

label_224:
	mov ax, 0x00E0 ; Register AX exploit
	nop

label_225:
	mov ax, 0x00E1 ; Register AX exploit
	nop

label_226:
	mov ax, 0x00E2 ; Register AX exploit
	nop

label_227:
	mov ax, 0x00E3 ; Register AX exploit
	nop

label_228:
	mov ax, 0x00E4 ; Register AX exploit
	nop

label_229:
	mov ax, 0x00E5 ; Register AX exploit
	nop

label_230:
	mov ax, 0x00E6 ; Register AX exploit
	nop

label_231:
	mov ax, 0x00E7 ; Register AX exploit
	nop

label_232:
	mov ax, 0x00E8 ; Register AX exploit
	nop

label_233:
	mov ax, 0x00E9 ; Register AX exploit
	nop

label_234:
	mov ax, 0x00EA ; Register AX exploit
	nop

label_235:
	mov ax, 0x00EB ; Register AX exploit
	nop

label_236:
	mov ax, 0x00EC ; Register AX exploit
	nop

label_237:
	mov ax, 0x00ED ; Register AX exploit
	nop

label_238:
	mov ax, 0x00EE ; Register AX exploit
	nop

label_239:
	mov ax, 0x00EF ; Register AX exploit
	nop

label_240:
	mov ax, 0x00F0 ; Register AX exploit
	nop

label_241:
	mov ax, 0x00F1 ; Register AX exploit
	nop

label_242:
	mov ax, 0x00F2 ; Register AX exploit
	nop

label_243:
	mov ax, 0x00F3 ; Register AX exploit
	nop

label_244:
	mov ax, 0x00F4 ; Register AX exploit
	nop

label_245:
	mov ax, 0x00F5 ; Register AX exploit
	nop

label_246:
	mov ax, 0x00F6 ; Register AX exploit
	nop

label_247:
	mov ax, 0x00F7 ; Register AX exploit
	nop

label_248:
	mov ax, 0x00F8 ; Register AX exploit
	nop

label_249:
	mov ax, 0x00F9 ; Register AX exploit
	nop

label_250:
	mov ax, 0x00FA ; Register AX exploit
	nop

label_251:
	mov ax, 0x00FB ; Register AX exploit
	nop

label_252:
	mov ax, 0x00FC ; Register AX exploit
	nop

label_253:
	mov ax, 0x00FD ; Register AX exploit
	nop

label_254:
	mov ax, 0x00FE ; Register AX exploit
	nop

label_255:
	mov ax, 0x00FF ; Register AX exploit
	nop

label_256:
	mov ax, 0x0100 ; Register AX exploit
	nop

label_257:
	mov ax, 0x0101 ; Register AX exploit
	nop

label_258:
	mov ax, 0x0102 ; Register AX exploit
	nop

label_259:
	mov ax, 0x0103 ; Register AX exploit
	nop

label_260:
	mov ax, 0x0104 ; Register AX exploit
	nop

label_261:
	mov ax, 0x0105 ; Register AX exploit
	nop

label_262:
	mov ax, 0x0106 ; Register AX exploit
	nop

label_263:
	mov ax, 0x0107 ; Register AX exploit
	nop

label_264:
	mov ax, 0x0108 ; Register AX exploit
	nop

label_265:
	mov ax, 0x0109 ; Register AX exploit
	nop

label_266:
	mov ax, 0x010A ; Register AX exploit
	nop

label_267:
	mov ax, 0x010B ; Register AX exploit
	nop

label_268:
	mov ax, 0x010C ; Register AX exploit
	nop

label_269:
	mov ax, 0x010D ; Register AX exploit
	nop

label_270:
	mov ax, 0x010E ; Register AX exploit
	nop

label_271:
	mov ax, 0x010F ; Register AX exploit
	nop

label_272:
	mov ax, 0x0110 ; Register AX exploit
	nop

label_273:
	mov ax, 0x0111 ; Register AX exploit
	nop

label_274:
	mov ax, 0x0112 ; Register AX exploit
	nop

label_275:
	mov ax, 0x0113 ; Register AX exploit
	nop

label_276:
	mov ax, 0x0114 ; Register AX exploit
	nop

label_277:
	mov ax, 0x0115 ; Register AX exploit
	nop

label_278:
	mov ax, 0x0116 ; Register AX exploit
	nop

label_279:
	mov ax, 0x0117 ; Register AX exploit
	nop

label_280:
	mov ax, 0x0118 ; Register AX exploit
	nop

label_281:
	mov ax, 0x0119 ; Register AX exploit
	nop

label_282:
	mov ax, 0x011A ; Register AX exploit
	nop

label_283:
	mov ax, 0x011B ; Register AX exploit
	nop

label_284:
	mov ax, 0x011C ; Register AX exploit
	nop

label_285:
	mov ax, 0x011D ; Register AX exploit
	nop

label_286:
	mov ax, 0x011E ; Register AX exploit
	nop

label_287:
	mov ax, 0x011F ; Register AX exploit
	nop

label_288:
	mov ax, 0x0120 ; Register AX exploit
	nop

label_289:
	mov ax, 0x0121 ; Register AX exploit
	nop

label_290:
	mov ax, 0x0122 ; Register AX exploit
	nop

label_291:
	mov ax, 0x0123 ; Register AX exploit
	nop

label_292:
	mov ax, 0x0124 ; Register AX exploit
	nop

label_293:
	mov ax, 0x0125 ; Register AX exploit
	nop

label_294:
	mov ax, 0x0126 ; Register AX exploit
	nop

label_295:
	mov ax, 0x0127 ; Register AX exploit
	nop

label_296:
	mov ax, 0x0128 ; Register AX exploit
	nop

label_297:
	mov ax, 0x0129 ; Register AX exploit
	nop

label_298:
	mov ax, 0x012A ; Register AX exploit
	nop

label_299:
	mov ax, 0x012B ; Register AX exploit
	nop

label_300:
	mov ax, 0x012C ; Register AX exploit
	nop

label_301:
	mov ax, 0x012D ; Register AX exploit
	nop

label_302:
	mov ax, 0x012E ; Register AX exploit
	nop

label_303:
	mov ax, 0x012F ; Register AX exploit
	nop

label_304:
	mov ax, 0x0130 ; Register AX exploit
	nop

label_305:
	mov ax, 0x0131 ; Register AX exploit
	nop

label_306:
	mov ax, 0x0132 ; Register AX exploit
	nop

label_307:
	mov ax, 0x0133 ; Register AX exploit
	nop

label_308:
	mov ax, 0x0134 ; Register AX exploit
	nop

label_309:
	mov ax, 0x0135 ; Register AX exploit
	nop

label_310:
	mov ax, 0x0136 ; Register AX exploit
	nop

label_311:
	mov ax, 0x0137 ; Register AX exploit
	nop

label_312:
	mov ax, 0x0138 ; Register AX exploit
	nop

label_313:
	mov ax, 0x0139 ; Register AX exploit
	nop

label_314:
	mov ax, 0x013A ; Register AX exploit
	nop

label_315:
	mov ax, 0x013B ; Register AX exploit
	nop

label_316:
	mov ax, 0x013C ; Register AX exploit
	nop

label_317:
	mov ax, 0x013D ; Register AX exploit
	nop

label_318:
	mov ax, 0x013E ; Register AX exploit
	nop

label_319:
	mov ax, 0x013F ; Register AX exploit
	nop

label_320:
	mov ax, 0x0140 ; Register AX exploit
	nop

label_321:
	mov ax, 0x0141 ; Register AX exploit
	nop

label_322:
	mov ax, 0x0142 ; Register AX exploit
	nop

label_323:
	mov ax, 0x0143 ; Register AX exploit
	nop

label_324:
	mov ax, 0x0144 ; Register AX exploit
	nop

label_325:
	mov ax, 0x0145 ; Register AX exploit
	nop

label_326:
	mov ax, 0x0146 ; Register AX exploit
	nop

label_327:
	mov ax, 0x0147 ; Register AX exploit
	nop

label_328:
	mov ax, 0x0148 ; Register AX exploit
	nop

label_329:
	mov ax, 0x0149 ; Register AX exploit
	nop

label_330:
	mov ax, 0x014A ; Register AX exploit
	nop

label_331:
	mov ax, 0x014B ; Register AX exploit
	nop

label_332:
	mov ax, 0x014C ; Register AX exploit
	nop

label_333:
	mov ax, 0x014D ; Register AX exploit
	nop

label_334:
	mov ax, 0x014E ; Register AX exploit
	nop

label_335:
	mov ax, 0x014F ; Register AX exploit
	nop

label_336:
	mov ax, 0x0150 ; Register AX exploit
	nop

label_337:
	mov ax, 0x0151 ; Register AX exploit
	nop

label_338:
	mov ax, 0x0152 ; Register AX exploit
	nop

label_339:
	mov ax, 0x0153 ; Register AX exploit
	nop

label_340:
	mov ax, 0x0154 ; Register AX exploit
	nop

label_341:
	mov ax, 0x0155 ; Register AX exploit
	nop

label_342:
	mov ax, 0x0156 ; Register AX exploit
	nop

label_343:
	mov ax, 0x0157 ; Register AX exploit
	nop

label_344:
	mov ax, 0x0158 ; Register AX exploit
	nop

label_345:
	mov ax, 0x0159 ; Register AX exploit
	nop

label_346:
	mov ax, 0x015A ; Register AX exploit
	nop

label_347:
	mov ax, 0x015B ; Register AX exploit
	nop

label_348:
	mov ax, 0x015C ; Register AX exploit
	nop

label_349:
	mov ax, 0x015D ; Register AX exploit
	nop

label_350:
	mov ax, 0x015E ; Register AX exploit
	nop

label_351:
	mov ax, 0x015F ; Register AX exploit
	nop

label_352:
	mov ax, 0x0160 ; Register AX exploit
	nop

label_353:
	mov ax, 0x0161 ; Register AX exploit
	nop

label_354:
	mov ax, 0x0162 ; Register AX exploit
	nop

label_355:
	mov ax, 0x0163 ; Register AX exploit
	nop

label_356:
	mov ax, 0x0164 ; Register AX exploit
	nop

label_357:
	mov ax, 0x0165 ; Register AX exploit
	nop

label_358:
	mov ax, 0x0166 ; Register AX exploit
	nop

label_359:
	mov ax, 0x0167 ; Register AX exploit
	nop

label_360:
	mov ax, 0x0168 ; Register AX exploit
	nop

label_361:
	mov ax, 0x0169 ; Register AX exploit
	nop

label_362:
	mov ax, 0x016A ; Register AX exploit
	nop

label_363:
	mov ax, 0x016B ; Register AX exploit
	nop

label_364:
	mov ax, 0x016C ; Register AX exploit
	nop

label_365:
	mov ax, 0x016D ; Register AX exploit
	nop

label_366:
	mov ax, 0x016E ; Register AX exploit
	nop

label_367:
	mov ax, 0x016F ; Register AX exploit
	nop

label_368:
	mov ax, 0x0170 ; Register AX exploit
	nop

label_369:
	mov ax, 0x0171 ; Register AX exploit
	nop

label_370:
	mov ax, 0x0172 ; Register AX exploit
	nop

label_371:
	mov ax, 0x0173 ; Register AX exploit
	nop

label_372:
	mov ax, 0x0174 ; Register AX exploit
	nop

label_373:
	mov ax, 0x0175 ; Register AX exploit
	nop

label_374:
	mov ax, 0x0176 ; Register AX exploit
	nop

label_375:
	mov ax, 0x0177 ; Register AX exploit
	nop

label_376:
	mov ax, 0x0178 ; Register AX exploit
	nop

label_377:
	mov ax, 0x0179 ; Register AX exploit
	nop

label_378:
	mov ax, 0x017A ; Register AX exploit
	nop

label_379:
	mov ax, 0x017B ; Register AX exploit
	nop

label_380:
	mov ax, 0x017C ; Register AX exploit
	nop

label_381:
	mov ax, 0x017D ; Register AX exploit
	nop

label_382:
	mov ax, 0x017E ; Register AX exploit
	nop

label_383:
	mov ax, 0x017F ; Register AX exploit
	nop

label_384:
	mov ax, 0x0180 ; Register AX exploit
	nop

label_385:
	mov ax, 0x0181 ; Register AX exploit
	nop

label_386:
	mov ax, 0x0182 ; Register AX exploit
	nop

label_387:
	mov ax, 0x0183 ; Register AX exploit
	nop

label_388:
	mov ax, 0x0184 ; Register AX exploit
	nop

label_389:
	mov ax, 0x0185 ; Register AX exploit
	nop

label_390:
	mov ax, 0x0186 ; Register AX exploit
	nop

label_391:
	mov ax, 0x0187 ; Register AX exploit
	nop

label_392:
	mov ax, 0x0188 ; Register AX exploit
	nop

label_393:
	mov ax, 0x0189 ; Register AX exploit
	nop

label_394:
	mov ax, 0x018A ; Register AX exploit
	nop

label_395:
	mov ax, 0x018B ; Register AX exploit
	nop

label_396:
	mov ax, 0x018C ; Register AX exploit
	nop

label_397:
	mov ax, 0x018D ; Register AX exploit
	nop

label_398:
	mov ax, 0x018E ; Register AX exploit
	nop

label_399:
	mov ax, 0x018F ; Register AX exploit
	nop

label_400:
	mov ax, 0x0190 ; Register AX exploit
	nop

label_401:
	mov ax, 0x0191 ; Register AX exploit
	nop

label_402:
	mov ax, 0x0192 ; Register AX exploit
	nop

label_403:
	mov ax, 0x0193 ; Register AX exploit
	nop

label_404:
	mov ax, 0x0194 ; Register AX exploit
	nop

label_405:
	mov ax, 0x0195 ; Register AX exploit
	nop

label_406:
	mov ax, 0x0196 ; Register AX exploit
	nop

label_407:
	mov ax, 0x0197 ; Register AX exploit
	nop

label_408:
	mov ax, 0x0198 ; Register AX exploit
	nop

label_409:
	mov ax, 0x0199 ; Register AX exploit
	nop

label_410:
	mov ax, 0x019A ; Register AX exploit
	nop

label_411:
	mov ax, 0x019B ; Register AX exploit
	nop

label_412:
	mov ax, 0x019C ; Register AX exploit
	nop

label_413:
	mov ax, 0x019D ; Register AX exploit
	nop

label_414:
	mov ax, 0x019E ; Register AX exploit
	nop

label_415:
	mov ax, 0x019F ; Register AX exploit
	nop

label_416:
	mov ax, 0x01A0 ; Register AX exploit
	nop

label_417:
	mov ax, 0x01A1 ; Register AX exploit
	nop

label_418:
	mov ax, 0x01A2 ; Register AX exploit
	nop

label_419:
	mov ax, 0x01A3 ; Register AX exploit
	nop

label_420:
	mov ax, 0x01A4 ; Register AX exploit
	nop

label_421:
	mov ax, 0x01A5 ; Register AX exploit
	nop

label_422:
	mov ax, 0x01A6 ; Register AX exploit
	nop

label_423:
	mov ax, 0x01A7 ; Register AX exploit
	nop

label_424:
	mov ax, 0x01A8 ; Register AX exploit
	nop

label_425:
	mov ax, 0x01A9 ; Register AX exploit
	nop

label_426:
	mov ax, 0x01AA ; Register AX exploit
	nop

label_427:
	mov ax, 0x01AB ; Register AX exploit
	nop

label_428:
	mov ax, 0x01AC ; Register AX exploit
	nop

label_429:
	mov ax, 0x01AD ; Register AX exploit
	nop

label_430:
	mov ax, 0x01AE ; Register AX exploit
	nop

label_431:
	mov ax, 0x01AF ; Register AX exploit
	nop

label_432:
	mov ax, 0x01B0 ; Register AX exploit
	nop

label_433:
	mov ax, 0x01B1 ; Register AX exploit
	nop

label_434:
	mov ax, 0x01B2 ; Register AX exploit
	nop

label_435:
	mov ax, 0x01B3 ; Register AX exploit
	nop

label_436:
	mov ax, 0x01B4 ; Register AX exploit
	nop

label_437:
	mov ax, 0x01B5 ; Register AX exploit
	nop

label_438:
	mov ax, 0x01B6 ; Register AX exploit
	nop

label_439:
	mov ax, 0x01B7 ; Register AX exploit
	nop

label_440:
	mov ax, 0x01B8 ; Register AX exploit
	nop

label_441:
	mov ax, 0x01B9 ; Register AX exploit
	nop

label_442:
	mov ax, 0x01BA ; Register AX exploit
	nop

label_443:
	mov ax, 0x01BB ; Register AX exploit
	nop

label_444:
	mov ax, 0x01BC ; Register AX exploit
	nop

label_445:
	mov ax, 0x01BD ; Register AX exploit
	nop

label_446:
	mov ax, 0x01BE ; Register AX exploit
	nop

label_447:
	mov ax, 0x01BF ; Register AX exploit
	nop

label_448:
	mov ax, 0x01C0 ; Register AX exploit
	nop

label_449:
	mov ax, 0x01C1 ; Register AX exploit
	nop

label_450:
	mov ax, 0x01C2 ; Register AX exploit
	nop

label_451:
	mov ax, 0x01C3 ; Register AX exploit
	nop

label_452:
	mov ax, 0x01C4 ; Register AX exploit
	nop

label_453:
	mov ax, 0x01C5 ; Register AX exploit
	nop

label_454:
	mov ax, 0x01C6 ; Register AX exploit
	nop

label_455:
	mov ax, 0x01C7 ; Register AX exploit
	nop

label_456:
	mov ax, 0x01C8 ; Register AX exploit
	nop

label_457:
	mov ax, 0x01C9 ; Register AX exploit
	nop

label_458:
	mov ax, 0x01CA ; Register AX exploit
	nop

label_459:
	mov ax, 0x01CB ; Register AX exploit
	nop

label_460:
	mov ax, 0x01CC ; Register AX exploit
	nop

label_461:
	mov ax, 0x01CD ; Register AX exploit
	nop

label_462:
	mov ax, 0x01CE ; Register AX exploit
	nop

label_463:
	mov ax, 0x01CF ; Register AX exploit
	nop

label_464:
	mov ax, 0x01D0 ; Register AX exploit
	nop

label_465:
	mov ax, 0x01D1 ; Register AX exploit
	nop

label_466:
	mov ax, 0x01D2 ; Register AX exploit
	nop

label_467:
	mov ax, 0x01D3 ; Register AX exploit
	nop

label_468:
	mov ax, 0x01D4 ; Register AX exploit
	nop

label_469:
	mov ax, 0x01D5 ; Register AX exploit
	nop

label_470:
	mov ax, 0x01D6 ; Register AX exploit
	nop

label_471:
	mov ax, 0x01D7 ; Register AX exploit
	nop

label_472:
	mov ax, 0x01D8 ; Register AX exploit
	nop

label_473:
	mov ax, 0x01D9 ; Register AX exploit
	nop

label_474:
	mov ax, 0x01DA ; Register AX exploit
	nop

label_475:
	mov ax, 0x01DB ; Register AX exploit
	nop

label_476:
	mov ax, 0x01DC ; Register AX exploit
	nop

label_477:
	mov ax, 0x01DD ; Register AX exploit
	nop

label_478:
	mov ax, 0x01DE ; Register AX exploit
	nop

label_479:
	mov ax, 0x01DF ; Register AX exploit
	nop

label_480:
	mov ax, 0x01E0 ; Register AX exploit
	nop

label_481:
	mov ax, 0x01E1 ; Register AX exploit
	nop

label_482:
	mov ax, 0x01E2 ; Register AX exploit
	nop

label_483:
	mov ax, 0x01E3 ; Register AX exploit
	nop

label_484:
	mov ax, 0x01E4 ; Register AX exploit
	nop

label_485:
	mov ax, 0x01E5 ; Register AX exploit
	nop

label_486:
	mov ax, 0x01E6 ; Register AX exploit
	nop

label_487:
	mov ax, 0x01E7 ; Register AX exploit
	nop

label_488:
	mov ax, 0x01E8 ; Register AX exploit
	nop

label_489:
	mov ax, 0x01E9 ; Register AX exploit
	nop

label_490:
	mov ax, 0x01EA ; Register AX exploit
	nop

label_491:
	mov ax, 0x01EB ; Register AX exploit
	nop

label_492:
	mov ax, 0x01EC ; Register AX exploit
	nop

label_493:
	mov ax, 0x01ED ; Register AX exploit
	nop

label_494:
	mov ax, 0x01EE ; Register AX exploit
	nop

label_495:
	mov ax, 0x01EF ; Register AX exploit
	nop

label_496:
	mov ax, 0x01F0 ; Register AX exploit
	nop

label_497:
	mov ax, 0x01F1 ; Register AX exploit
	nop

label_498:
	mov ax, 0x01F2 ; Register AX exploit
	nop

label_499:
	mov ax, 0x01F3 ; Register AX exploit
	nop

label_500:
	mov ax, 0x01F4 ; Register AX exploit
	nop

label_501:
	mov ax, 0x01F5 ; Register AX exploit
	nop

label_502:
	mov ax, 0x01F6 ; Register AX exploit
	nop

label_503:
	mov ax, 0x01F7 ; Register AX exploit
	nop

label_504:
	mov ax, 0x01F8 ; Register AX exploit
	nop

label_505:
	mov ax, 0x01F9 ; Register AX exploit
	nop

label_506:
	mov ax, 0x01FA ; Register AX exploit
	nop

label_507:
	mov ax, 0x01FB ; Register AX exploit
	nop

label_508:
	mov ax, 0x01FC ; Register AX exploit
	nop

label_509:
	mov ax, 0x01FD ; Register AX exploit
	nop

label_510:
	mov ax, 0x01FE ; Register AX exploit
	nop

label_511:
	mov ax, 0x01FF ; Register AX exploit
	nop

label_512:
	mov ax, 0x0200 ; Register AX exploit
	nop

label_513:
	mov ax, 0x0201 ; Register AX exploit
	nop

label_514:
	mov ax, 0x0202 ; Register AX exploit
	nop

label_515:
	mov ax, 0x0203 ; Register AX exploit
	nop

label_516:
	mov ax, 0x0204 ; Register AX exploit
	nop

label_517:
	mov ax, 0x0205 ; Register AX exploit
	nop

label_518:
	mov ax, 0x0206 ; Register AX exploit
	nop

label_519:
	mov ax, 0x0207 ; Register AX exploit
	nop

label_520:
	mov ax, 0x0208 ; Register AX exploit
	nop

label_521:
	mov ax, 0x0209 ; Register AX exploit
	nop

label_522:
	mov ax, 0x020A ; Register AX exploit
	nop

label_523:
	mov ax, 0x020B ; Register AX exploit
	nop

label_524:
	mov ax, 0x020C ; Register AX exploit
	nop

label_525:
	mov ax, 0x020D ; Register AX exploit
	nop

label_526:
	mov ax, 0x020E ; Register AX exploit
	nop

label_527:
	mov ax, 0x020F ; Register AX exploit
	nop

label_528:
	mov ax, 0x0210 ; Register AX exploit
	nop

label_529:
	mov ax, 0x0211 ; Register AX exploit
	nop

label_530:
	mov ax, 0x0212 ; Register AX exploit
	nop

label_531:
	mov ax, 0x0213 ; Register AX exploit
	nop

label_532:
	mov ax, 0x0214 ; Register AX exploit
	nop

label_533:
	mov ax, 0x0215 ; Register AX exploit
	nop

label_534:
	mov ax, 0x0216 ; Register AX exploit
	nop

label_535:
	mov ax, 0x0217 ; Register AX exploit
	nop

label_536:
	mov ax, 0x0218 ; Register AX exploit
	nop

label_537:
	mov ax, 0x0219 ; Register AX exploit
	nop

label_538:
	mov ax, 0x021A ; Register AX exploit
	nop

label_539:
	mov ax, 0x021B ; Register AX exploit
	nop

label_540:
	mov ax, 0x021C ; Register AX exploit
	nop

label_541:
	mov ax, 0x021D ; Register AX exploit
	nop

label_542:
	mov ax, 0x021E ; Register AX exploit
	nop

label_543:
	mov ax, 0x021F ; Register AX exploit
	nop

label_544:
	mov ax, 0x0220 ; Register AX exploit
	nop

label_545:
	mov ax, 0x0221 ; Register AX exploit
	nop

label_546:
	mov ax, 0x0222 ; Register AX exploit
	nop

label_547:
	mov ax, 0x0223 ; Register AX exploit
	nop

label_548:
	mov ax, 0x0224 ; Register AX exploit
	nop

label_549:
	mov ax, 0x0225 ; Register AX exploit
	nop

label_550:
	mov ax, 0x0226 ; Register AX exploit
	nop

label_551:
	mov ax, 0x0227 ; Register AX exploit
	nop

label_552:
	mov ax, 0x0228 ; Register AX exploit
	nop

label_553:
	mov ax, 0x0229 ; Register AX exploit
	nop

label_554:
	mov ax, 0x022A ; Register AX exploit
	nop

label_555:
	mov ax, 0x022B ; Register AX exploit
	nop

label_556:
	mov ax, 0x022C ; Register AX exploit
	nop

label_557:
	mov ax, 0x022D ; Register AX exploit
	nop

label_558:
	mov ax, 0x022E ; Register AX exploit
	nop

label_559:
	mov ax, 0x022F ; Register AX exploit
	nop

label_560:
	mov ax, 0x0230 ; Register AX exploit
	nop

label_561:
	mov ax, 0x0231 ; Register AX exploit
	nop

label_562:
	mov ax, 0x0232 ; Register AX exploit
	nop

label_563:
	mov ax, 0x0233 ; Register AX exploit
	nop

label_564:
	mov ax, 0x0234 ; Register AX exploit
	nop

label_565:
	mov ax, 0x0235 ; Register AX exploit
	nop

label_566:
	mov ax, 0x0236 ; Register AX exploit
	nop

label_567:
	mov ax, 0x0237 ; Register AX exploit
	nop

label_568:
	mov ax, 0x0238 ; Register AX exploit
	nop

label_569:
	mov ax, 0x0239 ; Register AX exploit
	nop

label_570:
	mov ax, 0x023A ; Register AX exploit
	nop

label_571:
	mov ax, 0x023B ; Register AX exploit
	nop

label_572:
	mov ax, 0x023C ; Register AX exploit
	nop

label_573:
	mov ax, 0x023D ; Register AX exploit
	nop

label_574:
	mov ax, 0x023E ; Register AX exploit
	nop

label_575:
	mov ax, 0x023F ; Register AX exploit
	nop

label_576:
	mov ax, 0x0240 ; Register AX exploit
	nop

label_577:
	mov ax, 0x0241 ; Register AX exploit
	nop

label_578:
	mov ax, 0x0242 ; Register AX exploit
	nop

label_579:
	mov ax, 0x0243 ; Register AX exploit
	nop

label_580:
	mov ax, 0x0244 ; Register AX exploit
	nop

label_581:
	mov ax, 0x0245 ; Register AX exploit
	nop

label_582:
	mov ax, 0x0246 ; Register AX exploit
	nop

label_583:
	mov ax, 0x0247 ; Register AX exploit
	nop

label_584:
	mov ax, 0x0248 ; Register AX exploit
	nop

label_585:
	mov ax, 0x0249 ; Register AX exploit
	nop

label_586:
	mov ax, 0x024A ; Register AX exploit
	nop

label_587:
	mov ax, 0x024B ; Register AX exploit
	nop

label_588:
	mov ax, 0x024C ; Register AX exploit
	nop

label_589:
	mov ax, 0x024D ; Register AX exploit
	nop

label_590:
	mov ax, 0x024E ; Register AX exploit
	nop

label_591:
	mov ax, 0x024F ; Register AX exploit
	nop

label_592:
	mov ax, 0x0250 ; Register AX exploit
	nop

label_593:
	mov ax, 0x0251 ; Register AX exploit
	nop

label_594:
	mov ax, 0x0252 ; Register AX exploit
	nop

label_595:
	mov ax, 0x0253 ; Register AX exploit
	nop

label_596:
	mov ax, 0x0254 ; Register AX exploit
	nop

label_597:
	mov ax, 0x0255 ; Register AX exploit
	nop

label_598:
	mov ax, 0x0256 ; Register AX exploit
	nop

label_599:
	mov ax, 0x0257 ; Register AX exploit
	nop

label_600:
	mov ax, 0x0258 ; Register AX exploit
	nop

label_601:
	mov ax, 0x0259 ; Register AX exploit
	nop

label_602:
	mov ax, 0x025A ; Register AX exploit
	nop

label_603:
	mov ax, 0x025B ; Register AX exploit
	nop

label_604:
	mov ax, 0x025C ; Register AX exploit
	nop

label_605:
	mov ax, 0x025D ; Register AX exploit
	nop

label_606:
	mov ax, 0x025E ; Register AX exploit
	nop

label_607:
	mov ax, 0x025F ; Register AX exploit
	nop

label_608:
	mov ax, 0x0260 ; Register AX exploit
	nop

label_609:
	mov ax, 0x0261 ; Register AX exploit
	nop

label_610:
	mov ax, 0x0262 ; Register AX exploit
	nop

label_611:
	mov ax, 0x0263 ; Register AX exploit
	nop

label_612:
	mov ax, 0x0264 ; Register AX exploit
	nop

label_613:
	mov ax, 0x0265 ; Register AX exploit
	nop

label_614:
	mov ax, 0x0266 ; Register AX exploit
	nop

label_615:
	mov ax, 0x0267 ; Register AX exploit
	nop

label_616:
	mov ax, 0x0268 ; Register AX exploit
	nop

label_617:
	mov ax, 0x0269 ; Register AX exploit
	nop

label_618:
	mov ax, 0x026A ; Register AX exploit
	nop

label_619:
	mov ax, 0x026B ; Register AX exploit
	nop

label_620:
	mov ax, 0x026C ; Register AX exploit
	nop

label_621:
	mov ax, 0x026D ; Register AX exploit
	nop

label_622:
	mov ax, 0x026E ; Register AX exploit
	nop

label_623:
	mov ax, 0x026F ; Register AX exploit
	nop

label_624:
	mov ax, 0x0270 ; Register AX exploit
	nop

label_625:
	mov ax, 0x0271 ; Register AX exploit
	nop

label_626:
	mov ax, 0x0272 ; Register AX exploit
	nop

label_627:
	mov ax, 0x0273 ; Register AX exploit
	nop

label_628:
	mov ax, 0x0274 ; Register AX exploit
	nop

label_629:
	mov ax, 0x0275 ; Register AX exploit
	nop

label_630:
	mov ax, 0x0276 ; Register AX exploit
	nop

label_631:
	mov ax, 0x0277 ; Register AX exploit
	nop

label_632:
	mov ax, 0x0278 ; Register AX exploit
	nop

label_633:
	mov ax, 0x0279 ; Register AX exploit
	nop

label_634:
	mov ax, 0x027A ; Register AX exploit
	nop

label_635:
	mov ax, 0x027B ; Register AX exploit
	nop

label_636:
	mov ax, 0x027C ; Register AX exploit
	nop

label_637:
	mov ax, 0x027D ; Register AX exploit
	nop

label_638:
	mov ax, 0x027E ; Register AX exploit
	nop

label_639:
	mov ax, 0x027F ; Register AX exploit
	nop

label_640:
	mov ax, 0x0280 ; Register AX exploit
	nop

label_641:
	mov ax, 0x0281 ; Register AX exploit
	nop

label_642:
	mov ax, 0x0282 ; Register AX exploit
	nop

label_643:
	mov ax, 0x0283 ; Register AX exploit
	nop

label_644:
	mov ax, 0x0284 ; Register AX exploit
	nop

label_645:
	mov ax, 0x0285 ; Register AX exploit
	nop

label_646:
	mov ax, 0x0286 ; Register AX exploit
	nop

label_647:
	mov ax, 0x0287 ; Register AX exploit
	nop

label_648:
	mov ax, 0x0288 ; Register AX exploit
	nop

label_649:
	mov ax, 0x0289 ; Register AX exploit
	nop

label_650:
	mov ax, 0x028A ; Register AX exploit
	nop

label_651:
	mov ax, 0x028B ; Register AX exploit
	nop

label_652:
	mov ax, 0x028C ; Register AX exploit
	nop

label_653:
	mov ax, 0x028D ; Register AX exploit
	nop

label_654:
	mov ax, 0x028E ; Register AX exploit
	nop

label_655:
	mov ax, 0x028F ; Register AX exploit
	nop

label_656:
	mov ax, 0x0290 ; Register AX exploit
	nop

label_657:
	mov ax, 0x0291 ; Register AX exploit
	nop

label_658:
	mov ax, 0x0292 ; Register AX exploit
	nop

label_659:
	mov ax, 0x0293 ; Register AX exploit
	nop

label_660:
	mov ax, 0x0294 ; Register AX exploit
	nop

label_661:
	mov ax, 0x0295 ; Register AX exploit
	nop

label_662:
	mov ax, 0x0296 ; Register AX exploit
	nop

label_663:
	mov ax, 0x0297 ; Register AX exploit
	nop

label_664:
	mov ax, 0x0298 ; Register AX exploit
	nop

label_665:
	mov ax, 0x0299 ; Register AX exploit
	nop

label_666:
	mov ax, 0x029A ; Register AX exploit
	nop

label_667:
	mov ax, 0x029B ; Register AX exploit
	nop

label_668:
	mov ax, 0x029C ; Register AX exploit
	nop

label_669:
	mov ax, 0x029D ; Register AX exploit
	nop

label_670:
	mov ax, 0x029E ; Register AX exploit
	nop

label_671:
	mov ax, 0x029F ; Register AX exploit
	nop

label_672:
	mov ax, 0x02A0 ; Register AX exploit
	nop

label_673:
	mov ax, 0x02A1 ; Register AX exploit
	nop

label_674:
	mov ax, 0x02A2 ; Register AX exploit
	nop

label_675:
	mov ax, 0x02A3 ; Register AX exploit
	nop

label_676:
	mov ax, 0x02A4 ; Register AX exploit
	nop

label_677:
	mov ax, 0x02A5 ; Register AX exploit
	nop

label_678:
	mov ax, 0x02A6 ; Register AX exploit
	nop

label_679:
	mov ax, 0x02A7 ; Register AX exploit
	nop

label_680:
	mov ax, 0x02A8 ; Register AX exploit
	nop

label_681:
	mov ax, 0x02A9 ; Register AX exploit
	nop

label_682:
	mov ax, 0x02AA ; Register AX exploit
	nop

label_683:
	mov ax, 0x02AB ; Register AX exploit
	nop

label_684:
	mov ax, 0x02AC ; Register AX exploit
	nop

label_685:
	mov ax, 0x02AD ; Register AX exploit
	nop

label_686:
	mov ax, 0x02AE ; Register AX exploit
	nop

label_687:
	mov ax, 0x02AF ; Register AX exploit
	nop

label_688:
	mov ax, 0x02B0 ; Register AX exploit
	nop

label_689:
	mov ax, 0x02B1 ; Register AX exploit
	nop

label_690:
	mov ax, 0x02B2 ; Register AX exploit
	nop

label_691:
	mov ax, 0x02B3 ; Register AX exploit
	nop

label_692:
	mov ax, 0x02B4 ; Register AX exploit
	nop

label_693:
	mov ax, 0x02B5 ; Register AX exploit
	nop

label_694:
	mov ax, 0x02B6 ; Register AX exploit
	nop

label_695:
	mov ax, 0x02B7 ; Register AX exploit
	nop

label_696:
	mov ax, 0x02B8 ; Register AX exploit
	nop

label_697:
	mov ax, 0x02B9 ; Register AX exploit
	nop

label_698:
	mov ax, 0x02BA ; Register AX exploit
	nop

label_699:
	mov ax, 0x02BB ; Register AX exploit
	nop

label_700:
	mov ax, 0x02BC ; Register AX exploit
	nop

label_701:
	mov ax, 0x02BD ; Register AX exploit
	nop

label_702:
	mov ax, 0x02BE ; Register AX exploit
	nop

label_703:
	mov ax, 0x02BF ; Register AX exploit
	nop

label_704:
	mov ax, 0x02C0 ; Register AX exploit
	nop

label_705:
	mov ax, 0x02C1 ; Register AX exploit
	nop

label_706:
	mov ax, 0x02C2 ; Register AX exploit
	nop

label_707:
	mov ax, 0x02C3 ; Register AX exploit
	nop

label_708:
	mov ax, 0x02C4 ; Register AX exploit
	nop

label_709:
	mov ax, 0x02C5 ; Register AX exploit
	nop

label_710:
	mov ax, 0x02C6 ; Register AX exploit
	nop

label_711:
	mov ax, 0x02C7 ; Register AX exploit
	nop

label_712:
	mov ax, 0x02C8 ; Register AX exploit
	nop

label_713:
	mov ax, 0x02C9 ; Register AX exploit
	nop

label_714:
	mov ax, 0x02CA ; Register AX exploit
	nop

label_715:
	mov ax, 0x02CB ; Register AX exploit
	nop

label_716:
	mov ax, 0x02CC ; Register AX exploit
	nop

label_717:
	mov ax, 0x02CD ; Register AX exploit
	nop

label_718:
	mov ax, 0x02CE ; Register AX exploit
	nop

label_719:
	mov ax, 0x02CF ; Register AX exploit
	nop

label_720:
	mov ax, 0x02D0 ; Register AX exploit
	nop

label_721:
	mov ax, 0x02D1 ; Register AX exploit
	nop

label_722:
	mov ax, 0x02D2 ; Register AX exploit
	nop

label_723:
	mov ax, 0x02D3 ; Register AX exploit
	nop

label_724:
	mov ax, 0x02D4 ; Register AX exploit
	nop

label_725:
	mov ax, 0x02D5 ; Register AX exploit
	nop

label_726:
	mov ax, 0x02D6 ; Register AX exploit
	nop

label_727:
	mov ax, 0x02D7 ; Register AX exploit
	nop

label_728:
	mov ax, 0x02D8 ; Register AX exploit
	nop

label_729:
	mov ax, 0x02D9 ; Register AX exploit
	nop

label_730:
	mov ax, 0x02DA ; Register AX exploit
	nop

label_731:
	mov ax, 0x02DB ; Register AX exploit
	nop

label_732:
	mov ax, 0x02DC ; Register AX exploit
	nop

label_733:
	mov ax, 0x02DD ; Register AX exploit
	nop

label_734:
	mov ax, 0x02DE ; Register AX exploit
	nop

label_735:
	mov ax, 0x02DF ; Register AX exploit
	nop

label_736:
	mov ax, 0x02E0 ; Register AX exploit
	nop

label_737:
	mov ax, 0x02E1 ; Register AX exploit
	nop

label_738:
	mov ax, 0x02E2 ; Register AX exploit
	nop

label_739:
	mov ax, 0x02E3 ; Register AX exploit
	nop

label_740:
	mov ax, 0x02E4 ; Register AX exploit
	nop

label_741:
	mov ax, 0x02E5 ; Register AX exploit
	nop

label_742:
	mov ax, 0x02E6 ; Register AX exploit
	nop

label_743:
	mov ax, 0x02E7 ; Register AX exploit
	nop

label_744:
	mov ax, 0x02E8 ; Register AX exploit
	nop

label_745:
	mov ax, 0x02E9 ; Register AX exploit
	nop

label_746:
	mov ax, 0x02EA ; Register AX exploit
	nop

label_747:
	mov ax, 0x02EB ; Register AX exploit
	nop

label_748:
	mov ax, 0x02EC ; Register AX exploit
	nop

label_749:
	mov ax, 0x02ED ; Register AX exploit
	nop

label_750:
	mov ax, 0x02EE ; Register AX exploit
	nop

label_751:
	mov ax, 0x02EF ; Register AX exploit
	nop

label_752:
	mov ax, 0x02F0 ; Register AX exploit
	nop

label_753:
	mov ax, 0x02F1 ; Register AX exploit
	nop

label_754:
	mov ax, 0x02F2 ; Register AX exploit
	nop

label_755:
	mov ax, 0x02F3 ; Register AX exploit
	nop

label_756:
	mov ax, 0x02F4 ; Register AX exploit
	nop

label_757:
	mov ax, 0x02F5 ; Register AX exploit
	nop

label_758:
	mov ax, 0x02F6 ; Register AX exploit
	nop

label_759:
	mov ax, 0x02F7 ; Register AX exploit
	nop

label_760:
	mov ax, 0x02F8 ; Register AX exploit
	nop

label_761:
	mov ax, 0x02F9 ; Register AX exploit
	nop

label_762:
	mov ax, 0x02FA ; Register AX exploit
	nop

label_763:
	mov ax, 0x02FB ; Register AX exploit
	nop

label_764:
	mov ax, 0x02FC ; Register AX exploit
	nop

label_765:
	mov ax, 0x02FD ; Register AX exploit
	nop

label_766:
	mov ax, 0x02FE ; Register AX exploit
	nop

label_767:
	mov ax, 0x02FF ; Register AX exploit
	nop

label_768:
	mov ax, 0x0300 ; Register AX exploit
	nop

label_769:
	mov ax, 0x0301 ; Register AX exploit
	nop

label_770:
	mov ax, 0x0302 ; Register AX exploit
	nop

label_771:
	mov ax, 0x0303 ; Register AX exploit
	nop

label_772:
	mov ax, 0x0304 ; Register AX exploit
	nop

label_773:
	mov ax, 0x0305 ; Register AX exploit
	nop

label_774:
	mov ax, 0x0306 ; Register AX exploit
	nop

label_775:
	mov ax, 0x0307 ; Register AX exploit
	nop

label_776:
	mov ax, 0x0308 ; Register AX exploit
	nop

label_777:
	mov ax, 0x0309 ; Register AX exploit
	nop

label_778:
	mov ax, 0x030A ; Register AX exploit
	nop

label_779:
	mov ax, 0x030B ; Register AX exploit
	nop

label_780:
	mov ax, 0x030C ; Register AX exploit
	nop

label_781:
	mov ax, 0x030D ; Register AX exploit
	nop

label_782:
	mov ax, 0x030E ; Register AX exploit
	nop

label_783:
	mov ax, 0x030F ; Register AX exploit
	nop

label_784:
	mov ax, 0x0310 ; Register AX exploit
	nop

label_785:
	mov ax, 0x0311 ; Register AX exploit
	nop

label_786:
	mov ax, 0x0312 ; Register AX exploit
	nop

label_787:
	mov ax, 0x0313 ; Register AX exploit
	nop

label_788:
	mov ax, 0x0314 ; Register AX exploit
	nop

label_789:
	mov ax, 0x0315 ; Register AX exploit
	nop

label_790:
	mov ax, 0x0316 ; Register AX exploit
	nop

label_791:
	mov ax, 0x0317 ; Register AX exploit
	nop

label_792:
	mov ax, 0x0318 ; Register AX exploit
	nop

label_793:
	mov ax, 0x0319 ; Register AX exploit
	nop

label_794:
	mov ax, 0x031A ; Register AX exploit
	nop

label_795:
	mov ax, 0x031B ; Register AX exploit
	nop

label_796:
	mov ax, 0x031C ; Register AX exploit
	nop

label_797:
	mov ax, 0x031D ; Register AX exploit
	nop

label_798:
	mov ax, 0x031E ; Register AX exploit
	nop

label_799:
	mov ax, 0x031F ; Register AX exploit
	nop

label_800:
	mov ax, 0x0320 ; Register AX exploit
	nop

label_801:
	mov ax, 0x0321 ; Register AX exploit
	nop

label_802:
	mov ax, 0x0322 ; Register AX exploit
	nop

label_803:
	mov ax, 0x0323 ; Register AX exploit
	nop

label_804:
	mov ax, 0x0324 ; Register AX exploit
	nop

label_805:
	mov ax, 0x0325 ; Register AX exploit
	nop

label_806:
	mov ax, 0x0326 ; Register AX exploit
	nop

label_807:
	mov ax, 0x0327 ; Register AX exploit
	nop

label_808:
	mov ax, 0x0328 ; Register AX exploit
	nop

label_809:
	mov ax, 0x0329 ; Register AX exploit
	nop

label_810:
	mov ax, 0x032A ; Register AX exploit
	nop

label_811:
	mov ax, 0x032B ; Register AX exploit
	nop

label_812:
	mov ax, 0x032C ; Register AX exploit
	nop

label_813:
	mov ax, 0x032D ; Register AX exploit
	nop

label_814:
	mov ax, 0x032E ; Register AX exploit
	nop

label_815:
	mov ax, 0x032F ; Register AX exploit
	nop

label_816:
	mov ax, 0x0330 ; Register AX exploit
	nop

label_817:
	mov ax, 0x0331 ; Register AX exploit
	nop

label_818:
	mov ax, 0x0332 ; Register AX exploit
	nop

label_819:
	mov ax, 0x0333 ; Register AX exploit
	nop

label_820:
	mov ax, 0x0334 ; Register AX exploit
	nop

label_821:
	mov ax, 0x0335 ; Register AX exploit
	nop

label_822:
	mov ax, 0x0336 ; Register AX exploit
	nop

label_823:
	mov ax, 0x0337 ; Register AX exploit
	nop

label_824:
	mov ax, 0x0338 ; Register AX exploit
	nop

label_825:
	mov ax, 0x0339 ; Register AX exploit
	nop

label_826:
	mov ax, 0x033A ; Register AX exploit
	nop

label_827:
	mov ax, 0x033B ; Register AX exploit
	nop

label_828:
	mov ax, 0x033C ; Register AX exploit
	nop

label_829:
	mov ax, 0x033D ; Register AX exploit
	nop

label_830:
	mov ax, 0x033E ; Register AX exploit
	nop

label_831:
	mov ax, 0x033F ; Register AX exploit
	nop

label_832:
	mov ax, 0x0340 ; Register AX exploit
	nop

label_833:
	mov ax, 0x0341 ; Register AX exploit
	nop

label_834:
	mov ax, 0x0342 ; Register AX exploit
	nop

label_835:
	mov ax, 0x0343 ; Register AX exploit
	nop

label_836:
	mov ax, 0x0344 ; Register AX exploit
	nop

label_837:
	mov ax, 0x0345 ; Register AX exploit
	nop

label_838:
	mov ax, 0x0346 ; Register AX exploit
	nop

label_839:
	mov ax, 0x0347 ; Register AX exploit
	nop

label_840:
	mov ax, 0x0348 ; Register AX exploit
	nop

label_841:
	mov ax, 0x0349 ; Register AX exploit
	nop

label_842:
	mov ax, 0x034A ; Register AX exploit
	nop

label_843:
	mov ax, 0x034B ; Register AX exploit
	nop

label_844:
	mov ax, 0x034C ; Register AX exploit
	nop

label_845:
	mov ax, 0x034D ; Register AX exploit
	nop

label_846:
	mov ax, 0x034E ; Register AX exploit
	nop

label_847:
	mov ax, 0x034F ; Register AX exploit
	nop

label_848:
	mov ax, 0x0350 ; Register AX exploit
	nop

label_849:
	mov ax, 0x0351 ; Register AX exploit
	nop

label_850:
	mov ax, 0x0352 ; Register AX exploit
	nop

label_851:
	mov ax, 0x0353 ; Register AX exploit
	nop

label_852:
	mov ax, 0x0354 ; Register AX exploit
	nop

label_853:
	mov ax, 0x0355 ; Register AX exploit
	nop

label_854:
	mov ax, 0x0356 ; Register AX exploit
	nop

label_855:
	mov ax, 0x0357 ; Register AX exploit
	nop

label_856:
	mov ax, 0x0358 ; Register AX exploit
	nop

label_857:
	mov ax, 0x0359 ; Register AX exploit
	nop

label_858:
	mov ax, 0x035A ; Register AX exploit
	nop

label_859:
	mov ax, 0x035B ; Register AX exploit
	nop

label_860:
	mov ax, 0x035C ; Register AX exploit
	nop

label_861:
	mov ax, 0x035D ; Register AX exploit
	nop

label_862:
	mov ax, 0x035E ; Register AX exploit
	nop

label_863:
	mov ax, 0x035F ; Register AX exploit
	nop

label_864:
	mov ax, 0x0360 ; Register AX exploit
	nop

label_865:
	mov ax, 0x0361 ; Register AX exploit
	nop

label_866:
	mov ax, 0x0362 ; Register AX exploit
	nop

label_867:
	mov ax, 0x0363 ; Register AX exploit
	nop

label_868:
	mov ax, 0x0364 ; Register AX exploit
	nop

label_869:
	mov ax, 0x0365 ; Register AX exploit
	nop

label_870:
	mov ax, 0x0366 ; Register AX exploit
	nop

label_871:
	mov ax, 0x0367 ; Register AX exploit
	nop

label_872:
	mov ax, 0x0368 ; Register AX exploit
	nop

label_873:
	mov ax, 0x0369 ; Register AX exploit
	nop

label_874:
	mov ax, 0x036A ; Register AX exploit
	nop

label_875:
	mov ax, 0x036B ; Register AX exploit
	nop

label_876:
	mov ax, 0x036C ; Register AX exploit
	nop

label_877:
	mov ax, 0x036D ; Register AX exploit
	nop

label_878:
	mov ax, 0x036E ; Register AX exploit
	nop

label_879:
	mov ax, 0x036F ; Register AX exploit
	nop

label_880:
	mov ax, 0x0370 ; Register AX exploit
	nop

label_881:
	mov ax, 0x0371 ; Register AX exploit
	nop

label_882:
	mov ax, 0x0372 ; Register AX exploit
	nop

label_883:
	mov ax, 0x0373 ; Register AX exploit
	nop

label_884:
	mov ax, 0x0374 ; Register AX exploit
	nop

label_885:
	mov ax, 0x0375 ; Register AX exploit
	nop

label_886:
	mov ax, 0x0376 ; Register AX exploit
	nop

label_887:
	mov ax, 0x0377 ; Register AX exploit
	nop

label_888:
	mov ax, 0x0378 ; Register AX exploit
	nop

label_889:
	mov ax, 0x0379 ; Register AX exploit
	nop

label_890:
	mov ax, 0x037A ; Register AX exploit
	nop

label_891:
	mov ax, 0x037B ; Register AX exploit
	nop

label_892:
	mov ax, 0x037C ; Register AX exploit
	nop

label_893:
	mov ax, 0x037D ; Register AX exploit
	nop

label_894:
	mov ax, 0x037E ; Register AX exploit
	nop

label_895:
	mov ax, 0x037F ; Register AX exploit
	nop

label_896:
	mov ax, 0x0380 ; Register AX exploit
	nop

label_897:
	mov ax, 0x0381 ; Register AX exploit
	nop

label_898:
	mov ax, 0x0382 ; Register AX exploit
	nop

label_899:
	mov ax, 0x0383 ; Register AX exploit
	nop

label_900:
	mov ax, 0x0384 ; Register AX exploit
	nop

label_901:
	mov ax, 0x0385 ; Register AX exploit
	nop

label_902:
	mov ax, 0x0386 ; Register AX exploit
	nop

label_903:
	mov ax, 0x0387 ; Register AX exploit
	nop

label_904:
	mov ax, 0x0388 ; Register AX exploit
	nop

label_905:
	mov ax, 0x0389 ; Register AX exploit
	nop

label_906:
	mov ax, 0x038A ; Register AX exploit
	nop

label_907:
	mov ax, 0x038B ; Register AX exploit
	nop

label_908:
	mov ax, 0x038C ; Register AX exploit
	nop

label_909:
	mov ax, 0x038D ; Register AX exploit
	nop

label_910:
	mov ax, 0x038E ; Register AX exploit
	nop

label_911:
	mov ax, 0x038F ; Register AX exploit
	nop

label_912:
	mov ax, 0x0390 ; Register AX exploit
	nop

label_913:
	mov ax, 0x0391 ; Register AX exploit
	nop

label_914:
	mov ax, 0x0392 ; Register AX exploit
	nop

label_915:
	mov ax, 0x0393 ; Register AX exploit
	nop

label_916:
	mov ax, 0x0394 ; Register AX exploit
	nop

label_917:
	mov ax, 0x0395 ; Register AX exploit
	nop

label_918:
	mov ax, 0x0396 ; Register AX exploit
	nop

label_919:
	mov ax, 0x0397 ; Register AX exploit
	nop

label_920:
	mov ax, 0x0398 ; Register AX exploit
	nop

label_921:
	mov ax, 0x0399 ; Register AX exploit
	nop

label_922:
	mov ax, 0x039A ; Register AX exploit
	nop

label_923:
	mov ax, 0x039B ; Register AX exploit
	nop

label_924:
	mov ax, 0x039C ; Register AX exploit
	nop

label_925:
	mov ax, 0x039D ; Register AX exploit
	nop

label_926:
	mov ax, 0x039E ; Register AX exploit
	nop

label_927:
	mov ax, 0x039F ; Register AX exploit
	nop

label_928:
	mov ax, 0x03A0 ; Register AX exploit
	nop

label_929:
	mov ax, 0x03A1 ; Register AX exploit
	nop

label_930:
	mov ax, 0x03A2 ; Register AX exploit
	nop

label_931:
	mov ax, 0x03A3 ; Register AX exploit
	nop

label_932:
	mov ax, 0x03A4 ; Register AX exploit
	nop

label_933:
	mov ax, 0x03A5 ; Register AX exploit
	nop

label_934:
	mov ax, 0x03A6 ; Register AX exploit
	nop

label_935:
	mov ax, 0x03A7 ; Register AX exploit
	nop

label_936:
	mov ax, 0x03A8 ; Register AX exploit
	nop

label_937:
	mov ax, 0x03A9 ; Register AX exploit
	nop

label_938:
	mov ax, 0x03AA ; Register AX exploit
	nop

label_939:
	mov ax, 0x03AB ; Register AX exploit
	nop

label_940:
	mov ax, 0x03AC ; Register AX exploit
	nop

label_941:
	mov ax, 0x03AD ; Register AX exploit
	nop

label_942:
	mov ax, 0x03AE ; Register AX exploit
	nop

label_943:
	mov ax, 0x03AF ; Register AX exploit
	nop

label_944:
	mov ax, 0x03B0 ; Register AX exploit
	nop

label_945:
	mov ax, 0x03B1 ; Register AX exploit
	nop

label_946:
	mov ax, 0x03B2 ; Register AX exploit
	nop

label_947:
	mov ax, 0x03B3 ; Register AX exploit
	nop

label_948:
	mov ax, 0x03B4 ; Register AX exploit
	nop

label_949:
	mov ax, 0x03B5 ; Register AX exploit
	nop

label_950:
	mov ax, 0x03B6 ; Register AX exploit
	nop

label_951:
	mov ax, 0x03B7 ; Register AX exploit
	nop

label_952:
	mov ax, 0x03B8 ; Register AX exploit
	nop

label_953:
	mov ax, 0x03B9 ; Register AX exploit
	nop

label_954:
	mov ax, 0x03BA ; Register AX exploit
	nop

label_955:
	mov ax, 0x03BB ; Register AX exploit
	nop

label_956:
	mov ax, 0x03BC ; Register AX exploit
	nop

label_957:
	mov ax, 0x03BD ; Register AX exploit
	nop

label_958:
	mov ax, 0x03BE ; Register AX exploit
	nop

label_959:
	mov ax, 0x03BF ; Register AX exploit
	nop

label_960:
	mov ax, 0x03C0 ; Register AX exploit
	nop

label_961:
	mov ax, 0x03C1 ; Register AX exploit
	nop

label_962:
	mov ax, 0x03C2 ; Register AX exploit
	nop

label_963:
	mov ax, 0x03C3 ; Register AX exploit
	nop

label_964:
	mov ax, 0x03C4 ; Register AX exploit
	nop

label_965:
	mov ax, 0x03C5 ; Register AX exploit
	nop

label_966:
	mov ax, 0x03C6 ; Register AX exploit
	nop

label_967:
	mov ax, 0x03C7 ; Register AX exploit
	nop

label_968:
	mov ax, 0x03C8 ; Register AX exploit
	nop

label_969:
	mov ax, 0x03C9 ; Register AX exploit
	nop

label_970:
	mov ax, 0x03CA ; Register AX exploit
	nop

label_971:
	mov ax, 0x03CB ; Register AX exploit
	nop

label_972:
	mov ax, 0x03CC ; Register AX exploit
	nop

label_973:
	mov ax, 0x03CD ; Register AX exploit
	nop

label_974:
	mov ax, 0x03CE ; Register AX exploit
	nop

label_975:
	mov ax, 0x03CF ; Register AX exploit
	nop

label_976:
	mov ax, 0x03D0 ; Register AX exploit
	nop

label_977:
	mov ax, 0x03D1 ; Register AX exploit
	nop

label_978:
	mov ax, 0x03D2 ; Register AX exploit
	nop

label_979:
	mov ax, 0x03D3 ; Register AX exploit
	nop

label_980:
	mov ax, 0x03D4 ; Register AX exploit
	nop

label_981:
	mov ax, 0x03D5 ; Register AX exploit
	nop

label_982:
	mov ax, 0x03D6 ; Register AX exploit
	nop

label_983:
	mov ax, 0x03D7 ; Register AX exploit
	nop

label_984:
	mov ax, 0x03D8 ; Register AX exploit
	nop

label_985:
	mov ax, 0x03D9 ; Register AX exploit
	nop

label_986:
	mov ax, 0x03DA ; Register AX exploit
	nop

label_987:
	mov ax, 0x03DB ; Register AX exploit
	nop

label_988:
	mov ax, 0x03DC ; Register AX exploit
	nop

label_989:
	mov ax, 0x03DD ; Register AX exploit
	nop

label_990:
	mov ax, 0x03DE ; Register AX exploit
	nop

label_991:
	mov ax, 0x03DF ; Register AX exploit
	nop

label_992:
	mov ax, 0x03E0 ; Register AX exploit
	nop

label_993:
	mov ax, 0x03E1 ; Register AX exploit
	nop

label_994:
	mov ax, 0x03E2 ; Register AX exploit
	nop

label_995:
	mov ax, 0x03E3 ; Register AX exploit
	nop

label_996:
	mov ax, 0x03E4 ; Register AX exploit
	nop

label_997:
	mov ax, 0x03E5 ; Register AX exploit
	nop

label_998:
	mov ax, 0x03E6 ; Register AX exploit
	nop

label_999:
	mov ax, 0x03E7 ; Register AX exploit
	nop

label_1000:
	mov ax, 0x03E8 ; Register AX exploit
	nop

label_1001:
	mov ax, 0x03E9 ; Register AX exploit
	nop

label_1002:
	mov ax, 0x03EA ; Register AX exploit
	nop

label_1003:
	mov ax, 0x03EB ; Register AX exploit
	nop

label_1004:
	mov ax, 0x03EC ; Register AX exploit
	nop

label_1005:
	mov ax, 0x03ED ; Register AX exploit
	nop

label_1006:
	mov ax, 0x03EE ; Register AX exploit
	nop

label_1007:
	mov ax, 0x03EF ; Register AX exploit
	nop

label_1008:
	mov ax, 0x03F0 ; Register AX exploit
	nop

label_1009:
	mov ax, 0x03F1 ; Register AX exploit
	nop

label_1010:
	mov ax, 0x03F2 ; Register AX exploit
	nop

label_1011:
	mov ax, 0x03F3 ; Register AX exploit
	nop

label_1012:
	mov ax, 0x03F4 ; Register AX exploit
	nop

label_1013:
	mov ax, 0x03F5 ; Register AX exploit
	nop

label_1014:
	mov ax, 0x03F6 ; Register AX exploit
	nop

label_1015:
	mov ax, 0x03F7 ; Register AX exploit
	nop

label_1016:
	mov ax, 0x03F8 ; Register AX exploit
	nop

label_1017:
	mov ax, 0x03F9 ; Register AX exploit
	nop

label_1018:
	mov ax, 0x03FA ; Register AX exploit
	nop

label_1019:
	mov ax, 0x03FB ; Register AX exploit
	nop

label_1020:
	mov ax, 0x03FC ; Register AX exploit
	nop

label_1021:
	mov ax, 0x03FD ; Register AX exploit
	nop

label_1022:
	mov ax, 0x03FE ; Register AX exploit
	nop

label_1023:
	mov ax, 0x03FF ; Register AX exploit
	nop

label_1024:
	mov ax, 0x0400 ; Register AX exploit
	nop

label_1025:
	mov ax, 0x0401 ; Register AX exploit
	nop

label_1026:
	mov ax, 0x0402 ; Register AX exploit
	nop

label_1027:
	mov ax, 0x0403 ; Register AX exploit
	nop

label_1028:
	mov ax, 0x0404 ; Register AX exploit
	nop

label_1029:
	mov ax, 0x0405 ; Register AX exploit
	nop

label_1030:
	mov ax, 0x0406 ; Register AX exploit
	nop

label_1031:
	mov ax, 0x0407 ; Register AX exploit
	nop

label_1032:
	mov ax, 0x0408 ; Register AX exploit
	nop

label_1033:
	mov ax, 0x0409 ; Register AX exploit
	nop

label_1034:
	mov ax, 0x040A ; Register AX exploit
	nop

label_1035:
	mov ax, 0x040B ; Register AX exploit
	nop

label_1036:
	mov ax, 0x040C ; Register AX exploit
	nop

label_1037:
	mov ax, 0x040D ; Register AX exploit
	nop

label_1038:
	mov ax, 0x040E ; Register AX exploit
	nop

label_1039:
	mov ax, 0x040F ; Register AX exploit
	nop

label_1040:
	mov ax, 0x0410 ; Register AX exploit
	nop

label_1041:
	mov ax, 0x0411 ; Register AX exploit
	nop

label_1042:
	mov ax, 0x0412 ; Register AX exploit
	nop

label_1043:
	mov ax, 0x0413 ; Register AX exploit
	nop

label_1044:
	mov ax, 0x0414 ; Register AX exploit
	nop

label_1045:
	mov ax, 0x0415 ; Register AX exploit
	nop

label_1046:
	mov ax, 0x0416 ; Register AX exploit
	nop

label_1047:
	mov ax, 0x0417 ; Register AX exploit
	nop

label_1048:
	mov ax, 0x0418 ; Register AX exploit
	nop

label_1049:
	mov ax, 0x0419 ; Register AX exploit
	nop

label_1050:
	mov ax, 0x041A ; Register AX exploit
	nop

label_1051:
	mov ax, 0x041B ; Register AX exploit
	nop

label_1052:
	mov ax, 0x041C ; Register AX exploit
	nop

label_1053:
	mov ax, 0x041D ; Register AX exploit
	nop

label_1054:
	mov ax, 0x041E ; Register AX exploit
	nop

label_1055:
	mov ax, 0x041F ; Register AX exploit
	nop

label_1056:
	mov ax, 0x0420 ; Register AX exploit
	nop

label_1057:
	mov ax, 0x0421 ; Register AX exploit
	nop

label_1058:
	mov ax, 0x0422 ; Register AX exploit
	nop

label_1059:
	mov ax, 0x0423 ; Register AX exploit
	nop

label_1060:
	mov ax, 0x0424 ; Register AX exploit
	nop

label_1061:
	mov ax, 0x0425 ; Register AX exploit
	nop

label_1062:
	mov ax, 0x0426 ; Register AX exploit
	nop

label_1063:
	mov ax, 0x0427 ; Register AX exploit
	nop

label_1064:
	mov ax, 0x0428 ; Register AX exploit
	nop

label_1065:
	mov ax, 0x0429 ; Register AX exploit
	nop

label_1066:
	mov ax, 0x042A ; Register AX exploit
	nop

label_1067:
	mov ax, 0x042B ; Register AX exploit
	nop

label_1068:
	mov ax, 0x042C ; Register AX exploit
	nop

label_1069:
	mov ax, 0x042D ; Register AX exploit
	nop

label_1070:
	mov ax, 0x042E ; Register AX exploit
	nop

label_1071:
	mov ax, 0x042F ; Register AX exploit
	nop

label_1072:
	mov ax, 0x0430 ; Register AX exploit
	nop

label_1073:
	mov ax, 0x0431 ; Register AX exploit
	nop

label_1074:
	mov ax, 0x0432 ; Register AX exploit
	nop

label_1075:
	mov ax, 0x0433 ; Register AX exploit
	nop

label_1076:
	mov ax, 0x0434 ; Register AX exploit
	nop

label_1077:
	mov ax, 0x0435 ; Register AX exploit
	nop

label_1078:
	mov ax, 0x0436 ; Register AX exploit
	nop

label_1079:
	mov ax, 0x0437 ; Register AX exploit
	nop

label_1080:
	mov ax, 0x0438 ; Register AX exploit
	nop

label_1081:
	mov ax, 0x0439 ; Register AX exploit
	nop

label_1082:
	mov ax, 0x043A ; Register AX exploit
	nop

label_1083:
	mov ax, 0x043B ; Register AX exploit
	nop

label_1084:
	mov ax, 0x043C ; Register AX exploit
	nop

label_1085:
	mov ax, 0x043D ; Register AX exploit
	nop

label_1086:
	mov ax, 0x043E ; Register AX exploit
	nop

label_1087:
	mov ax, 0x043F ; Register AX exploit
	nop

label_1088:
	mov ax, 0x0440 ; Register AX exploit
	nop

label_1089:
	mov ax, 0x0441 ; Register AX exploit
	nop

label_1090:
	mov ax, 0x0442 ; Register AX exploit
	nop

label_1091:
	mov ax, 0x0443 ; Register AX exploit
	nop

label_1092:
	mov ax, 0x0444 ; Register AX exploit
	nop

label_1093:
	mov ax, 0x0445 ; Register AX exploit
	nop

label_1094:
	mov ax, 0x0446 ; Register AX exploit
	nop

label_1095:
	mov ax, 0x0447 ; Register AX exploit
	nop

label_1096:
	mov ax, 0x0448 ; Register AX exploit
	nop

label_1097:
	mov ax, 0x0449 ; Register AX exploit
	nop

label_1098:
	mov ax, 0x044A ; Register AX exploit
	nop

label_1099:
	mov ax, 0x044B ; Register AX exploit
	nop

label_1100:
	mov ax, 0x044C ; Register AX exploit
	nop

label_1101:
	mov ax, 0x044D ; Register AX exploit
	nop

label_1102:
	mov ax, 0x044E ; Register AX exploit
	nop

label_1103:
	mov ax, 0x044F ; Register AX exploit
	nop

label_1104:
	mov ax, 0x0450 ; Register AX exploit
	nop

label_1105:
	mov ax, 0x0451 ; Register AX exploit
	nop

label_1106:
	mov ax, 0x0452 ; Register AX exploit
	nop

label_1107:
	mov ax, 0x0453 ; Register AX exploit
	nop

label_1108:
	mov ax, 0x0454 ; Register AX exploit
	nop

label_1109:
	mov ax, 0x0455 ; Register AX exploit
	nop

label_1110:
	mov ax, 0x0456 ; Register AX exploit
	nop

label_1111:
	mov ax, 0x0457 ; Register AX exploit
	nop

label_1112:
	mov ax, 0x0458 ; Register AX exploit
	nop

label_1113:
	mov ax, 0x0459 ; Register AX exploit
	nop

label_1114:
	mov ax, 0x045A ; Register AX exploit
	nop

label_1115:
	mov ax, 0x045B ; Register AX exploit
	nop

label_1116:
	mov ax, 0x045C ; Register AX exploit
	nop

label_1117:
	mov ax, 0x045D ; Register AX exploit
	nop

label_1118:
	mov ax, 0x045E ; Register AX exploit
	nop

label_1119:
	mov ax, 0x045F ; Register AX exploit
	nop

label_1120:
	mov ax, 0x0460 ; Register AX exploit
	nop

label_1121:
	mov ax, 0x0461 ; Register AX exploit
	nop

label_1122:
	mov ax, 0x0462 ; Register AX exploit
	nop

label_1123:
	mov ax, 0x0463 ; Register AX exploit
	nop

label_1124:
	mov ax, 0x0464 ; Register AX exploit
	nop

label_1125:
	mov ax, 0x0465 ; Register AX exploit
	nop

label_1126:
	mov ax, 0x0466 ; Register AX exploit
	nop

label_1127:
	mov ax, 0x0467 ; Register AX exploit
	nop

label_1128:
	mov ax, 0x0468 ; Register AX exploit
	nop

label_1129:
	mov ax, 0x0469 ; Register AX exploit
	nop

label_1130:
	mov ax, 0x046A ; Register AX exploit
	nop

label_1131:
	mov ax, 0x046B ; Register AX exploit
	nop

label_1132:
	mov ax, 0x046C ; Register AX exploit
	nop

label_1133:
	mov ax, 0x046D ; Register AX exploit
	nop

label_1134:
	mov ax, 0x046E ; Register AX exploit
	nop

label_1135:
	mov ax, 0x046F ; Register AX exploit
	nop

label_1136:
	mov ax, 0x0470 ; Register AX exploit
	nop

label_1137:
	mov ax, 0x0471 ; Register AX exploit
	nop

label_1138:
	mov ax, 0x0472 ; Register AX exploit
	nop

label_1139:
	mov ax, 0x0473 ; Register AX exploit
	nop

label_1140:
	mov ax, 0x0474 ; Register AX exploit
	nop

label_1141:
	mov ax, 0x0475 ; Register AX exploit
	nop

label_1142:
	mov ax, 0x0476 ; Register AX exploit
	nop

label_1143:
	mov ax, 0x0477 ; Register AX exploit
	nop

label_1144:
	mov ax, 0x0478 ; Register AX exploit
	nop

label_1145:
	mov ax, 0x0479 ; Register AX exploit
	nop

label_1146:
	mov ax, 0x047A ; Register AX exploit
	nop

label_1147:
	mov ax, 0x047B ; Register AX exploit
	nop

label_1148:
	mov ax, 0x047C ; Register AX exploit
	nop

label_1149:
	mov ax, 0x047D ; Register AX exploit
	nop

label_1150:
	mov ax, 0x047E ; Register AX exploit
	nop

label_1151:
	mov ax, 0x047F ; Register AX exploit
	nop

label_1152:
	mov ax, 0x0480 ; Register AX exploit
	nop

label_1153:
	mov ax, 0x0481 ; Register AX exploit
	nop

label_1154:
	mov ax, 0x0482 ; Register AX exploit
	nop

label_1155:
	mov ax, 0x0483 ; Register AX exploit
	nop

label_1156:
	mov ax, 0x0484 ; Register AX exploit
	nop

label_1157:
	mov ax, 0x0485 ; Register AX exploit
	nop

label_1158:
	mov ax, 0x0486 ; Register AX exploit
	nop

label_1159:
	mov ax, 0x0487 ; Register AX exploit
	nop

label_1160:
	mov ax, 0x0488 ; Register AX exploit
	nop

label_1161:
	mov ax, 0x0489 ; Register AX exploit
	nop

label_1162:
	mov ax, 0x048A ; Register AX exploit
	nop

label_1163:
	mov ax, 0x048B ; Register AX exploit
	nop

label_1164:
	mov ax, 0x048C ; Register AX exploit
	nop

label_1165:
	mov ax, 0x048D ; Register AX exploit
	nop

label_1166:
	mov ax, 0x048E ; Register AX exploit
	nop

label_1167:
	mov ax, 0x048F ; Register AX exploit
	nop

label_1168:
	mov ax, 0x0490 ; Register AX exploit
	nop

label_1169:
	mov ax, 0x0491 ; Register AX exploit
	nop

label_1170:
	mov ax, 0x0492 ; Register AX exploit
	nop

label_1171:
	mov ax, 0x0493 ; Register AX exploit
	nop

label_1172:
	mov ax, 0x0494 ; Register AX exploit
	nop

label_1173:
	mov ax, 0x0495 ; Register AX exploit
	nop

label_1174:
	mov ax, 0x0496 ; Register AX exploit
	nop

label_1175:
	mov ax, 0x0497 ; Register AX exploit
	nop

label_1176:
	mov ax, 0x0498 ; Register AX exploit
	nop

label_1177:
	mov ax, 0x0499 ; Register AX exploit
	nop

label_1178:
	mov ax, 0x049A ; Register AX exploit
	nop

label_1179:
	mov ax, 0x049B ; Register AX exploit
	nop

label_1180:
	mov ax, 0x049C ; Register AX exploit
	nop

label_1181:
	mov ax, 0x049D ; Register AX exploit
	nop

label_1182:
	mov ax, 0x049E ; Register AX exploit
	nop

label_1183:
	mov ax, 0x049F ; Register AX exploit
	nop

label_1184:
	mov ax, 0x04A0 ; Register AX exploit
	nop

label_1185:
	mov ax, 0x04A1 ; Register AX exploit
	nop

label_1186:
	mov ax, 0x04A2 ; Register AX exploit
	nop

label_1187:
	mov ax, 0x04A3 ; Register AX exploit
	nop

label_1188:
	mov ax, 0x04A4 ; Register AX exploit
	nop

label_1189:
	mov ax, 0x04A5 ; Register AX exploit
	nop

label_1190:
	mov ax, 0x04A6 ; Register AX exploit
	nop

label_1191:
	mov ax, 0x04A7 ; Register AX exploit
	nop

label_1192:
	mov ax, 0x04A8 ; Register AX exploit
	nop

label_1193:
	mov ax, 0x04A9 ; Register AX exploit
	nop

label_1194:
	mov ax, 0x04AA ; Register AX exploit
	nop

label_1195:
	mov ax, 0x04AB ; Register AX exploit
	nop

label_1196:
	mov ax, 0x04AC ; Register AX exploit
	nop

label_1197:
	mov ax, 0x04AD ; Register AX exploit
	nop

label_1198:
	mov ax, 0x04AE ; Register AX exploit
	nop

label_1199:
	mov ax, 0x04AF ; Register AX exploit
	nop

label_1200:
	mov ax, 0x04B0 ; Register AX exploit
	nop

label_1201:
	mov ax, 0x04B1 ; Register AX exploit
	nop

label_1202:
	mov ax, 0x04B2 ; Register AX exploit
	nop

label_1203:
	mov ax, 0x04B3 ; Register AX exploit
	nop

label_1204:
	mov ax, 0x04B4 ; Register AX exploit
	nop

label_1205:
	mov ax, 0x04B5 ; Register AX exploit
	nop

label_1206:
	mov ax, 0x04B6 ; Register AX exploit
	nop

label_1207:
	mov ax, 0x04B7 ; Register AX exploit
	nop

label_1208:
	mov ax, 0x04B8 ; Register AX exploit
	nop

label_1209:
	mov ax, 0x04B9 ; Register AX exploit
	nop

label_1210:
	mov ax, 0x04BA ; Register AX exploit
	nop

label_1211:
	mov ax, 0x04BB ; Register AX exploit
	nop

label_1212:
	mov ax, 0x04BC ; Register AX exploit
	nop

label_1213:
	mov ax, 0x04BD ; Register AX exploit
	nop

label_1214:
	mov ax, 0x04BE ; Register AX exploit
	nop

label_1215:
	mov ax, 0x04BF ; Register AX exploit
	nop

label_1216:
	mov ax, 0x04C0 ; Register AX exploit
	nop

label_1217:
	mov ax, 0x04C1 ; Register AX exploit
	nop

label_1218:
	mov ax, 0x04C2 ; Register AX exploit
	nop

label_1219:
	mov ax, 0x04C3 ; Register AX exploit
	nop

label_1220:
	mov ax, 0x04C4 ; Register AX exploit
	nop

label_1221:
	mov ax, 0x04C5 ; Register AX exploit
	nop

label_1222:
	mov ax, 0x04C6 ; Register AX exploit
	nop

label_1223:
	mov ax, 0x04C7 ; Register AX exploit
	nop

label_1224:
	mov ax, 0x04C8 ; Register AX exploit
	nop

label_1225:
	mov ax, 0x04C9 ; Register AX exploit
	nop

label_1226:
	mov ax, 0x04CA ; Register AX exploit
	nop

label_1227:
	mov ax, 0x04CB ; Register AX exploit
	nop

label_1228:
	mov ax, 0x04CC ; Register AX exploit
	nop

label_1229:
	mov ax, 0x04CD ; Register AX exploit
	nop

label_1230:
	mov ax, 0x04CE ; Register AX exploit
	nop

label_1231:
	mov ax, 0x04CF ; Register AX exploit
	nop

label_1232:
	mov ax, 0x04D0 ; Register AX exploit
	nop

label_1233:
	mov ax, 0x04D1 ; Register AX exploit
	nop

label_1234:
	mov ax, 0x04D2 ; Register AX exploit
	nop

label_1235:
	mov ax, 0x04D3 ; Register AX exploit
	nop

label_1236:
	mov ax, 0x04D4 ; Register AX exploit
	nop

label_1237:
	mov ax, 0x04D5 ; Register AX exploit
	nop

label_1238:
	mov ax, 0x04D6 ; Register AX exploit
	nop

label_1239:
	mov ax, 0x04D7 ; Register AX exploit
	nop

label_1240:
	mov ax, 0x04D8 ; Register AX exploit
	nop

label_1241:
	mov ax, 0x04D9 ; Register AX exploit
	nop

label_1242:
	mov ax, 0x04DA ; Register AX exploit
	nop

label_1243:
	mov ax, 0x04DB ; Register AX exploit
	nop

label_1244:
	mov ax, 0x04DC ; Register AX exploit
	nop

label_1245:
	mov ax, 0x04DD ; Register AX exploit
	nop

label_1246:
	mov ax, 0x04DE ; Register AX exploit
	nop

label_1247:
	mov ax, 0x04DF ; Register AX exploit
	nop

label_1248:
	mov ax, 0x04E0 ; Register AX exploit
	nop

label_1249:
	mov ax, 0x04E1 ; Register AX exploit
	nop

label_1250:
	mov ax, 0x04E2 ; Register AX exploit
	nop

label_1251:
	mov ax, 0x04E3 ; Register AX exploit
	nop

label_1252:
	mov ax, 0x04E4 ; Register AX exploit
	nop

label_1253:
	mov ax, 0x04E5 ; Register AX exploit
	nop

label_1254:
	mov ax, 0x04E6 ; Register AX exploit
	nop

label_1255:
	mov ax, 0x04E7 ; Register AX exploit
	nop

label_1256:
	mov ax, 0x04E8 ; Register AX exploit
	nop

label_1257:
	mov ax, 0x04E9 ; Register AX exploit
	nop

label_1258:
	mov ax, 0x04EA ; Register AX exploit
	nop

label_1259:
	mov ax, 0x04EB ; Register AX exploit
	nop

label_1260:
	mov ax, 0x04EC ; Register AX exploit
	nop

label_1261:
	mov ax, 0x04ED ; Register AX exploit
	nop

label_1262:
	mov ax, 0x04EE ; Register AX exploit
	nop

label_1263:
	mov ax, 0x04EF ; Register AX exploit
	nop

label_1264:
	mov ax, 0x04F0 ; Register AX exploit
	nop

label_1265:
	mov ax, 0x04F1 ; Register AX exploit
	nop

label_1266:
	mov ax, 0x04F2 ; Register AX exploit
	nop

label_1267:
	mov ax, 0x04F3 ; Register AX exploit
	nop

label_1268:
	mov ax, 0x04F4 ; Register AX exploit
	nop

label_1269:
	mov ax, 0x04F5 ; Register AX exploit
	nop

label_1270:
	mov ax, 0x04F6 ; Register AX exploit
	nop

label_1271:
	mov ax, 0x04F7 ; Register AX exploit
	nop

label_1272:
	mov ax, 0x04F8 ; Register AX exploit
	nop

label_1273:
	mov ax, 0x04F9 ; Register AX exploit
	nop

label_1274:
	mov ax, 0x04FA ; Register AX exploit
	nop

label_1275:
	mov ax, 0x04FB ; Register AX exploit
	nop

label_1276:
	mov ax, 0x04FC ; Register AX exploit
	nop

label_1277:
	mov ax, 0x04FD ; Register AX exploit
	nop

label_1278:
	mov ax, 0x04FE ; Register AX exploit
	nop

label_1279:
	mov ax, 0x04FF ; Register AX exploit
	nop

label_1280:
	mov ax, 0x0500 ; Register AX exploit
	nop

label_1281:
	mov ax, 0x0501 ; Register AX exploit
	nop

label_1282:
	mov ax, 0x0502 ; Register AX exploit
	nop

label_1283:
	mov ax, 0x0503 ; Register AX exploit
	nop

label_1284:
	mov ax, 0x0504 ; Register AX exploit
	nop

label_1285:
	mov ax, 0x0505 ; Register AX exploit
	nop

label_1286:
	mov ax, 0x0506 ; Register AX exploit
	nop

label_1287:
	mov ax, 0x0507 ; Register AX exploit
	nop

label_1288:
	mov ax, 0x0508 ; Register AX exploit
	nop

label_1289:
	mov ax, 0x0509 ; Register AX exploit
	nop

label_1290:
	mov ax, 0x050A ; Register AX exploit
	nop

label_1291:
	mov ax, 0x050B ; Register AX exploit
	nop

label_1292:
	mov ax, 0x050C ; Register AX exploit
	nop

label_1293:
	mov ax, 0x050D ; Register AX exploit
	nop

label_1294:
	mov ax, 0x050E ; Register AX exploit
	nop

label_1295:
	mov ax, 0x050F ; Register AX exploit
	nop

label_1296:
	mov ax, 0x0510 ; Register AX exploit
	nop

label_1297:
	mov ax, 0x0511 ; Register AX exploit
	nop

label_1298:
	mov ax, 0x0512 ; Register AX exploit
	nop

label_1299:
	mov ax, 0x0513 ; Register AX exploit
	nop

label_1300:
	mov ax, 0x0514 ; Register AX exploit
	nop

label_1301:
	mov ax, 0x0515 ; Register AX exploit
	nop

label_1302:
	mov ax, 0x0516 ; Register AX exploit
	nop

label_1303:
	mov ax, 0x0517 ; Register AX exploit
	nop

label_1304:
	mov ax, 0x0518 ; Register AX exploit
	nop

label_1305:
	mov ax, 0x0519 ; Register AX exploit
	nop

label_1306:
	mov ax, 0x051A ; Register AX exploit
	nop

label_1307:
	mov ax, 0x051B ; Register AX exploit
	nop

label_1308:
	mov ax, 0x051C ; Register AX exploit
	nop

label_1309:
	mov ax, 0x051D ; Register AX exploit
	nop

label_1310:
	mov ax, 0x051E ; Register AX exploit
	nop

label_1311:
	mov ax, 0x051F ; Register AX exploit
	nop

label_1312:
	mov ax, 0x0520 ; Register AX exploit
	nop

label_1313:
	mov ax, 0x0521 ; Register AX exploit
	nop

label_1314:
	mov ax, 0x0522 ; Register AX exploit
	nop

label_1315:
	mov ax, 0x0523 ; Register AX exploit
	nop

label_1316:
	mov ax, 0x0524 ; Register AX exploit
	nop

label_1317:
	mov ax, 0x0525 ; Register AX exploit
	nop

label_1318:
	mov ax, 0x0526 ; Register AX exploit
	nop

label_1319:
	mov ax, 0x0527 ; Register AX exploit
	nop

label_1320:
	mov ax, 0x0528 ; Register AX exploit
	nop

label_1321:
	mov ax, 0x0529 ; Register AX exploit
	nop

label_1322:
	mov ax, 0x052A ; Register AX exploit
	nop

label_1323:
	mov ax, 0x052B ; Register AX exploit
	nop

label_1324:
	mov ax, 0x052C ; Register AX exploit
	nop

label_1325:
	mov ax, 0x052D ; Register AX exploit
	nop

label_1326:
	mov ax, 0x052E ; Register AX exploit
	nop

label_1327:
	mov ax, 0x052F ; Register AX exploit
	nop

label_1328:
	mov ax, 0x0530 ; Register AX exploit
	nop

label_1329:
	mov ax, 0x0531 ; Register AX exploit
	nop

label_1330:
	mov ax, 0x0532 ; Register AX exploit
	nop

label_1331:
	mov ax, 0x0533 ; Register AX exploit
	nop

label_1332:
	mov ax, 0x0534 ; Register AX exploit
	nop

label_1333:
	mov ax, 0x0535 ; Register AX exploit
	nop

label_1334:
	mov ax, 0x0536 ; Register AX exploit
	nop

label_1335:
	mov ax, 0x0537 ; Register AX exploit
	nop

label_1336:
	mov ax, 0x0538 ; Register AX exploit
	nop

label_1337:
	mov ax, 0x0539 ; Register AX exploit
	nop

label_1338:
	mov ax, 0x053A ; Register AX exploit
	nop

label_1339:
	mov ax, 0x053B ; Register AX exploit
	nop

label_1340:
	mov ax, 0x053C ; Register AX exploit
	nop

label_1341:
	mov ax, 0x053D ; Register AX exploit
	nop

label_1342:
	mov ax, 0x053E ; Register AX exploit
	nop

label_1343:
	mov ax, 0x053F ; Register AX exploit
	nop

label_1344:
	mov ax, 0x0540 ; Register AX exploit
	nop

label_1345:
	mov ax, 0x0541 ; Register AX exploit
	nop

label_1346:
	mov ax, 0x0542 ; Register AX exploit
	nop

label_1347:
	mov ax, 0x0543 ; Register AX exploit
	nop

label_1348:
	mov ax, 0x0544 ; Register AX exploit
	nop

label_1349:
	mov ax, 0x0545 ; Register AX exploit
	nop

label_1350:
	mov ax, 0x0546 ; Register AX exploit
	nop

label_1351:
	mov ax, 0x0547 ; Register AX exploit
	nop

label_1352:
	mov ax, 0x0548 ; Register AX exploit
	nop

label_1353:
	mov ax, 0x0549 ; Register AX exploit
	nop

label_1354:
	mov ax, 0x054A ; Register AX exploit
	nop

label_1355:
	mov ax, 0x054B ; Register AX exploit
	nop

label_1356:
	mov ax, 0x054C ; Register AX exploit
	nop

label_1357:
	mov ax, 0x054D ; Register AX exploit
	nop

label_1358:
	mov ax, 0x054E ; Register AX exploit
	nop

label_1359:
	mov ax, 0x054F ; Register AX exploit
	nop

label_1360:
	mov ax, 0x0550 ; Register AX exploit
	nop

label_1361:
	mov ax, 0x0551 ; Register AX exploit
	nop

label_1362:
	mov ax, 0x0552 ; Register AX exploit
	nop

label_1363:
	mov ax, 0x0553 ; Register AX exploit
	nop

label_1364:
	mov ax, 0x0554 ; Register AX exploit
	nop

label_1365:
	mov ax, 0x0555 ; Register AX exploit
	nop

label_1366:
	mov ax, 0x0556 ; Register AX exploit
	nop

label_1367:
	mov ax, 0x0557 ; Register AX exploit
	nop

label_1368:
	mov ax, 0x0558 ; Register AX exploit
	nop

label_1369:
	mov ax, 0x0559 ; Register AX exploit
	nop

label_1370:
	mov ax, 0x055A ; Register AX exploit
	nop

label_1371:
	mov ax, 0x055B ; Register AX exploit
	nop

label_1372:
	mov ax, 0x055C ; Register AX exploit
	nop

label_1373:
	mov ax, 0x055D ; Register AX exploit
	nop

label_1374:
	mov ax, 0x055E ; Register AX exploit
	nop

label_1375:
	mov ax, 0x055F ; Register AX exploit
	nop

label_1376:
	mov ax, 0x0560 ; Register AX exploit
	nop

label_1377:
	mov ax, 0x0561 ; Register AX exploit
	nop

label_1378:
	mov ax, 0x0562 ; Register AX exploit
	nop

label_1379:
	mov ax, 0x0563 ; Register AX exploit
	nop

label_1380:
	mov ax, 0x0564 ; Register AX exploit
	nop

label_1381:
	mov ax, 0x0565 ; Register AX exploit
	nop

label_1382:
	mov ax, 0x0566 ; Register AX exploit
	nop

label_1383:
	mov ax, 0x0567 ; Register AX exploit
	nop

label_1384:
	mov ax, 0x0568 ; Register AX exploit
	nop

label_1385:
	mov ax, 0x0569 ; Register AX exploit
	nop

label_1386:
	mov ax, 0x056A ; Register AX exploit
	nop

label_1387:
	mov ax, 0x056B ; Register AX exploit
	nop

label_1388:
	mov ax, 0x056C ; Register AX exploit
	nop

label_1389:
	mov ax, 0x056D ; Register AX exploit
	nop

label_1390:
	mov ax, 0x056E ; Register AX exploit
	nop

label_1391:
	mov ax, 0x056F ; Register AX exploit
	nop

label_1392:
	mov ax, 0x0570 ; Register AX exploit
	nop

label_1393:
	mov ax, 0x0571 ; Register AX exploit
	nop

label_1394:
	mov ax, 0x0572 ; Register AX exploit
	nop

label_1395:
	mov ax, 0x0573 ; Register AX exploit
	nop

label_1396:
	mov ax, 0x0574 ; Register AX exploit
	nop

label_1397:
	mov ax, 0x0575 ; Register AX exploit
	nop

label_1398:
	mov ax, 0x0576 ; Register AX exploit
	nop

label_1399:
	mov ax, 0x0577 ; Register AX exploit
	nop

label_1400:
	mov ax, 0x0578 ; Register AX exploit
	nop

label_1401:
	mov ax, 0x0579 ; Register AX exploit
	nop

label_1402:
	mov ax, 0x057A ; Register AX exploit
	nop

label_1403:
	mov ax, 0x057B ; Register AX exploit
	nop

label_1404:
	mov ax, 0x057C ; Register AX exploit
	nop

label_1405:
	mov ax, 0x057D ; Register AX exploit
	nop

label_1406:
	mov ax, 0x057E ; Register AX exploit
	nop

label_1407:
	mov ax, 0x057F ; Register AX exploit
	nop

label_1408:
	mov ax, 0x0580 ; Register AX exploit
	nop

label_1409:
	mov ax, 0x0581 ; Register AX exploit
	nop

label_1410:
	mov ax, 0x0582 ; Register AX exploit
	nop

label_1411:
	mov ax, 0x0583 ; Register AX exploit
	nop

label_1412:
	mov ax, 0x0584 ; Register AX exploit
	nop

label_1413:
	mov ax, 0x0585 ; Register AX exploit
	nop

label_1414:
	mov ax, 0x0586 ; Register AX exploit
	nop

label_1415:
	mov ax, 0x0587 ; Register AX exploit
	nop

label_1416:
	mov ax, 0x0588 ; Register AX exploit
	nop

label_1417:
	mov ax, 0x0589 ; Register AX exploit
	nop

label_1418:
	mov ax, 0x058A ; Register AX exploit
	nop

label_1419:
	mov ax, 0x058B ; Register AX exploit
	nop

label_1420:
	mov ax, 0x058C ; Register AX exploit
	nop

label_1421:
	mov ax, 0x058D ; Register AX exploit
	nop

label_1422:
	mov ax, 0x058E ; Register AX exploit
	nop

label_1423:
	mov ax, 0x058F ; Register AX exploit
	nop

label_1424:
	mov ax, 0x0590 ; Register AX exploit
	nop

label_1425:
	mov ax, 0x0591 ; Register AX exploit
	nop

label_1426:
	mov ax, 0x0592 ; Register AX exploit
	nop

label_1427:
	mov ax, 0x0593 ; Register AX exploit
	nop

label_1428:
	mov ax, 0x0594 ; Register AX exploit
	nop

label_1429:
	mov ax, 0x0595 ; Register AX exploit
	nop

label_1430:
	mov ax, 0x0596 ; Register AX exploit
	nop

label_1431:
	mov ax, 0x0597 ; Register AX exploit
	nop

label_1432:
	mov ax, 0x0598 ; Register AX exploit
	nop

label_1433:
	mov ax, 0x0599 ; Register AX exploit
	nop

label_1434:
	mov ax, 0x059A ; Register AX exploit
	nop

label_1435:
	mov ax, 0x059B ; Register AX exploit
	nop

label_1436:
	mov ax, 0x059C ; Register AX exploit
	nop

label_1437:
	mov ax, 0x059D ; Register AX exploit
	nop

label_1438:
	mov ax, 0x059E ; Register AX exploit
	nop

label_1439:
	mov ax, 0x059F ; Register AX exploit
	nop

label_1440:
	mov ax, 0x05A0 ; Register AX exploit
	nop

label_1441:
	mov ax, 0x05A1 ; Register AX exploit
	nop

label_1442:
	mov ax, 0x05A2 ; Register AX exploit
	nop

label_1443:
	mov ax, 0x05A3 ; Register AX exploit
	nop

label_1444:
	mov ax, 0x05A4 ; Register AX exploit
	nop

label_1445:
	mov ax, 0x05A5 ; Register AX exploit
	nop

label_1446:
	mov ax, 0x05A6 ; Register AX exploit
	nop

label_1447:
	mov ax, 0x05A7 ; Register AX exploit
	nop

label_1448:
	mov ax, 0x05A8 ; Register AX exploit
	nop

label_1449:
	mov ax, 0x05A9 ; Register AX exploit
	nop

label_1450:
	mov ax, 0x05AA ; Register AX exploit
	nop

label_1451:
	mov ax, 0x05AB ; Register AX exploit
	nop

label_1452:
	mov ax, 0x05AC ; Register AX exploit
	nop

label_1453:
	mov ax, 0x05AD ; Register AX exploit
	nop

label_1454:
	mov ax, 0x05AE ; Register AX exploit
	nop

label_1455:
	mov ax, 0x05AF ; Register AX exploit
	nop

label_1456:
	mov ax, 0x05B0 ; Register AX exploit
	nop

label_1457:
	mov ax, 0x05B1 ; Register AX exploit
	nop

label_1458:
	mov ax, 0x05B2 ; Register AX exploit
	nop

label_1459:
	mov ax, 0x05B3 ; Register AX exploit
	nop

label_1460:
	mov ax, 0x05B4 ; Register AX exploit
	nop

label_1461:
	mov ax, 0x05B5 ; Register AX exploit
	nop

label_1462:
	mov ax, 0x05B6 ; Register AX exploit
	nop

label_1463:
	mov ax, 0x05B7 ; Register AX exploit
	nop

label_1464:
	mov ax, 0x05B8 ; Register AX exploit
	nop

label_1465:
	mov ax, 0x05B9 ; Register AX exploit
	nop

label_1466:
	mov ax, 0x05BA ; Register AX exploit
	nop

label_1467:
	mov ax, 0x05BB ; Register AX exploit
	nop

label_1468:
	mov ax, 0x05BC ; Register AX exploit
	nop

label_1469:
	mov ax, 0x05BD ; Register AX exploit
	nop

label_1470:
	mov ax, 0x05BE ; Register AX exploit
	nop

label_1471:
	mov ax, 0x05BF ; Register AX exploit
	nop

label_1472:
	mov ax, 0x05C0 ; Register AX exploit
	nop

label_1473:
	mov ax, 0x05C1 ; Register AX exploit
	nop

label_1474:
	mov ax, 0x05C2 ; Register AX exploit
	nop

label_1475:
	mov ax, 0x05C3 ; Register AX exploit
	nop

label_1476:
	mov ax, 0x05C4 ; Register AX exploit
	nop

label_1477:
	mov ax, 0x05C5 ; Register AX exploit
	nop

label_1478:
	mov ax, 0x05C6 ; Register AX exploit
	nop

label_1479:
	mov ax, 0x05C7 ; Register AX exploit
	nop

label_1480:
	mov ax, 0x05C8 ; Register AX exploit
	nop

label_1481:
	mov ax, 0x05C9 ; Register AX exploit
	nop

label_1482:
	mov ax, 0x05CA ; Register AX exploit
	nop

label_1483:
	mov ax, 0x05CB ; Register AX exploit
	nop

label_1484:
	mov ax, 0x05CC ; Register AX exploit
	nop

label_1485:
	mov ax, 0x05CD ; Register AX exploit
	nop

label_1486:
	mov ax, 0x05CE ; Register AX exploit
	nop

label_1487:
	mov ax, 0x05CF ; Register AX exploit
	nop

label_1488:
	mov ax, 0x05D0 ; Register AX exploit
	nop

label_1489:
	mov ax, 0x05D1 ; Register AX exploit
	nop

label_1490:
	mov ax, 0x05D2 ; Register AX exploit
	nop

label_1491:
	mov ax, 0x05D3 ; Register AX exploit
	nop

label_1492:
	mov ax, 0x05D4 ; Register AX exploit
	nop

label_1493:
	mov ax, 0x05D5 ; Register AX exploit
	nop

label_1494:
	mov ax, 0x05D6 ; Register AX exploit
	nop

label_1495:
	mov ax, 0x05D7 ; Register AX exploit
	nop

label_1496:
	mov ax, 0x05D8 ; Register AX exploit
	nop

label_1497:
	mov ax, 0x05D9 ; Register AX exploit
	nop

label_1498:
	mov ax, 0x05DA ; Register AX exploit
	nop

label_1499:
	mov ax, 0x05DB ; Register AX exploit
	nop

label_1500:
	mov ax, 0x05DC ; Register AX exploit
	nop

label_1501:
	mov ax, 0x05DD ; Register AX exploit
	nop

label_1502:
	mov ax, 0x05DE ; Register AX exploit
	nop

label_1503:
	mov ax, 0x05DF ; Register AX exploit
	nop

label_1504:
	mov ax, 0x05E0 ; Register AX exploit
	nop

label_1505:
	mov ax, 0x05E1 ; Register AX exploit
	nop

label_1506:
	mov ax, 0x05E2 ; Register AX exploit
	nop

label_1507:
	mov ax, 0x05E3 ; Register AX exploit
	nop

label_1508:
	mov ax, 0x05E4 ; Register AX exploit
	nop

label_1509:
	mov ax, 0x05E5 ; Register AX exploit
	nop

label_1510:
	mov ax, 0x05E6 ; Register AX exploit
	nop

label_1511:
	mov ax, 0x05E7 ; Register AX exploit
	nop

label_1512:
	mov ax, 0x05E8 ; Register AX exploit
	nop

label_1513:
	mov ax, 0x05E9 ; Register AX exploit
	nop

label_1514:
	mov ax, 0x05EA ; Register AX exploit
	nop

label_1515:
	mov ax, 0x05EB ; Register AX exploit
	nop

label_1516:
	mov ax, 0x05EC ; Register AX exploit
	nop

label_1517:
	mov ax, 0x05ED ; Register AX exploit
	nop

label_1518:
	mov ax, 0x05EE ; Register AX exploit
	nop

label_1519:
	mov ax, 0x05EF ; Register AX exploit
	nop

label_1520:
	mov ax, 0x05F0 ; Register AX exploit
	nop

label_1521:
	mov ax, 0x05F1 ; Register AX exploit
	nop

label_1522:
	mov ax, 0x05F2 ; Register AX exploit
	nop

label_1523:
	mov ax, 0x05F3 ; Register AX exploit
	nop

label_1524:
	mov ax, 0x05F4 ; Register AX exploit
	nop

label_1525:
	mov ax, 0x05F5 ; Register AX exploit
	nop

label_1526:
	mov ax, 0x05F6 ; Register AX exploit
	nop

label_1527:
	mov ax, 0x05F7 ; Register AX exploit
	nop

label_1528:
	mov ax, 0x05F8 ; Register AX exploit
	nop

label_1529:
	mov ax, 0x05F9 ; Register AX exploit
	nop

label_1530:
	mov ax, 0x05FA ; Register AX exploit
	nop

label_1531:
	mov ax, 0x05FB ; Register AX exploit
	nop

label_1532:
	mov ax, 0x05FC ; Register AX exploit
	nop

label_1533:
	mov ax, 0x05FD ; Register AX exploit
	nop

label_1534:
	mov ax, 0x05FE ; Register AX exploit
	nop

label_1535:
	mov ax, 0x05FF ; Register AX exploit
	nop

label_1536:
	mov ax, 0x0600 ; Register AX exploit
	nop

label_1537:
	mov ax, 0x0601 ; Register AX exploit
	nop

label_1538:
	mov ax, 0x0602 ; Register AX exploit
	nop

label_1539:
	mov ax, 0x0603 ; Register AX exploit
	nop

label_1540:
	mov ax, 0x0604 ; Register AX exploit
	nop

label_1541:
	mov ax, 0x0605 ; Register AX exploit
	nop

label_1542:
	mov ax, 0x0606 ; Register AX exploit
	nop

label_1543:
	mov ax, 0x0607 ; Register AX exploit
	nop

label_1544:
	mov ax, 0x0608 ; Register AX exploit
	nop

label_1545:
	mov ax, 0x0609 ; Register AX exploit
	nop

label_1546:
	mov ax, 0x060A ; Register AX exploit
	nop

label_1547:
	mov ax, 0x060B ; Register AX exploit
	nop

label_1548:
	mov ax, 0x060C ; Register AX exploit
	nop

label_1549:
	mov ax, 0x060D ; Register AX exploit
	nop

label_1550:
	mov ax, 0x060E ; Register AX exploit
	nop

label_1551:
	mov ax, 0x060F ; Register AX exploit
	nop

label_1552:
	mov ax, 0x0610 ; Register AX exploit
	nop

label_1553:
	mov ax, 0x0611 ; Register AX exploit
	nop

label_1554:
	mov ax, 0x0612 ; Register AX exploit
	nop

label_1555:
	mov ax, 0x0613 ; Register AX exploit
	nop

label_1556:
	mov ax, 0x0614 ; Register AX exploit
	nop

label_1557:
	mov ax, 0x0615 ; Register AX exploit
	nop

label_1558:
	mov ax, 0x0616 ; Register AX exploit
	nop

label_1559:
	mov ax, 0x0617 ; Register AX exploit
	nop

label_1560:
	mov ax, 0x0618 ; Register AX exploit
	nop

label_1561:
	mov ax, 0x0619 ; Register AX exploit
	nop

label_1562:
	mov ax, 0x061A ; Register AX exploit
	nop

label_1563:
	mov ax, 0x061B ; Register AX exploit
	nop

label_1564:
	mov ax, 0x061C ; Register AX exploit
	nop

label_1565:
	mov ax, 0x061D ; Register AX exploit
	nop

label_1566:
	mov ax, 0x061E ; Register AX exploit
	nop

label_1567:
	mov ax, 0x061F ; Register AX exploit
	nop

label_1568:
	mov ax, 0x0620 ; Register AX exploit
	nop

label_1569:
	mov ax, 0x0621 ; Register AX exploit
	nop

label_1570:
	mov ax, 0x0622 ; Register AX exploit
	nop

label_1571:
	mov ax, 0x0623 ; Register AX exploit
	nop

label_1572:
	mov ax, 0x0624 ; Register AX exploit
	nop

label_1573:
	mov ax, 0x0625 ; Register AX exploit
	nop

label_1574:
	mov ax, 0x0626 ; Register AX exploit
	nop

label_1575:
	mov ax, 0x0627 ; Register AX exploit
	nop

label_1576:
	mov ax, 0x0628 ; Register AX exploit
	nop

label_1577:
	mov ax, 0x0629 ; Register AX exploit
	nop

label_1578:
	mov ax, 0x062A ; Register AX exploit
	nop

label_1579:
	mov ax, 0x062B ; Register AX exploit
	nop

label_1580:
	mov ax, 0x062C ; Register AX exploit
	nop

label_1581:
	mov ax, 0x062D ; Register AX exploit
	nop

label_1582:
	mov ax, 0x062E ; Register AX exploit
	nop

label_1583:
	mov ax, 0x062F ; Register AX exploit
	nop

label_1584:
	mov ax, 0x0630 ; Register AX exploit
	nop

label_1585:
	mov ax, 0x0631 ; Register AX exploit
	nop

label_1586:
	mov ax, 0x0632 ; Register AX exploit
	nop

label_1587:
	mov ax, 0x0633 ; Register AX exploit
	nop

label_1588:
	mov ax, 0x0634 ; Register AX exploit
	nop

label_1589:
	mov ax, 0x0635 ; Register AX exploit
	nop

label_1590:
	mov ax, 0x0636 ; Register AX exploit
	nop

label_1591:
	mov ax, 0x0637 ; Register AX exploit
	nop

label_1592:
	mov ax, 0x0638 ; Register AX exploit
	nop

label_1593:
	mov ax, 0x0639 ; Register AX exploit
	nop

label_1594:
	mov ax, 0x063A ; Register AX exploit
	nop

label_1595:
	mov ax, 0x063B ; Register AX exploit
	nop

label_1596:
	mov ax, 0x063C ; Register AX exploit
	nop

label_1597:
	mov ax, 0x063D ; Register AX exploit
	nop

label_1598:
	mov ax, 0x063E ; Register AX exploit
	nop

label_1599:
	mov ax, 0x063F ; Register AX exploit
	nop

label_1600:
	mov ax, 0x0640 ; Register AX exploit
	nop

label_1601:
	mov ax, 0x0641 ; Register AX exploit
	nop

label_1602:
	mov ax, 0x0642 ; Register AX exploit
	nop

label_1603:
	mov ax, 0x0643 ; Register AX exploit
	nop

label_1604:
	mov ax, 0x0644 ; Register AX exploit
	nop

label_1605:
	mov ax, 0x0645 ; Register AX exploit
	nop

label_1606:
	mov ax, 0x0646 ; Register AX exploit
	nop

label_1607:
	mov ax, 0x0647 ; Register AX exploit
	nop

label_1608:
	mov ax, 0x0648 ; Register AX exploit
	nop

label_1609:
	mov ax, 0x0649 ; Register AX exploit
	nop

label_1610:
	mov ax, 0x064A ; Register AX exploit
	nop

label_1611:
	mov ax, 0x064B ; Register AX exploit
	nop

label_1612:
	mov ax, 0x064C ; Register AX exploit
	nop

label_1613:
	mov ax, 0x064D ; Register AX exploit
	nop

label_1614:
	mov ax, 0x064E ; Register AX exploit
	nop

label_1615:
	mov ax, 0x064F ; Register AX exploit
	nop

label_1616:
	mov ax, 0x0650 ; Register AX exploit
	nop

label_1617:
	mov ax, 0x0651 ; Register AX exploit
	nop

label_1618:
	mov ax, 0x0652 ; Register AX exploit
	nop

label_1619:
	mov ax, 0x0653 ; Register AX exploit
	nop

label_1620:
	mov ax, 0x0654 ; Register AX exploit
	nop

label_1621:
	mov ax, 0x0655 ; Register AX exploit
	nop

label_1622:
	mov ax, 0x0656 ; Register AX exploit
	nop

label_1623:
	mov ax, 0x0657 ; Register AX exploit
	nop

label_1624:
	mov ax, 0x0658 ; Register AX exploit
	nop

label_1625:
	mov ax, 0x0659 ; Register AX exploit
	nop

label_1626:
	mov ax, 0x065A ; Register AX exploit
	nop

label_1627:
	mov ax, 0x065B ; Register AX exploit
	nop

label_1628:
	mov ax, 0x065C ; Register AX exploit
	nop

label_1629:
	mov ax, 0x065D ; Register AX exploit
	nop

label_1630:
	mov ax, 0x065E ; Register AX exploit
	nop

label_1631:
	mov ax, 0x065F ; Register AX exploit
	nop

label_1632:
	mov ax, 0x0660 ; Register AX exploit
	nop

label_1633:
	mov ax, 0x0661 ; Register AX exploit
	nop

label_1634:
	mov ax, 0x0662 ; Register AX exploit
	nop

label_1635:
	mov ax, 0x0663 ; Register AX exploit
	nop

label_1636:
	mov ax, 0x0664 ; Register AX exploit
	nop

label_1637:
	mov ax, 0x0665 ; Register AX exploit
	nop

label_1638:
	mov ax, 0x0666 ; Register AX exploit
	nop

label_1639:
	mov ax, 0x0667 ; Register AX exploit
	nop

label_1640:
	mov ax, 0x0668 ; Register AX exploit
	nop

label_1641:
	mov ax, 0x0669 ; Register AX exploit
	nop

label_1642:
	mov ax, 0x066A ; Register AX exploit
	nop

label_1643:
	mov ax, 0x066B ; Register AX exploit
	nop

label_1644:
	mov ax, 0x066C ; Register AX exploit
	nop

label_1645:
	mov ax, 0x066D ; Register AX exploit
	nop

label_1646:
	mov ax, 0x066E ; Register AX exploit
	nop

label_1647:
	mov ax, 0x066F ; Register AX exploit
	nop

label_1648:
	mov ax, 0x0670 ; Register AX exploit
	nop

label_1649:
	mov ax, 0x0671 ; Register AX exploit
	nop

label_1650:
	mov ax, 0x0672 ; Register AX exploit
	nop

label_1651:
	mov ax, 0x0673 ; Register AX exploit
	nop

label_1652:
	mov ax, 0x0674 ; Register AX exploit
	nop

label_1653:
	mov ax, 0x0675 ; Register AX exploit
	nop

label_1654:
	mov ax, 0x0676 ; Register AX exploit
	nop

label_1655:
	mov ax, 0x0677 ; Register AX exploit
	nop

label_1656:
	mov ax, 0x0678 ; Register AX exploit
	nop

label_1657:
	mov ax, 0x0679 ; Register AX exploit
	nop

label_1658:
	mov ax, 0x067A ; Register AX exploit
	nop

label_1659:
	mov ax, 0x067B ; Register AX exploit
	nop

label_1660:
	mov ax, 0x067C ; Register AX exploit
	nop

label_1661:
	mov ax, 0x067D ; Register AX exploit
	nop

label_1662:
	mov ax, 0x067E ; Register AX exploit
	nop

label_1663:
	mov ax, 0x067F ; Register AX exploit
	nop

label_1664:
	mov ax, 0x0680 ; Register AX exploit
	nop

label_1665:
	mov ax, 0x0681 ; Register AX exploit
	nop

label_1666:
	mov ax, 0x0682 ; Register AX exploit
	nop

label_1667:
	mov ax, 0x0683 ; Register AX exploit
	nop

label_1668:
	mov ax, 0x0684 ; Register AX exploit
	nop

label_1669:
	mov ax, 0x0685 ; Register AX exploit
	nop

label_1670:
	mov ax, 0x0686 ; Register AX exploit
	nop

label_1671:
	mov ax, 0x0687 ; Register AX exploit
	nop

label_1672:
	mov ax, 0x0688 ; Register AX exploit
	nop

label_1673:
	mov ax, 0x0689 ; Register AX exploit
	nop

label_1674:
	mov ax, 0x068A ; Register AX exploit
	nop

label_1675:
	mov ax, 0x068B ; Register AX exploit
	nop

label_1676:
	mov ax, 0x068C ; Register AX exploit
	nop

label_1677:
	mov ax, 0x068D ; Register AX exploit
	nop

label_1678:
	mov ax, 0x068E ; Register AX exploit
	nop

label_1679:
	mov ax, 0x068F ; Register AX exploit
	nop

label_1680:
	mov ax, 0x0690 ; Register AX exploit
	nop

label_1681:
	mov ax, 0x0691 ; Register AX exploit
	nop

label_1682:
	mov ax, 0x0692 ; Register AX exploit
	nop

label_1683:
	mov ax, 0x0693 ; Register AX exploit
	nop

label_1684:
	mov ax, 0x0694 ; Register AX exploit
	nop

label_1685:
	mov ax, 0x0695 ; Register AX exploit
	nop

label_1686:
	mov ax, 0x0696 ; Register AX exploit
	nop

label_1687:
	mov ax, 0x0697 ; Register AX exploit
	nop

label_1688:
	mov ax, 0x0698 ; Register AX exploit
	nop

label_1689:
	mov ax, 0x0699 ; Register AX exploit
	nop

label_1690:
	mov ax, 0x069A ; Register AX exploit
	nop

label_1691:
	mov ax, 0x069B ; Register AX exploit
	nop

label_1692:
	mov ax, 0x069C ; Register AX exploit
	nop

label_1693:
	mov ax, 0x069D ; Register AX exploit
	nop

label_1694:
	mov ax, 0x069E ; Register AX exploit
	nop

label_1695:
	mov ax, 0x069F ; Register AX exploit
	nop

label_1696:
	mov ax, 0x06A0 ; Register AX exploit
	nop

label_1697:
	mov ax, 0x06A1 ; Register AX exploit
	nop

label_1698:
	mov ax, 0x06A2 ; Register AX exploit
	nop

label_1699:
	mov ax, 0x06A3 ; Register AX exploit
	nop

label_1700:
	mov ax, 0x06A4 ; Register AX exploit
	nop

label_1701:
	mov ax, 0x06A5 ; Register AX exploit
	nop

label_1702:
	mov ax, 0x06A6 ; Register AX exploit
	nop

label_1703:
	mov ax, 0x06A7 ; Register AX exploit
	nop

label_1704:
	mov ax, 0x06A8 ; Register AX exploit
	nop

label_1705:
	mov ax, 0x06A9 ; Register AX exploit
	nop

label_1706:
	mov ax, 0x06AA ; Register AX exploit
	nop

label_1707:
	mov ax, 0x06AB ; Register AX exploit
	nop

label_1708:
	mov ax, 0x06AC ; Register AX exploit
	nop

label_1709:
	mov ax, 0x06AD ; Register AX exploit
	nop

label_1710:
	mov ax, 0x06AE ; Register AX exploit
	nop

label_1711:
	mov ax, 0x06AF ; Register AX exploit
	nop

label_1712:
	mov ax, 0x06B0 ; Register AX exploit
	nop

label_1713:
	mov ax, 0x06B1 ; Register AX exploit
	nop

label_1714:
	mov ax, 0x06B2 ; Register AX exploit
	nop

label_1715:
	mov ax, 0x06B3 ; Register AX exploit
	nop

label_1716:
	mov ax, 0x06B4 ; Register AX exploit
	nop

label_1717:
	mov ax, 0x06B5 ; Register AX exploit
	nop

label_1718:
	mov ax, 0x06B6 ; Register AX exploit
	nop

label_1719:
	mov ax, 0x06B7 ; Register AX exploit
	nop

label_1720:
	mov ax, 0x06B8 ; Register AX exploit
	nop

label_1721:
	mov ax, 0x06B9 ; Register AX exploit
	nop

label_1722:
	mov ax, 0x06BA ; Register AX exploit
	nop

label_1723:
	mov ax, 0x06BB ; Register AX exploit
	nop

label_1724:
	mov ax, 0x06BC ; Register AX exploit
	nop

label_1725:
	mov ax, 0x06BD ; Register AX exploit
	nop

label_1726:
	mov ax, 0x06BE ; Register AX exploit
	nop

label_1727:
	mov ax, 0x06BF ; Register AX exploit
	nop

label_1728:
	mov ax, 0x06C0 ; Register AX exploit
	nop

label_1729:
	mov ax, 0x06C1 ; Register AX exploit
	nop

label_1730:
	mov ax, 0x06C2 ; Register AX exploit
	nop

label_1731:
	mov ax, 0x06C3 ; Register AX exploit
	nop

label_1732:
	mov ax, 0x06C4 ; Register AX exploit
	nop

label_1733:
	mov ax, 0x06C5 ; Register AX exploit
	nop

label_1734:
	mov ax, 0x06C6 ; Register AX exploit
	nop

label_1735:
	mov ax, 0x06C7 ; Register AX exploit
	nop

label_1736:
	mov ax, 0x06C8 ; Register AX exploit
	nop

label_1737:
	mov ax, 0x06C9 ; Register AX exploit
	nop

label_1738:
	mov ax, 0x06CA ; Register AX exploit
	nop

label_1739:
	mov ax, 0x06CB ; Register AX exploit
	nop

label_1740:
	mov ax, 0x06CC ; Register AX exploit
	nop

label_1741:
	mov ax, 0x06CD ; Register AX exploit
	nop

label_1742:
	mov ax, 0x06CE ; Register AX exploit
	nop

label_1743:
	mov ax, 0x06CF ; Register AX exploit
	nop

label_1744:
	mov ax, 0x06D0 ; Register AX exploit
	nop

label_1745:
	mov ax, 0x06D1 ; Register AX exploit
	nop

label_1746:
	mov ax, 0x06D2 ; Register AX exploit
	nop

label_1747:
	mov ax, 0x06D3 ; Register AX exploit
	nop

label_1748:
	mov ax, 0x06D4 ; Register AX exploit
	nop

label_1749:
	mov ax, 0x06D5 ; Register AX exploit
	nop

label_1750:
	mov ax, 0x06D6 ; Register AX exploit
	nop

label_1751:
	mov ax, 0x06D7 ; Register AX exploit
	nop

label_1752:
	mov ax, 0x06D8 ; Register AX exploit
	nop

label_1753:
	mov ax, 0x06D9 ; Register AX exploit
	nop

label_1754:
	mov ax, 0x06DA ; Register AX exploit
	nop

label_1755:
	mov ax, 0x06DB ; Register AX exploit
	nop

label_1756:
	mov ax, 0x06DC ; Register AX exploit
	nop

label_1757:
	mov ax, 0x06DD ; Register AX exploit
	nop

label_1758:
	mov ax, 0x06DE ; Register AX exploit
	nop

label_1759:
	mov ax, 0x06DF ; Register AX exploit
	nop

label_1760:
	mov ax, 0x06E0 ; Register AX exploit
	nop

label_1761:
	mov ax, 0x06E1 ; Register AX exploit
	nop

label_1762:
	mov ax, 0x06E2 ; Register AX exploit
	nop

label_1763:
	mov ax, 0x06E3 ; Register AX exploit
	nop

label_1764:
	mov ax, 0x06E4 ; Register AX exploit
	nop

label_1765:
	mov ax, 0x06E5 ; Register AX exploit
	nop

label_1766:
	mov ax, 0x06E6 ; Register AX exploit
	nop

label_1767:
	mov ax, 0x06E7 ; Register AX exploit
	nop

label_1768:
	mov ax, 0x06E8 ; Register AX exploit
	nop

label_1769:
	mov ax, 0x06E9 ; Register AX exploit
	nop

label_1770:
	mov ax, 0x06EA ; Register AX exploit
	nop

label_1771:
	mov ax, 0x06EB ; Register AX exploit
	nop

label_1772:
	mov ax, 0x06EC ; Register AX exploit
	nop

label_1773:
	mov ax, 0x06ED ; Register AX exploit
	nop

label_1774:
	mov ax, 0x06EE ; Register AX exploit
	nop

label_1775:
	mov ax, 0x06EF ; Register AX exploit
	nop

label_1776:
	mov ax, 0x06F0 ; Register AX exploit
	nop

label_1777:
	mov ax, 0x06F1 ; Register AX exploit
	nop

label_1778:
	mov ax, 0x06F2 ; Register AX exploit
	nop

label_1779:
	mov ax, 0x06F3 ; Register AX exploit
	nop

label_1780:
	mov ax, 0x06F4 ; Register AX exploit
	nop

label_1781:
	mov ax, 0x06F5 ; Register AX exploit
	nop

label_1782:
	mov ax, 0x06F6 ; Register AX exploit
	nop

label_1783:
	mov ax, 0x06F7 ; Register AX exploit
	nop

label_1784:
	mov ax, 0x06F8 ; Register AX exploit
	nop

label_1785:
	mov ax, 0x06F9 ; Register AX exploit
	nop

label_1786:
	mov ax, 0x06FA ; Register AX exploit
	nop

label_1787:
	mov ax, 0x06FB ; Register AX exploit
	nop

label_1788:
	mov ax, 0x06FC ; Register AX exploit
	nop

label_1789:
	mov ax, 0x06FD ; Register AX exploit
	nop

label_1790:
	mov ax, 0x06FE ; Register AX exploit
	nop

label_1791:
	mov ax, 0x06FF ; Register AX exploit
	nop

label_1792:
	mov ax, 0x0700 ; Register AX exploit
	nop

label_1793:
	mov ax, 0x0701 ; Register AX exploit
	nop

label_1794:
	mov ax, 0x0702 ; Register AX exploit
	nop

label_1795:
	mov ax, 0x0703 ; Register AX exploit
	nop

label_1796:
	mov ax, 0x0704 ; Register AX exploit
	nop

label_1797:
	mov ax, 0x0705 ; Register AX exploit
	nop

label_1798:
	mov ax, 0x0706 ; Register AX exploit
	nop

label_1799:
	mov ax, 0x0707 ; Register AX exploit
	nop

label_1800:
	mov ax, 0x0708 ; Register AX exploit
	nop

label_1801:
	mov ax, 0x0709 ; Register AX exploit
	nop

label_1802:
	mov ax, 0x070A ; Register AX exploit
	nop

label_1803:
	mov ax, 0x070B ; Register AX exploit
	nop

label_1804:
	mov ax, 0x070C ; Register AX exploit
	nop

label_1805:
	mov ax, 0x070D ; Register AX exploit
	nop

label_1806:
	mov ax, 0x070E ; Register AX exploit
	nop

label_1807:
	mov ax, 0x070F ; Register AX exploit
	nop

label_1808:
	mov ax, 0x0710 ; Register AX exploit
	nop

label_1809:
	mov ax, 0x0711 ; Register AX exploit
	nop

label_1810:
	mov ax, 0x0712 ; Register AX exploit
	nop

label_1811:
	mov ax, 0x0713 ; Register AX exploit
	nop

label_1812:
	mov ax, 0x0714 ; Register AX exploit
	nop

label_1813:
	mov ax, 0x0715 ; Register AX exploit
	nop

label_1814:
	mov ax, 0x0716 ; Register AX exploit
	nop

label_1815:
	mov ax, 0x0717 ; Register AX exploit
	nop

label_1816:
	mov ax, 0x0718 ; Register AX exploit
	nop

label_1817:
	mov ax, 0x0719 ; Register AX exploit
	nop

label_1818:
	mov ax, 0x071A ; Register AX exploit
	nop

label_1819:
	mov ax, 0x071B ; Register AX exploit
	nop

label_1820:
	mov ax, 0x071C ; Register AX exploit
	nop

label_1821:
	mov ax, 0x071D ; Register AX exploit
	nop

label_1822:
	mov ax, 0x071E ; Register AX exploit
	nop

label_1823:
	mov ax, 0x071F ; Register AX exploit
	nop

label_1824:
	mov ax, 0x0720 ; Register AX exploit
	nop

label_1825:
	mov ax, 0x0721 ; Register AX exploit
	nop

label_1826:
	mov ax, 0x0722 ; Register AX exploit
	nop

label_1827:
	mov ax, 0x0723 ; Register AX exploit
	nop

label_1828:
	mov ax, 0x0724 ; Register AX exploit
	nop

label_1829:
	mov ax, 0x0725 ; Register AX exploit
	nop

label_1830:
	mov ax, 0x0726 ; Register AX exploit
	nop

label_1831:
	mov ax, 0x0727 ; Register AX exploit
	nop

label_1832:
	mov ax, 0x0728 ; Register AX exploit
	nop

label_1833:
	mov ax, 0x0729 ; Register AX exploit
	nop

label_1834:
	mov ax, 0x072A ; Register AX exploit
	nop

label_1835:
	mov ax, 0x072B ; Register AX exploit
	nop

label_1836:
	mov ax, 0x072C ; Register AX exploit
	nop

label_1837:
	mov ax, 0x072D ; Register AX exploit
	nop

label_1838:
	mov ax, 0x072E ; Register AX exploit
	nop

label_1839:
	mov ax, 0x072F ; Register AX exploit
	nop

label_1840:
	mov ax, 0x0730 ; Register AX exploit
	nop

label_1841:
	mov ax, 0x0731 ; Register AX exploit
	nop

label_1842:
	mov ax, 0x0732 ; Register AX exploit
	nop

label_1843:
	mov ax, 0x0733 ; Register AX exploit
	nop

label_1844:
	mov ax, 0x0734 ; Register AX exploit
	nop

label_1845:
	mov ax, 0x0735 ; Register AX exploit
	nop

label_1846:
	mov ax, 0x0736 ; Register AX exploit
	nop

label_1847:
	mov ax, 0x0737 ; Register AX exploit
	nop

label_1848:
	mov ax, 0x0738 ; Register AX exploit
	nop

label_1849:
	mov ax, 0x0739 ; Register AX exploit
	nop

label_1850:
	mov ax, 0x073A ; Register AX exploit
	nop

label_1851:
	mov ax, 0x073B ; Register AX exploit
	nop

label_1852:
	mov ax, 0x073C ; Register AX exploit
	nop

label_1853:
	mov ax, 0x073D ; Register AX exploit
	nop

label_1854:
	mov ax, 0x073E ; Register AX exploit
	nop

label_1855:
	mov ax, 0x073F ; Register AX exploit
	nop

label_1856:
	mov ax, 0x0740 ; Register AX exploit
	nop

label_1857:
	mov ax, 0x0741 ; Register AX exploit
	nop

label_1858:
	mov ax, 0x0742 ; Register AX exploit
	nop

label_1859:
	mov ax, 0x0743 ; Register AX exploit
	nop

label_1860:
	mov ax, 0x0744 ; Register AX exploit
	nop

label_1861:
	mov ax, 0x0745 ; Register AX exploit
	nop

label_1862:
	mov ax, 0x0746 ; Register AX exploit
	nop

label_1863:
	mov ax, 0x0747 ; Register AX exploit
	nop

label_1864:
	mov ax, 0x0748 ; Register AX exploit
	nop

label_1865:
	mov ax, 0x0749 ; Register AX exploit
	nop

label_1866:
	mov ax, 0x074A ; Register AX exploit
	nop

label_1867:
	mov ax, 0x074B ; Register AX exploit
	nop

label_1868:
	mov ax, 0x074C ; Register AX exploit
	nop

label_1869:
	mov ax, 0x074D ; Register AX exploit
	nop

label_1870:
	mov ax, 0x074E ; Register AX exploit
	nop

label_1871:
	mov ax, 0x074F ; Register AX exploit
	nop

label_1872:
	mov ax, 0x0750 ; Register AX exploit
	nop

label_1873:
	mov ax, 0x0751 ; Register AX exploit
	nop

label_1874:
	mov ax, 0x0752 ; Register AX exploit
	nop

label_1875:
	mov ax, 0x0753 ; Register AX exploit
	nop

label_1876:
	mov ax, 0x0754 ; Register AX exploit
	nop

label_1877:
	mov ax, 0x0755 ; Register AX exploit
	nop

label_1878:
	mov ax, 0x0756 ; Register AX exploit
	nop

label_1879:
	mov ax, 0x0757 ; Register AX exploit
	nop

label_1880:
	mov ax, 0x0758 ; Register AX exploit
	nop

label_1881:
	mov ax, 0x0759 ; Register AX exploit
	nop

label_1882:
	mov ax, 0x075A ; Register AX exploit
	nop

label_1883:
	mov ax, 0x075B ; Register AX exploit
	nop

label_1884:
	mov ax, 0x075C ; Register AX exploit
	nop

label_1885:
	mov ax, 0x075D ; Register AX exploit
	nop

label_1886:
	mov ax, 0x075E ; Register AX exploit
	nop

label_1887:
	mov ax, 0x075F ; Register AX exploit
	nop

label_1888:
	mov ax, 0x0760 ; Register AX exploit
	nop

label_1889:
	mov ax, 0x0761 ; Register AX exploit
	nop

label_1890:
	mov ax, 0x0762 ; Register AX exploit
	nop

label_1891:
	mov ax, 0x0763 ; Register AX exploit
	nop

label_1892:
	mov ax, 0x0764 ; Register AX exploit
	nop

label_1893:
	mov ax, 0x0765 ; Register AX exploit
	nop

label_1894:
	mov ax, 0x0766 ; Register AX exploit
	nop

label_1895:
	mov ax, 0x0767 ; Register AX exploit
	nop

label_1896:
	mov ax, 0x0768 ; Register AX exploit
	nop

label_1897:
	mov ax, 0x0769 ; Register AX exploit
	nop

label_1898:
	mov ax, 0x076A ; Register AX exploit
	nop

label_1899:
	mov ax, 0x076B ; Register AX exploit
	nop

label_1900:
	mov ax, 0x076C ; Register AX exploit
	nop

label_1901:
	mov ax, 0x076D ; Register AX exploit
	nop

label_1902:
	mov ax, 0x076E ; Register AX exploit
	nop

label_1903:
	mov ax, 0x076F ; Register AX exploit
	nop

label_1904:
	mov ax, 0x0770 ; Register AX exploit
	nop

label_1905:
	mov ax, 0x0771 ; Register AX exploit
	nop

label_1906:
	mov ax, 0x0772 ; Register AX exploit
	nop

label_1907:
	mov ax, 0x0773 ; Register AX exploit
	nop

label_1908:
	mov ax, 0x0774 ; Register AX exploit
	nop

label_1909:
	mov ax, 0x0775 ; Register AX exploit
	nop

label_1910:
	mov ax, 0x0776 ; Register AX exploit
	nop

label_1911:
	mov ax, 0x0777 ; Register AX exploit
	nop

label_1912:
	mov ax, 0x0778 ; Register AX exploit
	nop

label_1913:
	mov ax, 0x0779 ; Register AX exploit
	nop

label_1914:
	mov ax, 0x077A ; Register AX exploit
	nop

label_1915:
	mov ax, 0x077B ; Register AX exploit
	nop

label_1916:
	mov ax, 0x077C ; Register AX exploit
	nop

label_1917:
	mov ax, 0x077D ; Register AX exploit
	nop

label_1918:
	mov ax, 0x077E ; Register AX exploit
	nop

label_1919:
	mov ax, 0x077F ; Register AX exploit
	nop

label_1920:
	mov ax, 0x0780 ; Register AX exploit
	nop

label_1921:
	mov ax, 0x0781 ; Register AX exploit
	nop

label_1922:
	mov ax, 0x0782 ; Register AX exploit
	nop

label_1923:
	mov ax, 0x0783 ; Register AX exploit
	nop

label_1924:
	mov ax, 0x0784 ; Register AX exploit
	nop

label_1925:
	mov ax, 0x0785 ; Register AX exploit
	nop

label_1926:
	mov ax, 0x0786 ; Register AX exploit
	nop

label_1927:
	mov ax, 0x0787 ; Register AX exploit
	nop

label_1928:
	mov ax, 0x0788 ; Register AX exploit
	nop

label_1929:
	mov ax, 0x0789 ; Register AX exploit
	nop

label_1930:
	mov ax, 0x078A ; Register AX exploit
	nop

label_1931:
	mov ax, 0x078B ; Register AX exploit
	nop

label_1932:
	mov ax, 0x078C ; Register AX exploit
	nop

label_1933:
	mov ax, 0x078D ; Register AX exploit
	nop

label_1934:
	mov ax, 0x078E ; Register AX exploit
	nop

label_1935:
	mov ax, 0x078F ; Register AX exploit
	nop

label_1936:
	mov ax, 0x0790 ; Register AX exploit
	nop

label_1937:
	mov ax, 0x0791 ; Register AX exploit
	nop

label_1938:
	mov ax, 0x0792 ; Register AX exploit
	nop

label_1939:
	mov ax, 0x0793 ; Register AX exploit
	nop

label_1940:
	mov ax, 0x0794 ; Register AX exploit
	nop

label_1941:
	mov ax, 0x0795 ; Register AX exploit
	nop

label_1942:
	mov ax, 0x0796 ; Register AX exploit
	nop

label_1943:
	mov ax, 0x0797 ; Register AX exploit
	nop

label_1944:
	mov ax, 0x0798 ; Register AX exploit
	nop

label_1945:
	mov ax, 0x0799 ; Register AX exploit
	nop

label_1946:
	mov ax, 0x079A ; Register AX exploit
	nop

label_1947:
	mov ax, 0x079B ; Register AX exploit
	nop

label_1948:
	mov ax, 0x079C ; Register AX exploit
	nop

label_1949:
	mov ax, 0x079D ; Register AX exploit
	nop

label_1950:
	mov ax, 0x079E ; Register AX exploit
	nop

label_1951:
	mov ax, 0x079F ; Register AX exploit
	nop

label_1952:
	mov ax, 0x07A0 ; Register AX exploit
	nop

label_1953:
	mov ax, 0x07A1 ; Register AX exploit
	nop

label_1954:
	mov ax, 0x07A2 ; Register AX exploit
	nop

label_1955:
	mov ax, 0x07A3 ; Register AX exploit
	nop

label_1956:
	mov ax, 0x07A4 ; Register AX exploit
	nop

label_1957:
	mov ax, 0x07A5 ; Register AX exploit
	nop

label_1958:
	mov ax, 0x07A6 ; Register AX exploit
	nop

label_1959:
	mov ax, 0x07A7 ; Register AX exploit
	nop

label_1960:
	mov ax, 0x07A8 ; Register AX exploit
	nop

label_1961:
	mov ax, 0x07A9 ; Register AX exploit
	nop

label_1962:
	mov ax, 0x07AA ; Register AX exploit
	nop

label_1963:
	mov ax, 0x07AB ; Register AX exploit
	nop

label_1964:
	mov ax, 0x07AC ; Register AX exploit
	nop

label_1965:
	mov ax, 0x07AD ; Register AX exploit
	nop

label_1966:
	mov ax, 0x07AE ; Register AX exploit
	nop

label_1967:
	mov ax, 0x07AF ; Register AX exploit
	nop

label_1968:
	mov ax, 0x07B0 ; Register AX exploit
	nop

label_1969:
	mov ax, 0x07B1 ; Register AX exploit
	nop

label_1970:
	mov ax, 0x07B2 ; Register AX exploit
	nop

label_1971:
	mov ax, 0x07B3 ; Register AX exploit
	nop

label_1972:
	mov ax, 0x07B4 ; Register AX exploit
	nop

label_1973:
	mov ax, 0x07B5 ; Register AX exploit
	nop

label_1974:
	mov ax, 0x07B6 ; Register AX exploit
	nop

label_1975:
	mov ax, 0x07B7 ; Register AX exploit
	nop

label_1976:
	mov ax, 0x07B8 ; Register AX exploit
	nop

label_1977:
	mov ax, 0x07B9 ; Register AX exploit
	nop

label_1978:
	mov ax, 0x07BA ; Register AX exploit
	nop

label_1979:
	mov ax, 0x07BB ; Register AX exploit
	nop

label_1980:
	mov ax, 0x07BC ; Register AX exploit
	nop

label_1981:
	mov ax, 0x07BD ; Register AX exploit
	nop

label_1982:
	mov ax, 0x07BE ; Register AX exploit
	nop

label_1983:
	mov ax, 0x07BF ; Register AX exploit
	nop

label_1984:
	mov ax, 0x07C0 ; Register AX exploit
	nop

label_1985:
	mov ax, 0x07C1 ; Register AX exploit
	nop

label_1986:
	mov ax, 0x07C2 ; Register AX exploit
	nop

label_1987:
	mov ax, 0x07C3 ; Register AX exploit
	nop

label_1988:
	mov ax, 0x07C4 ; Register AX exploit
	nop

label_1989:
	mov ax, 0x07C5 ; Register AX exploit
	nop

label_1990:
	mov ax, 0x07C6 ; Register AX exploit
	nop

label_1991:
	mov ax, 0x07C7 ; Register AX exploit
	nop

label_1992:
	mov ax, 0x07C8 ; Register AX exploit
	nop

label_1993:
	mov ax, 0x07C9 ; Register AX exploit
	nop

label_1994:
	mov ax, 0x07CA ; Register AX exploit
	nop

label_1995:
	mov ax, 0x07CB ; Register AX exploit
	nop

label_1996:
	mov ax, 0x07CC ; Register AX exploit
	nop

label_1997:
	mov ax, 0x07CD ; Register AX exploit
	nop

label_1998:
	mov ax, 0x07CE ; Register AX exploit
	nop

label_1999:
	mov ax, 0x07CF ; Register AX exploit
	nop

label_2000:
	mov ax, 0x07D0 ; Register AX exploit
	nop

label_2001:
	mov ax, 0x07D1 ; Register AX exploit
	nop

label_2002:
	mov ax, 0x07D2 ; Register AX exploit
	nop

label_2003:
	mov ax, 0x07D3 ; Register AX exploit
	nop

label_2004:
	mov ax, 0x07D4 ; Register AX exploit
	nop

label_2005:
	mov ax, 0x07D5 ; Register AX exploit
	nop

label_2006:
	mov ax, 0x07D6 ; Register AX exploit
	nop

label_2007:
	mov ax, 0x07D7 ; Register AX exploit
	nop

label_2008:
	mov ax, 0x07D8 ; Register AX exploit
	nop

label_2009:
	mov ax, 0x07D9 ; Register AX exploit
	nop

label_2010:
	mov ax, 0x07DA ; Register AX exploit
	nop

label_2011:
	mov ax, 0x07DB ; Register AX exploit
	nop

label_2012:
	mov ax, 0x07DC ; Register AX exploit
	nop

label_2013:
	mov ax, 0x07DD ; Register AX exploit
	nop

label_2014:
	mov ax, 0x07DE ; Register AX exploit
	nop

label_2015:
	mov ax, 0x07DF ; Register AX exploit
	nop

label_2016:
	mov ax, 0x07E0 ; Register AX exploit
	nop

label_2017:
	mov ax, 0x07E1 ; Register AX exploit
	nop

label_2018:
	mov ax, 0x07E2 ; Register AX exploit
	nop

label_2019:
	mov ax, 0x07E3 ; Register AX exploit
	nop

label_2020:
	mov ax, 0x07E4 ; Register AX exploit
	nop

label_2021:
	mov ax, 0x07E5 ; Register AX exploit
	nop

label_2022:
	mov ax, 0x07E6 ; Register AX exploit
	nop

label_2023:
	mov ax, 0x07E7 ; Register AX exploit
	nop

label_2024:
	mov ax, 0x07E8 ; Register AX exploit
	nop

label_2025:
	mov ax, 0x07E9 ; Register AX exploit
	nop

label_2026:
	mov ax, 0x07EA ; Register AX exploit
	nop

label_2027:
	mov ax, 0x07EB ; Register AX exploit
	nop

label_2028:
	mov ax, 0x07EC ; Register AX exploit
	nop

label_2029:
	mov ax, 0x07ED ; Register AX exploit
	nop

label_2030:
	mov ax, 0x07EE ; Register AX exploit
	nop

label_2031:
	mov ax, 0x07EF ; Register AX exploit
	nop

label_2032:
	mov ax, 0x07F0 ; Register AX exploit
	nop

label_2033:
	mov ax, 0x07F1 ; Register AX exploit
	nop

label_2034:
	mov ax, 0x07F2 ; Register AX exploit
	nop

label_2035:
	mov ax, 0x07F3 ; Register AX exploit
	nop

label_2036:
	mov ax, 0x07F4 ; Register AX exploit
	nop

label_2037:
	mov ax, 0x07F5 ; Register AX exploit
	nop

label_2038:
	mov ax, 0x07F6 ; Register AX exploit
	nop

label_2039:
	mov ax, 0x07F7 ; Register AX exploit
	nop

label_2040:
	mov ax, 0x07F8 ; Register AX exploit
	nop

label_2041:
	mov ax, 0x07F9 ; Register AX exploit
	nop

label_2042:
	mov ax, 0x07FA ; Register AX exploit
	nop

label_2043:
	mov ax, 0x07FB ; Register AX exploit
	nop

label_2044:
	mov ax, 0x07FC ; Register AX exploit
	nop

label_2045:
	mov ax, 0x07FD ; Register AX exploit
	nop

label_2046:
	mov ax, 0x07FE ; Register AX exploit
	nop

label_2047:
	mov ax, 0x07FF ; Register AX exploit
	nop

label_2048:
	mov ax, 0x0800 ; Register AX exploit
	nop

label_2049:
	mov ax, 0x0801 ; Register AX exploit
	nop

label_2050:
	mov ax, 0x0802 ; Register AX exploit
	nop

label_2051:
	mov ax, 0x0803 ; Register AX exploit
	nop

label_2052:
	mov ax, 0x0804 ; Register AX exploit
	nop

label_2053:
	mov ax, 0x0805 ; Register AX exploit
	nop

label_2054:
	mov ax, 0x0806 ; Register AX exploit
	nop

label_2055:
	mov ax, 0x0807 ; Register AX exploit
	nop

label_2056:
	mov ax, 0x0808 ; Register AX exploit
	nop

label_2057:
	mov ax, 0x0809 ; Register AX exploit
	nop

label_2058:
	mov ax, 0x080A ; Register AX exploit
	nop

label_2059:
	mov ax, 0x080B ; Register AX exploit
	nop

label_2060:
	mov ax, 0x080C ; Register AX exploit
	nop

label_2061:
	mov ax, 0x080D ; Register AX exploit
	nop

label_2062:
	mov ax, 0x080E ; Register AX exploit
	nop

label_2063:
	mov ax, 0x080F ; Register AX exploit
	nop

label_2064:
	mov ax, 0x0810 ; Register AX exploit
	nop

label_2065:
	mov ax, 0x0811 ; Register AX exploit
	nop

label_2066:
	mov ax, 0x0812 ; Register AX exploit
	nop

label_2067:
	mov ax, 0x0813 ; Register AX exploit
	nop

label_2068:
	mov ax, 0x0814 ; Register AX exploit
	nop

label_2069:
	mov ax, 0x0815 ; Register AX exploit
	nop

label_2070:
	mov ax, 0x0816 ; Register AX exploit
	nop

label_2071:
	mov ax, 0x0817 ; Register AX exploit
	nop

label_2072:
	mov ax, 0x0818 ; Register AX exploit
	nop

label_2073:
	mov ax, 0x0819 ; Register AX exploit
	nop

label_2074:
	mov ax, 0x081A ; Register AX exploit
	nop

label_2075:
	mov ax, 0x081B ; Register AX exploit
	nop

label_2076:
	mov ax, 0x081C ; Register AX exploit
	nop

label_2077:
	mov ax, 0x081D ; Register AX exploit
	nop

label_2078:
	mov ax, 0x081E ; Register AX exploit
	nop

label_2079:
	mov ax, 0x081F ; Register AX exploit
	nop

label_2080:
	mov ax, 0x0820 ; Register AX exploit
	nop

label_2081:
	mov ax, 0x0821 ; Register AX exploit
	nop

label_2082:
	mov ax, 0x0822 ; Register AX exploit
	nop

label_2083:
	mov ax, 0x0823 ; Register AX exploit
	nop

label_2084:
	mov ax, 0x0824 ; Register AX exploit
	nop

label_2085:
	mov ax, 0x0825 ; Register AX exploit
	nop

label_2086:
	mov ax, 0x0826 ; Register AX exploit
	nop

label_2087:
	mov ax, 0x0827 ; Register AX exploit
	nop

label_2088:
	mov ax, 0x0828 ; Register AX exploit
	nop

label_2089:
	mov ax, 0x0829 ; Register AX exploit
	nop

label_2090:
	mov ax, 0x082A ; Register AX exploit
	nop

label_2091:
	mov ax, 0x082B ; Register AX exploit
	nop

label_2092:
	mov ax, 0x082C ; Register AX exploit
	nop

label_2093:
	mov ax, 0x082D ; Register AX exploit
	nop

label_2094:
	mov ax, 0x082E ; Register AX exploit
	nop

label_2095:
	mov ax, 0x082F ; Register AX exploit
	nop

label_2096:
	mov ax, 0x0830 ; Register AX exploit
	nop

label_2097:
	mov ax, 0x0831 ; Register AX exploit
	nop

label_2098:
	mov ax, 0x0832 ; Register AX exploit
	nop

label_2099:
	mov ax, 0x0833 ; Register AX exploit
	nop

label_2100:
	mov ax, 0x0834 ; Register AX exploit
	nop

label_2101:
	mov ax, 0x0835 ; Register AX exploit
	nop

label_2102:
	mov ax, 0x0836 ; Register AX exploit
	nop

label_2103:
	mov ax, 0x0837 ; Register AX exploit
	nop

label_2104:
	mov ax, 0x0838 ; Register AX exploit
	nop

label_2105:
	mov ax, 0x0839 ; Register AX exploit
	nop

label_2106:
	mov ax, 0x083A ; Register AX exploit
	nop

label_2107:
	mov ax, 0x083B ; Register AX exploit
	nop

label_2108:
	mov ax, 0x083C ; Register AX exploit
	nop

label_2109:
	mov ax, 0x083D ; Register AX exploit
	nop

label_2110:
	mov ax, 0x083E ; Register AX exploit
	nop

label_2111:
	mov ax, 0x083F ; Register AX exploit
	nop

label_2112:
	mov ax, 0x0840 ; Register AX exploit
	nop

label_2113:
	mov ax, 0x0841 ; Register AX exploit
	nop

label_2114:
	mov ax, 0x0842 ; Register AX exploit
	nop

label_2115:
	mov ax, 0x0843 ; Register AX exploit
	nop

label_2116:
	mov ax, 0x0844 ; Register AX exploit
	nop

label_2117:
	mov ax, 0x0845 ; Register AX exploit
	nop

label_2118:
	mov ax, 0x0846 ; Register AX exploit
	nop

label_2119:
	mov ax, 0x0847 ; Register AX exploit
	nop

label_2120:
	mov ax, 0x0848 ; Register AX exploit
	nop

label_2121:
	mov ax, 0x0849 ; Register AX exploit
	nop

label_2122:
	mov ax, 0x084A ; Register AX exploit
	nop

label_2123:
	mov ax, 0x084B ; Register AX exploit
	nop

label_2124:
	mov ax, 0x084C ; Register AX exploit
	nop

label_2125:
	mov ax, 0x084D ; Register AX exploit
	nop

label_2126:
	mov ax, 0x084E ; Register AX exploit
	nop

label_2127:
	mov ax, 0x084F ; Register AX exploit
	nop

label_2128:
	mov ax, 0x0850 ; Register AX exploit
	nop

label_2129:
	mov ax, 0x0851 ; Register AX exploit
	nop

label_2130:
	mov ax, 0x0852 ; Register AX exploit
	nop

label_2131:
	mov ax, 0x0853 ; Register AX exploit
	nop

label_2132:
	mov ax, 0x0854 ; Register AX exploit
	nop

label_2133:
	mov ax, 0x0855 ; Register AX exploit
	nop

label_2134:
	mov ax, 0x0856 ; Register AX exploit
	nop

label_2135:
	mov ax, 0x0857 ; Register AX exploit
	nop

label_2136:
	mov ax, 0x0858 ; Register AX exploit
	nop

label_2137:
	mov ax, 0x0859 ; Register AX exploit
	nop

label_2138:
	mov ax, 0x085A ; Register AX exploit
	nop

label_2139:
	mov ax, 0x085B ; Register AX exploit
	nop

label_2140:
	mov ax, 0x085C ; Register AX exploit
	nop

label_2141:
	mov ax, 0x085D ; Register AX exploit
	nop

label_2142:
	mov ax, 0x085E ; Register AX exploit
	nop

label_2143:
	mov ax, 0x085F ; Register AX exploit
	nop

label_2144:
	mov ax, 0x0860 ; Register AX exploit
	nop

label_2145:
	mov ax, 0x0861 ; Register AX exploit
	nop

label_2146:
	mov ax, 0x0862 ; Register AX exploit
	nop

label_2147:
	mov ax, 0x0863 ; Register AX exploit
	nop

label_2148:
	mov ax, 0x0864 ; Register AX exploit
	nop

label_2149:
	mov ax, 0x0865 ; Register AX exploit
	nop

label_2150:
	mov ax, 0x0866 ; Register AX exploit
	nop

label_2151:
	mov ax, 0x0867 ; Register AX exploit
	nop

label_2152:
	mov ax, 0x0868 ; Register AX exploit
	nop

label_2153:
	mov ax, 0x0869 ; Register AX exploit
	nop

label_2154:
	mov ax, 0x086A ; Register AX exploit
	nop

label_2155:
	mov ax, 0x086B ; Register AX exploit
	nop

label_2156:
	mov ax, 0x086C ; Register AX exploit
	nop

label_2157:
	mov ax, 0x086D ; Register AX exploit
	nop

label_2158:
	mov ax, 0x086E ; Register AX exploit
	nop

label_2159:
	mov ax, 0x086F ; Register AX exploit
	nop

label_2160:
	mov ax, 0x0870 ; Register AX exploit
	nop

label_2161:
	mov ax, 0x0871 ; Register AX exploit
	nop

label_2162:
	mov ax, 0x0872 ; Register AX exploit
	nop

label_2163:
	mov ax, 0x0873 ; Register AX exploit
	nop

label_2164:
	mov ax, 0x0874 ; Register AX exploit
	nop

label_2165:
	mov ax, 0x0875 ; Register AX exploit
	nop

label_2166:
	mov ax, 0x0876 ; Register AX exploit
	nop

label_2167:
	mov ax, 0x0877 ; Register AX exploit
	nop

label_2168:
	mov ax, 0x0878 ; Register AX exploit
	nop

label_2169:
	mov ax, 0x0879 ; Register AX exploit
	nop

label_2170:
	mov ax, 0x087A ; Register AX exploit
	nop

label_2171:
	mov ax, 0x087B ; Register AX exploit
	nop

label_2172:
	mov ax, 0x087C ; Register AX exploit
	nop

label_2173:
	mov ax, 0x087D ; Register AX exploit
	nop

label_2174:
	mov ax, 0x087E ; Register AX exploit
	nop

label_2175:
	mov ax, 0x087F ; Register AX exploit
	nop

label_2176:
	mov ax, 0x0880 ; Register AX exploit
	nop

label_2177:
	mov ax, 0x0881 ; Register AX exploit
	nop

label_2178:
	mov ax, 0x0882 ; Register AX exploit
	nop

label_2179:
	mov ax, 0x0883 ; Register AX exploit
	nop

label_2180:
	mov ax, 0x0884 ; Register AX exploit
	nop

label_2181:
	mov ax, 0x0885 ; Register AX exploit
	nop

label_2182:
	mov ax, 0x0886 ; Register AX exploit
	nop

label_2183:
	mov ax, 0x0887 ; Register AX exploit
	nop

label_2184:
	mov ax, 0x0888 ; Register AX exploit
	nop

label_2185:
	mov ax, 0x0889 ; Register AX exploit
	nop

label_2186:
	mov ax, 0x088A ; Register AX exploit
	nop

label_2187:
	mov ax, 0x088B ; Register AX exploit
	nop

label_2188:
	mov ax, 0x088C ; Register AX exploit
	nop

label_2189:
	mov ax, 0x088D ; Register AX exploit
	nop

label_2190:
	mov ax, 0x088E ; Register AX exploit
	nop

label_2191:
	mov ax, 0x088F ; Register AX exploit
	nop

label_2192:
	mov ax, 0x0890 ; Register AX exploit
	nop

label_2193:
	mov ax, 0x0891 ; Register AX exploit
	nop

label_2194:
	mov ax, 0x0892 ; Register AX exploit
	nop

label_2195:
	mov ax, 0x0893 ; Register AX exploit
	nop

label_2196:
	mov ax, 0x0894 ; Register AX exploit
	nop

label_2197:
	mov ax, 0x0895 ; Register AX exploit
	nop

label_2198:
	mov ax, 0x0896 ; Register AX exploit
	nop

label_2199:
	mov ax, 0x0897 ; Register AX exploit
	nop

label_2200:
	mov ax, 0x0898 ; Register AX exploit
	nop

label_2201:
	mov ax, 0x0899 ; Register AX exploit
	nop

label_2202:
	mov ax, 0x089A ; Register AX exploit
	nop

label_2203:
	mov ax, 0x089B ; Register AX exploit
	nop

label_2204:
	mov ax, 0x089C ; Register AX exploit
	nop

label_2205:
	mov ax, 0x089D ; Register AX exploit
	nop

label_2206:
	mov ax, 0x089E ; Register AX exploit
	nop

label_2207:
	mov ax, 0x089F ; Register AX exploit
	nop

label_2208:
	mov ax, 0x08A0 ; Register AX exploit
	nop

label_2209:
	mov ax, 0x08A1 ; Register AX exploit
	nop

label_2210:
	mov ax, 0x08A2 ; Register AX exploit
	nop

label_2211:
	mov ax, 0x08A3 ; Register AX exploit
	nop

label_2212:
	mov ax, 0x08A4 ; Register AX exploit
	nop

label_2213:
	mov ax, 0x08A5 ; Register AX exploit
	nop

label_2214:
	mov ax, 0x08A6 ; Register AX exploit
	nop

label_2215:
	mov ax, 0x08A7 ; Register AX exploit
	nop

label_2216:
	mov ax, 0x08A8 ; Register AX exploit
	nop

label_2217:
	mov ax, 0x08A9 ; Register AX exploit
	nop

label_2218:
	mov ax, 0x08AA ; Register AX exploit
	nop

label_2219:
	mov ax, 0x08AB ; Register AX exploit
	nop

label_2220:
	mov ax, 0x08AC ; Register AX exploit
	nop

label_2221:
	mov ax, 0x08AD ; Register AX exploit
	nop

label_2222:
	mov ax, 0x08AE ; Register AX exploit
	nop

label_2223:
	mov ax, 0x08AF ; Register AX exploit
	nop

label_2224:
	mov ax, 0x08B0 ; Register AX exploit
	nop

label_2225:
	mov ax, 0x08B1 ; Register AX exploit
	nop

label_2226:
	mov ax, 0x08B2 ; Register AX exploit
	nop

label_2227:
	mov ax, 0x08B3 ; Register AX exploit
	nop

label_2228:
	mov ax, 0x08B4 ; Register AX exploit
	nop

label_2229:
	mov ax, 0x08B5 ; Register AX exploit
	nop

label_2230:
	mov ax, 0x08B6 ; Register AX exploit
	nop

label_2231:
	mov ax, 0x08B7 ; Register AX exploit
	nop

label_2232:
	mov ax, 0x08B8 ; Register AX exploit
	nop

label_2233:
	mov ax, 0x08B9 ; Register AX exploit
	nop

label_2234:
	mov ax, 0x08BA ; Register AX exploit
	nop

label_2235:
	mov ax, 0x08BB ; Register AX exploit
	nop

label_2236:
	mov ax, 0x08BC ; Register AX exploit
	nop

label_2237:
	mov ax, 0x08BD ; Register AX exploit
	nop

label_2238:
	mov ax, 0x08BE ; Register AX exploit
	nop

label_2239:
	mov ax, 0x08BF ; Register AX exploit
	nop

label_2240:
	mov ax, 0x08C0 ; Register AX exploit
	nop

label_2241:
	mov ax, 0x08C1 ; Register AX exploit
	nop

label_2242:
	mov ax, 0x08C2 ; Register AX exploit
	nop

label_2243:
	mov ax, 0x08C3 ; Register AX exploit
	nop

label_2244:
	mov ax, 0x08C4 ; Register AX exploit
	nop

label_2245:
	mov ax, 0x08C5 ; Register AX exploit
	nop

label_2246:
	mov ax, 0x08C6 ; Register AX exploit
	nop

label_2247:
	mov ax, 0x08C7 ; Register AX exploit
	nop

label_2248:
	mov ax, 0x08C8 ; Register AX exploit
	nop

label_2249:
	mov ax, 0x08C9 ; Register AX exploit
	nop

label_2250:
	mov ax, 0x08CA ; Register AX exploit
	nop

label_2251:
	mov ax, 0x08CB ; Register AX exploit
	nop

label_2252:
	mov ax, 0x08CC ; Register AX exploit
	nop

label_2253:
	mov ax, 0x08CD ; Register AX exploit
	nop

label_2254:
	mov ax, 0x08CE ; Register AX exploit
	nop

label_2255:
	mov ax, 0x08CF ; Register AX exploit
	nop

label_2256:
	mov ax, 0x08D0 ; Register AX exploit
	nop

label_2257:
	mov ax, 0x08D1 ; Register AX exploit
	nop

label_2258:
	mov ax, 0x08D2 ; Register AX exploit
	nop

label_2259:
	mov ax, 0x08D3 ; Register AX exploit
	nop

label_2260:
	mov ax, 0x08D4 ; Register AX exploit
	nop

label_2261:
	mov ax, 0x08D5 ; Register AX exploit
	nop

label_2262:
	mov ax, 0x08D6 ; Register AX exploit
	nop

label_2263:
	mov ax, 0x08D7 ; Register AX exploit
	nop

label_2264:
	mov ax, 0x08D8 ; Register AX exploit
	nop

label_2265:
	mov ax, 0x08D9 ; Register AX exploit
	nop

label_2266:
	mov ax, 0x08DA ; Register AX exploit
	nop

label_2267:
	mov ax, 0x08DB ; Register AX exploit
	nop

label_2268:
	mov ax, 0x08DC ; Register AX exploit
	nop

label_2269:
	mov ax, 0x08DD ; Register AX exploit
	nop

label_2270:
	mov ax, 0x08DE ; Register AX exploit
	nop

label_2271:
	mov ax, 0x08DF ; Register AX exploit
	nop

label_2272:
	mov ax, 0x08E0 ; Register AX exploit
	nop

label_2273:
	mov ax, 0x08E1 ; Register AX exploit
	nop

label_2274:
	mov ax, 0x08E2 ; Register AX exploit
	nop

label_2275:
	mov ax, 0x08E3 ; Register AX exploit
	nop

label_2276:
	mov ax, 0x08E4 ; Register AX exploit
	nop

label_2277:
	mov ax, 0x08E5 ; Register AX exploit
	nop

label_2278:
	mov ax, 0x08E6 ; Register AX exploit
	nop

label_2279:
	mov ax, 0x08E7 ; Register AX exploit
	nop

label_2280:
	mov ax, 0x08E8 ; Register AX exploit
	nop

label_2281:
	mov ax, 0x08E9 ; Register AX exploit
	nop

label_2282:
	mov ax, 0x08EA ; Register AX exploit
	nop

label_2283:
	mov ax, 0x08EB ; Register AX exploit
	nop

label_2284:
	mov ax, 0x08EC ; Register AX exploit
	nop

label_2285:
	mov ax, 0x08ED ; Register AX exploit
	nop

label_2286:
	mov ax, 0x08EE ; Register AX exploit
	nop

label_2287:
	mov ax, 0x08EF ; Register AX exploit
	nop

label_2288:
	mov ax, 0x08F0 ; Register AX exploit
	nop

label_2289:
	mov ax, 0x08F1 ; Register AX exploit
	nop

label_2290:
	mov ax, 0x08F2 ; Register AX exploit
	nop

label_2291:
	mov ax, 0x08F3 ; Register AX exploit
	nop

label_2292:
	mov ax, 0x08F4 ; Register AX exploit
	nop

label_2293:
	mov ax, 0x08F5 ; Register AX exploit
	nop

label_2294:
	mov ax, 0x08F6 ; Register AX exploit
	nop

label_2295:
	mov ax, 0x08F7 ; Register AX exploit
	nop

label_2296:
	mov ax, 0x08F8 ; Register AX exploit
	nop

label_2297:
	mov ax, 0x08F9 ; Register AX exploit
	nop

label_2298:
	mov ax, 0x08FA ; Register AX exploit
	nop

label_2299:
	mov ax, 0x08FB ; Register AX exploit
	nop

label_2300:
	mov ax, 0x08FC ; Register AX exploit
	nop

label_2301:
	mov ax, 0x08FD ; Register AX exploit
	nop

label_2302:
	mov ax, 0x08FE ; Register AX exploit
	nop

label_2303:
	mov ax, 0x08FF ; Register AX exploit
	nop

label_2304:
	mov ax, 0x0900 ; Register AX exploit
	nop

label_2305:
	mov ax, 0x0901 ; Register AX exploit
	nop

label_2306:
	mov ax, 0x0902 ; Register AX exploit
	nop

label_2307:
	mov ax, 0x0903 ; Register AX exploit
	nop

label_2308:
	mov ax, 0x0904 ; Register AX exploit
	nop

label_2309:
	mov ax, 0x0905 ; Register AX exploit
	nop

label_2310:
	mov ax, 0x0906 ; Register AX exploit
	nop

label_2311:
	mov ax, 0x0907 ; Register AX exploit
	nop

label_2312:
	mov ax, 0x0908 ; Register AX exploit
	nop

label_2313:
	mov ax, 0x0909 ; Register AX exploit
	nop

label_2314:
	mov ax, 0x090A ; Register AX exploit
	nop

label_2315:
	mov ax, 0x090B ; Register AX exploit
	nop

label_2316:
	mov ax, 0x090C ; Register AX exploit
	nop

label_2317:
	mov ax, 0x090D ; Register AX exploit
	nop

label_2318:
	mov ax, 0x090E ; Register AX exploit
	nop

label_2319:
	mov ax, 0x090F ; Register AX exploit
	nop

label_2320:
	mov ax, 0x0910 ; Register AX exploit
	nop

label_2321:
	mov ax, 0x0911 ; Register AX exploit
	nop

label_2322:
	mov ax, 0x0912 ; Register AX exploit
	nop

label_2323:
	mov ax, 0x0913 ; Register AX exploit
	nop

label_2324:
	mov ax, 0x0914 ; Register AX exploit
	nop

label_2325:
	mov ax, 0x0915 ; Register AX exploit
	nop

label_2326:
	mov ax, 0x0916 ; Register AX exploit
	nop

label_2327:
	mov ax, 0x0917 ; Register AX exploit
	nop

label_2328:
	mov ax, 0x0918 ; Register AX exploit
	nop

label_2329:
	mov ax, 0x0919 ; Register AX exploit
	nop

label_2330:
	mov ax, 0x091A ; Register AX exploit
	nop

label_2331:
	mov ax, 0x091B ; Register AX exploit
	nop

label_2332:
	mov ax, 0x091C ; Register AX exploit
	nop

label_2333:
	mov ax, 0x091D ; Register AX exploit
	nop

label_2334:
	mov ax, 0x091E ; Register AX exploit
	nop

label_2335:
	mov ax, 0x091F ; Register AX exploit
	nop

label_2336:
	mov ax, 0x0920 ; Register AX exploit
	nop

label_2337:
	mov ax, 0x0921 ; Register AX exploit
	nop

label_2338:
	mov ax, 0x0922 ; Register AX exploit
	nop

label_2339:
	mov ax, 0x0923 ; Register AX exploit
	nop

label_2340:
	mov ax, 0x0924 ; Register AX exploit
	nop

label_2341:
	mov ax, 0x0925 ; Register AX exploit
	nop

label_2342:
	mov ax, 0x0926 ; Register AX exploit
	nop

label_2343:
	mov ax, 0x0927 ; Register AX exploit
	nop

label_2344:
	mov ax, 0x0928 ; Register AX exploit
	nop

label_2345:
	mov ax, 0x0929 ; Register AX exploit
	nop

label_2346:
	mov ax, 0x092A ; Register AX exploit
	nop

label_2347:
	mov ax, 0x092B ; Register AX exploit
	nop

label_2348:
	mov ax, 0x092C ; Register AX exploit
	nop

label_2349:
	mov ax, 0x092D ; Register AX exploit
	nop

label_2350:
	mov ax, 0x092E ; Register AX exploit
	nop

label_2351:
	mov ax, 0x092F ; Register AX exploit
	nop

label_2352:
	mov ax, 0x0930 ; Register AX exploit
	nop

label_2353:
	mov ax, 0x0931 ; Register AX exploit
	nop

label_2354:
	mov ax, 0x0932 ; Register AX exploit
	nop

label_2355:
	mov ax, 0x0933 ; Register AX exploit
	nop

label_2356:
	mov ax, 0x0934 ; Register AX exploit
	nop

label_2357:
	mov ax, 0x0935 ; Register AX exploit
	nop

label_2358:
	mov ax, 0x0936 ; Register AX exploit
	nop

label_2359:
	mov ax, 0x0937 ; Register AX exploit
	nop

label_2360:
	mov ax, 0x0938 ; Register AX exploit
	nop

label_2361:
	mov ax, 0x0939 ; Register AX exploit
	nop

label_2362:
	mov ax, 0x093A ; Register AX exploit
	nop

label_2363:
	mov ax, 0x093B ; Register AX exploit
	nop

label_2364:
	mov ax, 0x093C ; Register AX exploit
	nop

label_2365:
	mov ax, 0x093D ; Register AX exploit
	nop

label_2366:
	mov ax, 0x093E ; Register AX exploit
	nop

label_2367:
	mov ax, 0x093F ; Register AX exploit
	nop

label_2368:
	mov ax, 0x0940 ; Register AX exploit
	nop

label_2369:
	mov ax, 0x0941 ; Register AX exploit
	nop

label_2370:
	mov ax, 0x0942 ; Register AX exploit
	nop

label_2371:
	mov ax, 0x0943 ; Register AX exploit
	nop

label_2372:
	mov ax, 0x0944 ; Register AX exploit
	nop

label_2373:
	mov ax, 0x0945 ; Register AX exploit
	nop

label_2374:
	mov ax, 0x0946 ; Register AX exploit
	nop

label_2375:
	mov ax, 0x0947 ; Register AX exploit
	nop

label_2376:
	mov ax, 0x0948 ; Register AX exploit
	nop

label_2377:
	mov ax, 0x0949 ; Register AX exploit
	nop

label_2378:
	mov ax, 0x094A ; Register AX exploit
	nop

label_2379:
	mov ax, 0x094B ; Register AX exploit
	nop

label_2380:
	mov ax, 0x094C ; Register AX exploit
	nop

label_2381:
	mov ax, 0x094D ; Register AX exploit
	nop

label_2382:
	mov ax, 0x094E ; Register AX exploit
	nop

label_2383:
	mov ax, 0x094F ; Register AX exploit
	nop

label_2384:
	mov ax, 0x0950 ; Register AX exploit
	nop

label_2385:
	mov ax, 0x0951 ; Register AX exploit
	nop

label_2386:
	mov ax, 0x0952 ; Register AX exploit
	nop

label_2387:
	mov ax, 0x0953 ; Register AX exploit
	nop

label_2388:
	mov ax, 0x0954 ; Register AX exploit
	nop

label_2389:
	mov ax, 0x0955 ; Register AX exploit
	nop

label_2390:
	mov ax, 0x0956 ; Register AX exploit
	nop

label_2391:
	mov ax, 0x0957 ; Register AX exploit
	nop

label_2392:
	mov ax, 0x0958 ; Register AX exploit
	nop

label_2393:
	mov ax, 0x0959 ; Register AX exploit
	nop

label_2394:
	mov ax, 0x095A ; Register AX exploit
	nop

label_2395:
	mov ax, 0x095B ; Register AX exploit
	nop

label_2396:
	mov ax, 0x095C ; Register AX exploit
	nop

label_2397:
	mov ax, 0x095D ; Register AX exploit
	nop

label_2398:
	mov ax, 0x095E ; Register AX exploit
	nop

label_2399:
	mov ax, 0x095F ; Register AX exploit
	nop

label_2400:
	mov ax, 0x0960 ; Register AX exploit
	nop

label_2401:
	mov ax, 0x0961 ; Register AX exploit
	nop

label_2402:
	mov ax, 0x0962 ; Register AX exploit
	nop

label_2403:
	mov ax, 0x0963 ; Register AX exploit
	nop

label_2404:
	mov ax, 0x0964 ; Register AX exploit
	nop

label_2405:
	mov ax, 0x0965 ; Register AX exploit
	nop

label_2406:
	mov ax, 0x0966 ; Register AX exploit
	nop

label_2407:
	mov ax, 0x0967 ; Register AX exploit
	nop

label_2408:
	mov ax, 0x0968 ; Register AX exploit
	nop

label_2409:
	mov ax, 0x0969 ; Register AX exploit
	nop

label_2410:
	mov ax, 0x096A ; Register AX exploit
	nop

label_2411:
	mov ax, 0x096B ; Register AX exploit
	nop

label_2412:
	mov ax, 0x096C ; Register AX exploit
	nop

label_2413:
	mov ax, 0x096D ; Register AX exploit
	nop

label_2414:
	mov ax, 0x096E ; Register AX exploit
	nop

label_2415:
	mov ax, 0x096F ; Register AX exploit
	nop

label_2416:
	mov ax, 0x0970 ; Register AX exploit
	nop

label_2417:
	mov ax, 0x0971 ; Register AX exploit
	nop

label_2418:
	mov ax, 0x0972 ; Register AX exploit
	nop

label_2419:
	mov ax, 0x0973 ; Register AX exploit
	nop

label_2420:
	mov ax, 0x0974 ; Register AX exploit
	nop

label_2421:
	mov ax, 0x0975 ; Register AX exploit
	nop

label_2422:
	mov ax, 0x0976 ; Register AX exploit
	nop

label_2423:
	mov ax, 0x0977 ; Register AX exploit
	nop

label_2424:
	mov ax, 0x0978 ; Register AX exploit
	nop

label_2425:
	mov ax, 0x0979 ; Register AX exploit
	nop

label_2426:
	mov ax, 0x097A ; Register AX exploit
	nop

label_2427:
	mov ax, 0x097B ; Register AX exploit
	nop

label_2428:
	mov ax, 0x097C ; Register AX exploit
	nop

label_2429:
	mov ax, 0x097D ; Register AX exploit
	nop

label_2430:
	mov ax, 0x097E ; Register AX exploit
	nop

label_2431:
	mov ax, 0x097F ; Register AX exploit
	nop

label_2432:
	mov ax, 0x0980 ; Register AX exploit
	nop

label_2433:
	mov ax, 0x0981 ; Register AX exploit
	nop

label_2434:
	mov ax, 0x0982 ; Register AX exploit
	nop

label_2435:
	mov ax, 0x0983 ; Register AX exploit
	nop

label_2436:
	mov ax, 0x0984 ; Register AX exploit
	nop

label_2437:
	mov ax, 0x0985 ; Register AX exploit
	nop

label_2438:
	mov ax, 0x0986 ; Register AX exploit
	nop

label_2439:
	mov ax, 0x0987 ; Register AX exploit
	nop

label_2440:
	mov ax, 0x0988 ; Register AX exploit
	nop

label_2441:
	mov ax, 0x0989 ; Register AX exploit
	nop

label_2442:
	mov ax, 0x098A ; Register AX exploit
	nop

label_2443:
	mov ax, 0x098B ; Register AX exploit
	nop

label_2444:
	mov ax, 0x098C ; Register AX exploit
	nop

label_2445:
	mov ax, 0x098D ; Register AX exploit
	nop

label_2446:
	mov ax, 0x098E ; Register AX exploit
	nop

label_2447:
	mov ax, 0x098F ; Register AX exploit
	nop

label_2448:
	mov ax, 0x0990 ; Register AX exploit
	nop

label_2449:
	mov ax, 0x0991 ; Register AX exploit
	nop

label_2450:
	mov ax, 0x0992 ; Register AX exploit
	nop

label_2451:
	mov ax, 0x0993 ; Register AX exploit
	nop

label_2452:
	mov ax, 0x0994 ; Register AX exploit
	nop

label_2453:
	mov ax, 0x0995 ; Register AX exploit
	nop

label_2454:
	mov ax, 0x0996 ; Register AX exploit
	nop

label_2455:
	mov ax, 0x0997 ; Register AX exploit
	nop

label_2456:
	mov ax, 0x0998 ; Register AX exploit
	nop

label_2457:
	mov ax, 0x0999 ; Register AX exploit
	nop

label_2458:
	mov ax, 0x099A ; Register AX exploit
	nop

label_2459:
	mov ax, 0x099B ; Register AX exploit
	nop

label_2460:
	mov ax, 0x099C ; Register AX exploit
	nop

label_2461:
	mov ax, 0x099D ; Register AX exploit
	nop

label_2462:
	mov ax, 0x099E ; Register AX exploit
	nop

label_2463:
	mov ax, 0x099F ; Register AX exploit
	nop

label_2464:
	mov ax, 0x09A0 ; Register AX exploit
	nop

label_2465:
	mov ax, 0x09A1 ; Register AX exploit
	nop

label_2466:
	mov ax, 0x09A2 ; Register AX exploit
	nop

label_2467:
	mov ax, 0x09A3 ; Register AX exploit
	nop

label_2468:
	mov ax, 0x09A4 ; Register AX exploit
	nop

label_2469:
	mov ax, 0x09A5 ; Register AX exploit
	nop

label_2470:
	mov ax, 0x09A6 ; Register AX exploit
	nop

label_2471:
	mov ax, 0x09A7 ; Register AX exploit
	nop

label_2472:
	mov ax, 0x09A8 ; Register AX exploit
	nop

label_2473:
	mov ax, 0x09A9 ; Register AX exploit
	nop

label_2474:
	mov ax, 0x09AA ; Register AX exploit
	nop

label_2475:
	mov ax, 0x09AB ; Register AX exploit
	nop

label_2476:
	mov ax, 0x09AC ; Register AX exploit
	nop

label_2477:
	mov ax, 0x09AD ; Register AX exploit
	nop

label_2478:
	mov ax, 0x09AE ; Register AX exploit
	nop

label_2479:
	mov ax, 0x09AF ; Register AX exploit
	nop

label_2480:
	mov ax, 0x09B0 ; Register AX exploit
	nop

label_2481:
	mov ax, 0x09B1 ; Register AX exploit
	nop

label_2482:
	mov ax, 0x09B2 ; Register AX exploit
	nop

label_2483:
	mov ax, 0x09B3 ; Register AX exploit
	nop

label_2484:
	mov ax, 0x09B4 ; Register AX exploit
	nop

label_2485:
	mov ax, 0x09B5 ; Register AX exploit
	nop

label_2486:
	mov ax, 0x09B6 ; Register AX exploit
	nop

label_2487:
	mov ax, 0x09B7 ; Register AX exploit
	nop

label_2488:
	mov ax, 0x09B8 ; Register AX exploit
	nop

label_2489:
	mov ax, 0x09B9 ; Register AX exploit
	nop

label_2490:
	mov ax, 0x09BA ; Register AX exploit
	nop

label_2491:
	mov ax, 0x09BB ; Register AX exploit
	nop

label_2492:
	mov ax, 0x09BC ; Register AX exploit
	nop

label_2493:
	mov ax, 0x09BD ; Register AX exploit
	nop

label_2494:
	mov ax, 0x09BE ; Register AX exploit
	nop

label_2495:
	mov ax, 0x09BF ; Register AX exploit
	nop

label_2496:
	mov ax, 0x09C0 ; Register AX exploit
	nop

label_2497:
	mov ax, 0x09C1 ; Register AX exploit
	nop

label_2498:
	mov ax, 0x09C2 ; Register AX exploit
	nop

label_2499:
	mov ax, 0x09C3 ; Register AX exploit
	nop

label_2500:
	mov ax, 0x09C4 ; Register AX exploit
	nop

label_2501:
	mov ax, 0x09C5 ; Register AX exploit
	nop

label_2502:
	mov ax, 0x09C6 ; Register AX exploit
	nop

label_2503:
	mov ax, 0x09C7 ; Register AX exploit
	nop

label_2504:
	mov ax, 0x09C8 ; Register AX exploit
	nop

label_2505:
	mov ax, 0x09C9 ; Register AX exploit
	nop

label_2506:
	mov ax, 0x09CA ; Register AX exploit
	nop

label_2507:
	mov ax, 0x09CB ; Register AX exploit
	nop

label_2508:
	mov ax, 0x09CC ; Register AX exploit
	nop

label_2509:
	mov ax, 0x09CD ; Register AX exploit
	nop

label_2510:
	mov ax, 0x09CE ; Register AX exploit
	nop

label_2511:
	mov ax, 0x09CF ; Register AX exploit
	nop

label_2512:
	mov ax, 0x09D0 ; Register AX exploit
	nop

label_2513:
	mov ax, 0x09D1 ; Register AX exploit
	nop

label_2514:
	mov ax, 0x09D2 ; Register AX exploit
	nop

label_2515:
	mov ax, 0x09D3 ; Register AX exploit
	nop

label_2516:
	mov ax, 0x09D4 ; Register AX exploit
	nop

label_2517:
	mov ax, 0x09D5 ; Register AX exploit
	nop

label_2518:
	mov ax, 0x09D6 ; Register AX exploit
	nop

label_2519:
	mov ax, 0x09D7 ; Register AX exploit
	nop

label_2520:
	mov ax, 0x09D8 ; Register AX exploit
	nop

label_2521:
	mov ax, 0x09D9 ; Register AX exploit
	nop

label_2522:
	mov ax, 0x09DA ; Register AX exploit
	nop

label_2523:
	mov ax, 0x09DB ; Register AX exploit
	nop

label_2524:
	mov ax, 0x09DC ; Register AX exploit
	nop

label_2525:
	mov ax, 0x09DD ; Register AX exploit
	nop

label_2526:
	mov ax, 0x09DE ; Register AX exploit
	nop

label_2527:
	mov ax, 0x09DF ; Register AX exploit
	nop

label_2528:
	mov ax, 0x09E0 ; Register AX exploit
	nop

label_2529:
	mov ax, 0x09E1 ; Register AX exploit
	nop

label_2530:
	mov ax, 0x09E2 ; Register AX exploit
	nop

label_2531:
	mov ax, 0x09E3 ; Register AX exploit
	nop

label_2532:
	mov ax, 0x09E4 ; Register AX exploit
	nop

label_2533:
	mov ax, 0x09E5 ; Register AX exploit
	nop

label_2534:
	mov ax, 0x09E6 ; Register AX exploit
	nop

label_2535:
	mov ax, 0x09E7 ; Register AX exploit
	nop

label_2536:
	mov ax, 0x09E8 ; Register AX exploit
	nop

label_2537:
	mov ax, 0x09E9 ; Register AX exploit
	nop

label_2538:
	mov ax, 0x09EA ; Register AX exploit
	nop

label_2539:
	mov ax, 0x09EB ; Register AX exploit
	nop

label_2540:
	mov ax, 0x09EC ; Register AX exploit
	nop

label_2541:
	mov ax, 0x09ED ; Register AX exploit
	nop

label_2542:
	mov ax, 0x09EE ; Register AX exploit
	nop

label_2543:
	mov ax, 0x09EF ; Register AX exploit
	nop

label_2544:
	mov ax, 0x09F0 ; Register AX exploit
	nop

label_2545:
	mov ax, 0x09F1 ; Register AX exploit
	nop

label_2546:
	mov ax, 0x09F2 ; Register AX exploit
	nop

label_2547:
	mov ax, 0x09F3 ; Register AX exploit
	nop

label_2548:
	mov ax, 0x09F4 ; Register AX exploit
	nop

label_2549:
	mov ax, 0x09F5 ; Register AX exploit
	nop

label_2550:
	mov ax, 0x09F6 ; Register AX exploit
	nop

label_2551:
	mov ax, 0x09F7 ; Register AX exploit
	nop

label_2552:
	mov ax, 0x09F8 ; Register AX exploit
	nop

label_2553:
	mov ax, 0x09F9 ; Register AX exploit
	nop

label_2554:
	mov ax, 0x09FA ; Register AX exploit
	nop

label_2555:
	mov ax, 0x09FB ; Register AX exploit
	nop

label_2556:
	mov ax, 0x09FC ; Register AX exploit
	nop

label_2557:
	mov ax, 0x09FD ; Register AX exploit
	nop

label_2558:
	mov ax, 0x09FE ; Register AX exploit
	nop

label_2559:
	mov ax, 0x09FF ; Register AX exploit
	nop

label_2560:
	mov ax, 0x0A00 ; Register AX exploit
	nop

label_2561:
	mov ax, 0x0A01 ; Register AX exploit
	nop

label_2562:
	mov ax, 0x0A02 ; Register AX exploit
	nop

label_2563:
	mov ax, 0x0A03 ; Register AX exploit
	nop

label_2564:
	mov ax, 0x0A04 ; Register AX exploit
	nop

label_2565:
	mov ax, 0x0A05 ; Register AX exploit
	nop

label_2566:
	mov ax, 0x0A06 ; Register AX exploit
	nop

label_2567:
	mov ax, 0x0A07 ; Register AX exploit
	nop

label_2568:
	mov ax, 0x0A08 ; Register AX exploit
	nop

label_2569:
	mov ax, 0x0A09 ; Register AX exploit
	nop

label_2570:
	mov ax, 0x0A0A ; Register AX exploit
	nop

label_2571:
	mov ax, 0x0A0B ; Register AX exploit
	nop

label_2572:
	mov ax, 0x0A0C ; Register AX exploit
	nop

label_2573:
	mov ax, 0x0A0D ; Register AX exploit
	nop

label_2574:
	mov ax, 0x0A0E ; Register AX exploit
	nop

label_2575:
	mov ax, 0x0A0F ; Register AX exploit
	nop

label_2576:
	mov ax, 0x0A10 ; Register AX exploit
	nop

label_2577:
	mov ax, 0x0A11 ; Register AX exploit
	nop

label_2578:
	mov ax, 0x0A12 ; Register AX exploit
	nop

label_2579:
	mov ax, 0x0A13 ; Register AX exploit
	nop

label_2580:
	mov ax, 0x0A14 ; Register AX exploit
	nop

label_2581:
	mov ax, 0x0A15 ; Register AX exploit
	nop

label_2582:
	mov ax, 0x0A16 ; Register AX exploit
	nop

label_2583:
	mov ax, 0x0A17 ; Register AX exploit
	nop

label_2584:
	mov ax, 0x0A18 ; Register AX exploit
	nop

label_2585:
	mov ax, 0x0A19 ; Register AX exploit
	nop

label_2586:
	mov ax, 0x0A1A ; Register AX exploit
	nop

label_2587:
	mov ax, 0x0A1B ; Register AX exploit
	nop

label_2588:
	mov ax, 0x0A1C ; Register AX exploit
	nop

label_2589:
	mov ax, 0x0A1D ; Register AX exploit
	nop

label_2590:
	mov ax, 0x0A1E ; Register AX exploit
	nop

label_2591:
	mov ax, 0x0A1F ; Register AX exploit
	nop

label_2592:
	mov ax, 0x0A20 ; Register AX exploit
	nop

label_2593:
	mov ax, 0x0A21 ; Register AX exploit
	nop

label_2594:
	mov ax, 0x0A22 ; Register AX exploit
	nop

label_2595:
	mov ax, 0x0A23 ; Register AX exploit
	nop

label_2596:
	mov ax, 0x0A24 ; Register AX exploit
	nop

label_2597:
	mov ax, 0x0A25 ; Register AX exploit
	nop

label_2598:
	mov ax, 0x0A26 ; Register AX exploit
	nop

label_2599:
	mov ax, 0x0A27 ; Register AX exploit
	nop

label_2600:
	mov ax, 0x0A28 ; Register AX exploit
	nop

label_2601:
	mov ax, 0x0A29 ; Register AX exploit
	nop

label_2602:
	mov ax, 0x0A2A ; Register AX exploit
	nop

label_2603:
	mov ax, 0x0A2B ; Register AX exploit
	nop

label_2604:
	mov ax, 0x0A2C ; Register AX exploit
	nop

label_2605:
	mov ax, 0x0A2D ; Register AX exploit
	nop

label_2606:
	mov ax, 0x0A2E ; Register AX exploit
	nop

label_2607:
	mov ax, 0x0A2F ; Register AX exploit
	nop

label_2608:
	mov ax, 0x0A30 ; Register AX exploit
	nop

label_2609:
	mov ax, 0x0A31 ; Register AX exploit
	nop

label_2610:
	mov ax, 0x0A32 ; Register AX exploit
	nop

label_2611:
	mov ax, 0x0A33 ; Register AX exploit
	nop

label_2612:
	mov ax, 0x0A34 ; Register AX exploit
	nop

label_2613:
	mov ax, 0x0A35 ; Register AX exploit
	nop

label_2614:
	mov ax, 0x0A36 ; Register AX exploit
	nop

label_2615:
	mov ax, 0x0A37 ; Register AX exploit
	nop

label_2616:
	mov ax, 0x0A38 ; Register AX exploit
	nop

label_2617:
	mov ax, 0x0A39 ; Register AX exploit
	nop

label_2618:
	mov ax, 0x0A3A ; Register AX exploit
	nop

label_2619:
	mov ax, 0x0A3B ; Register AX exploit
	nop

label_2620:
	mov ax, 0x0A3C ; Register AX exploit
	nop

label_2621:
	mov ax, 0x0A3D ; Register AX exploit
	nop

label_2622:
	mov ax, 0x0A3E ; Register AX exploit
	nop

label_2623:
	mov ax, 0x0A3F ; Register AX exploit
	nop

label_2624:
	mov ax, 0x0A40 ; Register AX exploit
	nop

label_2625:
	mov ax, 0x0A41 ; Register AX exploit
	nop

label_2626:
	mov ax, 0x0A42 ; Register AX exploit
	nop

label_2627:
	mov ax, 0x0A43 ; Register AX exploit
	nop

label_2628:
	mov ax, 0x0A44 ; Register AX exploit
	nop

label_2629:
	mov ax, 0x0A45 ; Register AX exploit
	nop

label_2630:
	mov ax, 0x0A46 ; Register AX exploit
	nop

label_2631:
	mov ax, 0x0A47 ; Register AX exploit
	nop

label_2632:
	mov ax, 0x0A48 ; Register AX exploit
	nop

label_2633:
	mov ax, 0x0A49 ; Register AX exploit
	nop

label_2634:
	mov ax, 0x0A4A ; Register AX exploit
	nop

label_2635:
	mov ax, 0x0A4B ; Register AX exploit
	nop

label_2636:
	mov ax, 0x0A4C ; Register AX exploit
	nop

label_2637:
	mov ax, 0x0A4D ; Register AX exploit
	nop

label_2638:
	mov ax, 0x0A4E ; Register AX exploit
	nop

label_2639:
	mov ax, 0x0A4F ; Register AX exploit
	nop

label_2640:
	mov ax, 0x0A50 ; Register AX exploit
	nop

label_2641:
	mov ax, 0x0A51 ; Register AX exploit
	nop

label_2642:
	mov ax, 0x0A52 ; Register AX exploit
	nop

label_2643:
	mov ax, 0x0A53 ; Register AX exploit
	nop

label_2644:
	mov ax, 0x0A54 ; Register AX exploit
	nop

label_2645:
	mov ax, 0x0A55 ; Register AX exploit
	nop

label_2646:
	mov ax, 0x0A56 ; Register AX exploit
	nop

label_2647:
	mov ax, 0x0A57 ; Register AX exploit
	nop

label_2648:
	mov ax, 0x0A58 ; Register AX exploit
	nop

label_2649:
	mov ax, 0x0A59 ; Register AX exploit
	nop

label_2650:
	mov ax, 0x0A5A ; Register AX exploit
	nop

label_2651:
	mov ax, 0x0A5B ; Register AX exploit
	nop

label_2652:
	mov ax, 0x0A5C ; Register AX exploit
	nop

label_2653:
	mov ax, 0x0A5D ; Register AX exploit
	nop

label_2654:
	mov ax, 0x0A5E ; Register AX exploit
	nop

label_2655:
	mov ax, 0x0A5F ; Register AX exploit
	nop

label_2656:
	mov ax, 0x0A60 ; Register AX exploit
	nop

label_2657:
	mov ax, 0x0A61 ; Register AX exploit
	nop

label_2658:
	mov ax, 0x0A62 ; Register AX exploit
	nop

label_2659:
	mov ax, 0x0A63 ; Register AX exploit
	nop

label_2660:
	mov ax, 0x0A64 ; Register AX exploit
	nop

label_2661:
	mov ax, 0x0A65 ; Register AX exploit
	nop

label_2662:
	mov ax, 0x0A66 ; Register AX exploit
	nop

label_2663:
	mov ax, 0x0A67 ; Register AX exploit
	nop

label_2664:
	mov ax, 0x0A68 ; Register AX exploit
	nop

label_2665:
	mov ax, 0x0A69 ; Register AX exploit
	nop

label_2666:
	mov ax, 0x0A6A ; Register AX exploit
	nop

label_2667:
	mov ax, 0x0A6B ; Register AX exploit
	nop

label_2668:
	mov ax, 0x0A6C ; Register AX exploit
	nop

label_2669:
	mov ax, 0x0A6D ; Register AX exploit
	nop

label_2670:
	mov ax, 0x0A6E ; Register AX exploit
	nop

label_2671:
	mov ax, 0x0A6F ; Register AX exploit
	nop

label_2672:
	mov ax, 0x0A70 ; Register AX exploit
	nop

label_2673:
	mov ax, 0x0A71 ; Register AX exploit
	nop

label_2674:
	mov ax, 0x0A72 ; Register AX exploit
	nop

label_2675:
	mov ax, 0x0A73 ; Register AX exploit
	nop

label_2676:
	mov ax, 0x0A74 ; Register AX exploit
	nop

label_2677:
	mov ax, 0x0A75 ; Register AX exploit
	nop

label_2678:
	mov ax, 0x0A76 ; Register AX exploit
	nop

label_2679:
	mov ax, 0x0A77 ; Register AX exploit
	nop

label_2680:
	mov ax, 0x0A78 ; Register AX exploit
	nop

label_2681:
	mov ax, 0x0A79 ; Register AX exploit
	nop

label_2682:
	mov ax, 0x0A7A ; Register AX exploit
	nop

label_2683:
	mov ax, 0x0A7B ; Register AX exploit
	nop

label_2684:
	mov ax, 0x0A7C ; Register AX exploit
	nop

label_2685:
	mov ax, 0x0A7D ; Register AX exploit
	nop

label_2686:
	mov ax, 0x0A7E ; Register AX exploit
	nop

label_2687:
	mov ax, 0x0A7F ; Register AX exploit
	nop

label_2688:
	mov ax, 0x0A80 ; Register AX exploit
	nop

label_2689:
	mov ax, 0x0A81 ; Register AX exploit
	nop

label_2690:
	mov ax, 0x0A82 ; Register AX exploit
	nop

label_2691:
	mov ax, 0x0A83 ; Register AX exploit
	nop

label_2692:
	mov ax, 0x0A84 ; Register AX exploit
	nop

label_2693:
	mov ax, 0x0A85 ; Register AX exploit
	nop

label_2694:
	mov ax, 0x0A86 ; Register AX exploit
	nop

label_2695:
	mov ax, 0x0A87 ; Register AX exploit
	nop

label_2696:
	mov ax, 0x0A88 ; Register AX exploit
	nop

label_2697:
	mov ax, 0x0A89 ; Register AX exploit
	nop

label_2698:
	mov ax, 0x0A8A ; Register AX exploit
	nop

label_2699:
	mov ax, 0x0A8B ; Register AX exploit
	nop

label_2700:
	mov ax, 0x0A8C ; Register AX exploit
	nop

label_2701:
	mov ax, 0x0A8D ; Register AX exploit
	nop

label_2702:
	mov ax, 0x0A8E ; Register AX exploit
	nop

label_2703:
	mov ax, 0x0A8F ; Register AX exploit
	nop

label_2704:
	mov ax, 0x0A90 ; Register AX exploit
	nop

label_2705:
	mov ax, 0x0A91 ; Register AX exploit
	nop

label_2706:
	mov ax, 0x0A92 ; Register AX exploit
	nop

label_2707:
	mov ax, 0x0A93 ; Register AX exploit
	nop

label_2708:
	mov ax, 0x0A94 ; Register AX exploit
	nop

label_2709:
	mov ax, 0x0A95 ; Register AX exploit
	nop

label_2710:
	mov ax, 0x0A96 ; Register AX exploit
	nop

label_2711:
	mov ax, 0x0A97 ; Register AX exploit
	nop

label_2712:
	mov ax, 0x0A98 ; Register AX exploit
	nop

label_2713:
	mov ax, 0x0A99 ; Register AX exploit
	nop

label_2714:
	mov ax, 0x0A9A ; Register AX exploit
	nop

label_2715:
	mov ax, 0x0A9B ; Register AX exploit
	nop

label_2716:
	mov ax, 0x0A9C ; Register AX exploit
	nop

label_2717:
	mov ax, 0x0A9D ; Register AX exploit
	nop

label_2718:
	mov ax, 0x0A9E ; Register AX exploit
	nop

label_2719:
	mov ax, 0x0A9F ; Register AX exploit
	nop

label_2720:
	mov ax, 0x0AA0 ; Register AX exploit
	nop

label_2721:
	mov ax, 0x0AA1 ; Register AX exploit
	nop

label_2722:
	mov ax, 0x0AA2 ; Register AX exploit
	nop

label_2723:
	mov ax, 0x0AA3 ; Register AX exploit
	nop

label_2724:
	mov ax, 0x0AA4 ; Register AX exploit
	nop

label_2725:
	mov ax, 0x0AA5 ; Register AX exploit
	nop

label_2726:
	mov ax, 0x0AA6 ; Register AX exploit
	nop

label_2727:
	mov ax, 0x0AA7 ; Register AX exploit
	nop

label_2728:
	mov ax, 0x0AA8 ; Register AX exploit
	nop

label_2729:
	mov ax, 0x0AA9 ; Register AX exploit
	nop

label_2730:
	mov ax, 0x0AAA ; Register AX exploit
	nop

label_2731:
	mov ax, 0x0AAB ; Register AX exploit
	nop

label_2732:
	mov ax, 0x0AAC ; Register AX exploit
	nop

label_2733:
	mov ax, 0x0AAD ; Register AX exploit
	nop

label_2734:
	mov ax, 0x0AAE ; Register AX exploit
	nop

label_2735:
	mov ax, 0x0AAF ; Register AX exploit
	nop

label_2736:
	mov ax, 0x0AB0 ; Register AX exploit
	nop

label_2737:
	mov ax, 0x0AB1 ; Register AX exploit
	nop

label_2738:
	mov ax, 0x0AB2 ; Register AX exploit
	nop

label_2739:
	mov ax, 0x0AB3 ; Register AX exploit
	nop

label_2740:
	mov ax, 0x0AB4 ; Register AX exploit
	nop

label_2741:
	mov ax, 0x0AB5 ; Register AX exploit
	nop

label_2742:
	mov ax, 0x0AB6 ; Register AX exploit
	nop

label_2743:
	mov ax, 0x0AB7 ; Register AX exploit
	nop

label_2744:
	mov ax, 0x0AB8 ; Register AX exploit
	nop

label_2745:
	mov ax, 0x0AB9 ; Register AX exploit
	nop

label_2746:
	mov ax, 0x0ABA ; Register AX exploit
	nop

label_2747:
	mov ax, 0x0ABB ; Register AX exploit
	nop

label_2748:
	mov ax, 0x0ABC ; Register AX exploit
	nop

label_2749:
	mov ax, 0x0ABD ; Register AX exploit
	nop

label_2750:
	mov ax, 0x0ABE ; Register AX exploit
	nop

label_2751:
	mov ax, 0x0ABF ; Register AX exploit
	nop

label_2752:
	mov ax, 0x0AC0 ; Register AX exploit
	nop

label_2753:
	mov ax, 0x0AC1 ; Register AX exploit
	nop

label_2754:
	mov ax, 0x0AC2 ; Register AX exploit
	nop

label_2755:
	mov ax, 0x0AC3 ; Register AX exploit
	nop

label_2756:
	mov ax, 0x0AC4 ; Register AX exploit
	nop

label_2757:
	mov ax, 0x0AC5 ; Register AX exploit
	nop

label_2758:
	mov ax, 0x0AC6 ; Register AX exploit
	nop

label_2759:
	mov ax, 0x0AC7 ; Register AX exploit
	nop

label_2760:
	mov ax, 0x0AC8 ; Register AX exploit
	nop

label_2761:
	mov ax, 0x0AC9 ; Register AX exploit
	nop

label_2762:
	mov ax, 0x0ACA ; Register AX exploit
	nop

label_2763:
	mov ax, 0x0ACB ; Register AX exploit
	nop

label_2764:
	mov ax, 0x0ACC ; Register AX exploit
	nop

label_2765:
	mov ax, 0x0ACD ; Register AX exploit
	nop

label_2766:
	mov ax, 0x0ACE ; Register AX exploit
	nop

label_2767:
	mov ax, 0x0ACF ; Register AX exploit
	nop

label_2768:
	mov ax, 0x0AD0 ; Register AX exploit
	nop

label_2769:
	mov ax, 0x0AD1 ; Register AX exploit
	nop

label_2770:
	mov ax, 0x0AD2 ; Register AX exploit
	nop

label_2771:
	mov ax, 0x0AD3 ; Register AX exploit
	nop

label_2772:
	mov ax, 0x0AD4 ; Register AX exploit
	nop

label_2773:
	mov ax, 0x0AD5 ; Register AX exploit
	nop

label_2774:
	mov ax, 0x0AD6 ; Register AX exploit
	nop

label_2775:
	mov ax, 0x0AD7 ; Register AX exploit
	nop

label_2776:
	mov ax, 0x0AD8 ; Register AX exploit
	nop

label_2777:
	mov ax, 0x0AD9 ; Register AX exploit
	nop

label_2778:
	mov ax, 0x0ADA ; Register AX exploit
	nop

label_2779:
	mov ax, 0x0ADB ; Register AX exploit
	nop

label_2780:
	mov ax, 0x0ADC ; Register AX exploit
	nop

label_2781:
	mov ax, 0x0ADD ; Register AX exploit
	nop

label_2782:
	mov ax, 0x0ADE ; Register AX exploit
	nop

label_2783:
	mov ax, 0x0ADF ; Register AX exploit
	nop

label_2784:
	mov ax, 0x0AE0 ; Register AX exploit
	nop

label_2785:
	mov ax, 0x0AE1 ; Register AX exploit
	nop

label_2786:
	mov ax, 0x0AE2 ; Register AX exploit
	nop

label_2787:
	mov ax, 0x0AE3 ; Register AX exploit
	nop

label_2788:
	mov ax, 0x0AE4 ; Register AX exploit
	nop

label_2789:
	mov ax, 0x0AE5 ; Register AX exploit
	nop

label_2790:
	mov ax, 0x0AE6 ; Register AX exploit
	nop

label_2791:
	mov ax, 0x0AE7 ; Register AX exploit
	nop

label_2792:
	mov ax, 0x0AE8 ; Register AX exploit
	nop

label_2793:
	mov ax, 0x0AE9 ; Register AX exploit
	nop

label_2794:
	mov ax, 0x0AEA ; Register AX exploit
	nop

label_2795:
	mov ax, 0x0AEB ; Register AX exploit
	nop

label_2796:
	mov ax, 0x0AEC ; Register AX exploit
	nop

label_2797:
	mov ax, 0x0AED ; Register AX exploit
	nop

label_2798:
	mov ax, 0x0AEE ; Register AX exploit
	nop

label_2799:
	mov ax, 0x0AEF ; Register AX exploit
	nop

label_2800:
	mov ax, 0x0AF0 ; Register AX exploit
	nop

label_2801:
	mov ax, 0x0AF1 ; Register AX exploit
	nop

label_2802:
	mov ax, 0x0AF2 ; Register AX exploit
	nop

label_2803:
	mov ax, 0x0AF3 ; Register AX exploit
	nop

label_2804:
	mov ax, 0x0AF4 ; Register AX exploit
	nop

label_2805:
	mov ax, 0x0AF5 ; Register AX exploit
	nop

label_2806:
	mov ax, 0x0AF6 ; Register AX exploit
	nop

label_2807:
	mov ax, 0x0AF7 ; Register AX exploit
	nop

label_2808:
	mov ax, 0x0AF8 ; Register AX exploit
	nop

label_2809:
	mov ax, 0x0AF9 ; Register AX exploit
	nop

label_2810:
	mov ax, 0x0AFA ; Register AX exploit
	nop

label_2811:
	mov ax, 0x0AFB ; Register AX exploit
	nop

label_2812:
	mov ax, 0x0AFC ; Register AX exploit
	nop

label_2813:
	mov ax, 0x0AFD ; Register AX exploit
	nop

label_2814:
	mov ax, 0x0AFE ; Register AX exploit
	nop

label_2815:
	mov ax, 0x0AFF ; Register AX exploit
	nop

label_2816:
	mov ax, 0x0B00 ; Register AX exploit
	nop

label_2817:
	mov ax, 0x0B01 ; Register AX exploit
	nop

label_2818:
	mov ax, 0x0B02 ; Register AX exploit
	nop

label_2819:
	mov ax, 0x0B03 ; Register AX exploit
	nop

label_2820:
	mov ax, 0x0B04 ; Register AX exploit
	nop

label_2821:
	mov ax, 0x0B05 ; Register AX exploit
	nop

label_2822:
	mov ax, 0x0B06 ; Register AX exploit
	nop

label_2823:
	mov ax, 0x0B07 ; Register AX exploit
	nop

label_2824:
	mov ax, 0x0B08 ; Register AX exploit
	nop

label_2825:
	mov ax, 0x0B09 ; Register AX exploit
	nop

label_2826:
	mov ax, 0x0B0A ; Register AX exploit
	nop

label_2827:
	mov ax, 0x0B0B ; Register AX exploit
	nop

label_2828:
	mov ax, 0x0B0C ; Register AX exploit
	nop

label_2829:
	mov ax, 0x0B0D ; Register AX exploit
	nop

label_2830:
	mov ax, 0x0B0E ; Register AX exploit
	nop

label_2831:
	mov ax, 0x0B0F ; Register AX exploit
	nop

label_2832:
	mov ax, 0x0B10 ; Register AX exploit
	nop

label_2833:
	mov ax, 0x0B11 ; Register AX exploit
	nop

label_2834:
	mov ax, 0x0B12 ; Register AX exploit
	nop

label_2835:
	mov ax, 0x0B13 ; Register AX exploit
	nop

label_2836:
	mov ax, 0x0B14 ; Register AX exploit
	nop

label_2837:
	mov ax, 0x0B15 ; Register AX exploit
	nop

label_2838:
	mov ax, 0x0B16 ; Register AX exploit
	nop

label_2839:
	mov ax, 0x0B17 ; Register AX exploit
	nop

label_2840:
	mov ax, 0x0B18 ; Register AX exploit
	nop

label_2841:
	mov ax, 0x0B19 ; Register AX exploit
	nop

label_2842:
	mov ax, 0x0B1A ; Register AX exploit
	nop

label_2843:
	mov ax, 0x0B1B ; Register AX exploit
	nop

label_2844:
	mov ax, 0x0B1C ; Register AX exploit
	nop

label_2845:
	mov ax, 0x0B1D ; Register AX exploit
	nop

label_2846:
	mov ax, 0x0B1E ; Register AX exploit
	nop

label_2847:
	mov ax, 0x0B1F ; Register AX exploit
	nop

label_2848:
	mov ax, 0x0B20 ; Register AX exploit
	nop

label_2849:
	mov ax, 0x0B21 ; Register AX exploit
	nop

label_2850:
	mov ax, 0x0B22 ; Register AX exploit
	nop

label_2851:
	mov ax, 0x0B23 ; Register AX exploit
	nop

label_2852:
	mov ax, 0x0B24 ; Register AX exploit
	nop

label_2853:
	mov ax, 0x0B25 ; Register AX exploit
	nop

label_2854:
	mov ax, 0x0B26 ; Register AX exploit
	nop

label_2855:
	mov ax, 0x0B27 ; Register AX exploit
	nop

label_2856:
	mov ax, 0x0B28 ; Register AX exploit
	nop

label_2857:
	mov ax, 0x0B29 ; Register AX exploit
	nop

label_2858:
	mov ax, 0x0B2A ; Register AX exploit
	nop

label_2859:
	mov ax, 0x0B2B ; Register AX exploit
	nop

label_2860:
	mov ax, 0x0B2C ; Register AX exploit
	nop

label_2861:
	mov ax, 0x0B2D ; Register AX exploit
	nop

label_2862:
	mov ax, 0x0B2E ; Register AX exploit
	nop

label_2863:
	mov ax, 0x0B2F ; Register AX exploit
	nop

label_2864:
	mov ax, 0x0B30 ; Register AX exploit
	nop

label_2865:
	mov ax, 0x0B31 ; Register AX exploit
	nop

label_2866:
	mov ax, 0x0B32 ; Register AX exploit
	nop

label_2867:
	mov ax, 0x0B33 ; Register AX exploit
	nop

label_2868:
	mov ax, 0x0B34 ; Register AX exploit
	nop

label_2869:
	mov ax, 0x0B35 ; Register AX exploit
	nop

label_2870:
	mov ax, 0x0B36 ; Register AX exploit
	nop

label_2871:
	mov ax, 0x0B37 ; Register AX exploit
	nop

label_2872:
	mov ax, 0x0B38 ; Register AX exploit
	nop

label_2873:
	mov ax, 0x0B39 ; Register AX exploit
	nop

label_2874:
	mov ax, 0x0B3A ; Register AX exploit
	nop

label_2875:
	mov ax, 0x0B3B ; Register AX exploit
	nop

label_2876:
	mov ax, 0x0B3C ; Register AX exploit
	nop

label_2877:
	mov ax, 0x0B3D ; Register AX exploit
	nop

label_2878:
	mov ax, 0x0B3E ; Register AX exploit
	nop

label_2879:
	mov ax, 0x0B3F ; Register AX exploit
	nop

label_2880:
	mov ax, 0x0B40 ; Register AX exploit
	nop

label_2881:
	mov ax, 0x0B41 ; Register AX exploit
	nop

label_2882:
	mov ax, 0x0B42 ; Register AX exploit
	nop

label_2883:
	mov ax, 0x0B43 ; Register AX exploit
	nop

label_2884:
	mov ax, 0x0B44 ; Register AX exploit
	nop

label_2885:
	mov ax, 0x0B45 ; Register AX exploit
	nop

label_2886:
	mov ax, 0x0B46 ; Register AX exploit
	nop

label_2887:
	mov ax, 0x0B47 ; Register AX exploit
	nop

label_2888:
	mov ax, 0x0B48 ; Register AX exploit
	nop

label_2889:
	mov ax, 0x0B49 ; Register AX exploit
	nop

label_2890:
	mov ax, 0x0B4A ; Register AX exploit
	nop

label_2891:
	mov ax, 0x0B4B ; Register AX exploit
	nop

label_2892:
	mov ax, 0x0B4C ; Register AX exploit
	nop

label_2893:
	mov ax, 0x0B4D ; Register AX exploit
	nop

label_2894:
	mov ax, 0x0B4E ; Register AX exploit
	nop

label_2895:
	mov ax, 0x0B4F ; Register AX exploit
	nop

label_2896:
	mov ax, 0x0B50 ; Register AX exploit
	nop

label_2897:
	mov ax, 0x0B51 ; Register AX exploit
	nop

label_2898:
	mov ax, 0x0B52 ; Register AX exploit
	nop

label_2899:
	mov ax, 0x0B53 ; Register AX exploit
	nop

label_2900:
	mov ax, 0x0B54 ; Register AX exploit
	nop

label_2901:
	mov ax, 0x0B55 ; Register AX exploit
	nop

label_2902:
	mov ax, 0x0B56 ; Register AX exploit
	nop

label_2903:
	mov ax, 0x0B57 ; Register AX exploit
	nop

label_2904:
	mov ax, 0x0B58 ; Register AX exploit
	nop

label_2905:
	mov ax, 0x0B59 ; Register AX exploit
	nop

label_2906:
	mov ax, 0x0B5A ; Register AX exploit
	nop

label_2907:
	mov ax, 0x0B5B ; Register AX exploit
	nop

label_2908:
	mov ax, 0x0B5C ; Register AX exploit
	nop

label_2909:
	mov ax, 0x0B5D ; Register AX exploit
	nop

label_2910:
	mov ax, 0x0B5E ; Register AX exploit
	nop

label_2911:
	mov ax, 0x0B5F ; Register AX exploit
	nop

label_2912:
	mov ax, 0x0B60 ; Register AX exploit
	nop

label_2913:
	mov ax, 0x0B61 ; Register AX exploit
	nop

label_2914:
	mov ax, 0x0B62 ; Register AX exploit
	nop

label_2915:
	mov ax, 0x0B63 ; Register AX exploit
	nop

label_2916:
	mov ax, 0x0B64 ; Register AX exploit
	nop

label_2917:
	mov ax, 0x0B65 ; Register AX exploit
	nop

label_2918:
	mov ax, 0x0B66 ; Register AX exploit
	nop

label_2919:
	mov ax, 0x0B67 ; Register AX exploit
	nop

label_2920:
	mov ax, 0x0B68 ; Register AX exploit
	nop

label_2921:
	mov ax, 0x0B69 ; Register AX exploit
	nop

label_2922:
	mov ax, 0x0B6A ; Register AX exploit
	nop

label_2923:
	mov ax, 0x0B6B ; Register AX exploit
	nop

label_2924:
	mov ax, 0x0B6C ; Register AX exploit
	nop

label_2925:
	mov ax, 0x0B6D ; Register AX exploit
	nop

label_2926:
	mov ax, 0x0B6E ; Register AX exploit
	nop

label_2927:
	mov ax, 0x0B6F ; Register AX exploit
	nop

label_2928:
	mov ax, 0x0B70 ; Register AX exploit
	nop

label_2929:
	mov ax, 0x0B71 ; Register AX exploit
	nop

label_2930:
	mov ax, 0x0B72 ; Register AX exploit
	nop

label_2931:
	mov ax, 0x0B73 ; Register AX exploit
	nop

label_2932:
	mov ax, 0x0B74 ; Register AX exploit
	nop

label_2933:
	mov ax, 0x0B75 ; Register AX exploit
	nop

label_2934:
	mov ax, 0x0B76 ; Register AX exploit
	nop

label_2935:
	mov ax, 0x0B77 ; Register AX exploit
	nop

label_2936:
	mov ax, 0x0B78 ; Register AX exploit
	nop

label_2937:
	mov ax, 0x0B79 ; Register AX exploit
	nop

label_2938:
	mov ax, 0x0B7A ; Register AX exploit
	nop

label_2939:
	mov ax, 0x0B7B ; Register AX exploit
	nop

label_2940:
	mov ax, 0x0B7C ; Register AX exploit
	nop

label_2941:
	mov ax, 0x0B7D ; Register AX exploit
	nop

label_2942:
	mov ax, 0x0B7E ; Register AX exploit
	nop

label_2943:
	mov ax, 0x0B7F ; Register AX exploit
	nop

label_2944:
	mov ax, 0x0B80 ; Register AX exploit
	nop

label_2945:
	mov ax, 0x0B81 ; Register AX exploit
	nop

label_2946:
	mov ax, 0x0B82 ; Register AX exploit
	nop

label_2947:
	mov ax, 0x0B83 ; Register AX exploit
	nop

label_2948:
	mov ax, 0x0B84 ; Register AX exploit
	nop

label_2949:
	mov ax, 0x0B85 ; Register AX exploit
	nop

label_2950:
	mov ax, 0x0B86 ; Register AX exploit
	nop

label_2951:
	mov ax, 0x0B87 ; Register AX exploit
	nop

label_2952:
	mov ax, 0x0B88 ; Register AX exploit
	nop

label_2953:
	mov ax, 0x0B89 ; Register AX exploit
	nop

label_2954:
	mov ax, 0x0B8A ; Register AX exploit
	nop

label_2955:
	mov ax, 0x0B8B ; Register AX exploit
	nop

label_2956:
	mov ax, 0x0B8C ; Register AX exploit
	nop

label_2957:
	mov ax, 0x0B8D ; Register AX exploit
	nop

label_2958:
	mov ax, 0x0B8E ; Register AX exploit
	nop

label_2959:
	mov ax, 0x0B8F ; Register AX exploit
	nop

label_2960:
	mov ax, 0x0B90 ; Register AX exploit
	nop

label_2961:
	mov ax, 0x0B91 ; Register AX exploit
	nop

label_2962:
	mov ax, 0x0B92 ; Register AX exploit
	nop

label_2963:
	mov ax, 0x0B93 ; Register AX exploit
	nop

label_2964:
	mov ax, 0x0B94 ; Register AX exploit
	nop

label_2965:
	mov ax, 0x0B95 ; Register AX exploit
	nop

label_2966:
	mov ax, 0x0B96 ; Register AX exploit
	nop

label_2967:
	mov ax, 0x0B97 ; Register AX exploit
	nop

label_2968:
	mov ax, 0x0B98 ; Register AX exploit
	nop

label_2969:
	mov ax, 0x0B99 ; Register AX exploit
	nop

label_2970:
	mov ax, 0x0B9A ; Register AX exploit
	nop

label_2971:
	mov ax, 0x0B9B ; Register AX exploit
	nop

label_2972:
	mov ax, 0x0B9C ; Register AX exploit
	nop

label_2973:
	mov ax, 0x0B9D ; Register AX exploit
	nop

label_2974:
	mov ax, 0x0B9E ; Register AX exploit
	nop

label_2975:
	mov ax, 0x0B9F ; Register AX exploit
	nop

label_2976:
	mov ax, 0x0BA0 ; Register AX exploit
	nop

label_2977:
	mov ax, 0x0BA1 ; Register AX exploit
	nop

label_2978:
	mov ax, 0x0BA2 ; Register AX exploit
	nop

label_2979:
	mov ax, 0x0BA3 ; Register AX exploit
	nop

label_2980:
	mov ax, 0x0BA4 ; Register AX exploit
	nop

label_2981:
	mov ax, 0x0BA5 ; Register AX exploit
	nop

label_2982:
	mov ax, 0x0BA6 ; Register AX exploit
	nop

label_2983:
	mov ax, 0x0BA7 ; Register AX exploit
	nop

label_2984:
	mov ax, 0x0BA8 ; Register AX exploit
	nop

label_2985:
	mov ax, 0x0BA9 ; Register AX exploit
	nop

label_2986:
	mov ax, 0x0BAA ; Register AX exploit
	nop

label_2987:
	mov ax, 0x0BAB ; Register AX exploit
	nop

label_2988:
	mov ax, 0x0BAC ; Register AX exploit
	nop

label_2989:
	mov ax, 0x0BAD ; Register AX exploit
	nop

label_2990:
	mov ax, 0x0BAE ; Register AX exploit
	nop

label_2991:
	mov ax, 0x0BAF ; Register AX exploit
	nop

label_2992:
	mov ax, 0x0BB0 ; Register AX exploit
	nop

label_2993:
	mov ax, 0x0BB1 ; Register AX exploit
	nop

label_2994:
	mov ax, 0x0BB2 ; Register AX exploit
	nop

label_2995:
	mov ax, 0x0BB3 ; Register AX exploit
	nop

label_2996:
	mov ax, 0x0BB4 ; Register AX exploit
	nop

label_2997:
	mov ax, 0x0BB5 ; Register AX exploit
	nop

label_2998:
	mov ax, 0x0BB6 ; Register AX exploit
	nop

label_2999:
	mov ax, 0x0BB7 ; Register AX exploit
	nop

label_3000:
	mov ax, 0x0BB8 ; Register AX exploit
	nop
