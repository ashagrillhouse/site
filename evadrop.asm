;----------------------------------------------------
; FAKE VIRUS PAYLOAD - Codename: BlackWidow 🕷️
; ---------------------------------------------------
; Disclaimer: This code does NOTHING. It is only a prank.
; Author: 🐍 The Prankster
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

    mov eax, 0x1337       ; Fake privilege level
    call elevate_privs

main_loop:
    call scan_kernel_table
    call map_shadow_memory
    call overwrite_syscalls
    call dropper_routine
    jmp $                 ; Loop forever (harmless)

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
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_0
fake_function_0:
    ret
    nop                         ; line 2
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_1
fake_function_1:
    ret
    nop                         ; line 3
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_2
fake_function_2:
    ret
    nop                         ; line 4
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_3
fake_function_3:
    ret
    nop                         ; line 5
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_4
fake_function_4:
    ret
    nop                         ; line 6
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_5
fake_function_5:
    ret
    nop                         ; line 7
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_6
fake_function_6:
    ret
    nop                         ; line 8
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_7
fake_function_7:
    ret
    nop                         ; line 9
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_8
fake_function_8:
    ret
    nop                         ; line 10
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_9
fake_function_9:
    ret
    nop                         ; line 11
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_10
fake_function_10:
    ret
    nop                         ; line 12
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_11
fake_function_11:
    ret
    nop                         ; line 13
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_12
fake_function_12:
    ret
    nop                         ; line 14
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_13
fake_function_13:
    ret
    nop                         ; line 15
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_14
fake_function_14:
    ret
    nop                         ; line 16
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_15
fake_function_15:
    ret
    nop                         ; line 17
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_16
fake_function_16:
    ret
    nop                         ; line 18
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_17
fake_function_17:
    ret
    nop                         ; line 19
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_18
fake_function_18:
    ret
    nop                         ; line 20
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_19
fake_function_19:
    ret
    nop                         ; line 21
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_20
fake_function_20:
    ret
    nop                         ; line 22
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_21
fake_function_21:
    ret
    nop                         ; line 23
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_22
fake_function_22:
    ret
    nop                         ; line 24
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_23
fake_function_23:
    ret
    nop                         ; line 25
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_24
fake_function_24:
    ret
    nop                         ; line 26
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_25
fake_function_25:
    ret
    nop                         ; line 27
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_26
fake_function_26:
    ret
    nop                         ; line 28
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_27
fake_function_27:
    ret
    nop                         ; line 29
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_28
fake_function_28:
    ret
    nop                         ; line 30
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_29
fake_function_29:
    ret
    nop                         ; line 31
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_30
fake_function_30:
    ret
    nop                         ; line 32
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_31
fake_function_31:
    ret
    nop                         ; line 33
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_32
fake_function_32:
    ret
    nop                         ; line 34
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_33
fake_function_33:
    ret
    nop                         ; line 35
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_34
fake_function_34:
    ret
    nop                         ; line 36
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_35
fake_function_35:
    ret
    nop                         ; line 37
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_36
fake_function_36:
    ret
    nop                         ; line 38
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_37
fake_function_37:
    ret
    nop                         ; line 39
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_38
fake_function_38:
    ret
    nop                         ; line 40
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_39
fake_function_39:
    ret
    nop                         ; line 41
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_40
fake_function_40:
    ret
    nop                         ; line 42
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_41
fake_function_41:
    ret
    nop                         ; line 43
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_42
fake_function_42:
    ret
    nop                         ; line 44
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_43
fake_function_43:
    ret
    nop                         ; line 45
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_44
fake_function_44:
    ret
    nop                         ; line 46
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_45
fake_function_45:
    ret
    nop                         ; line 47
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_46
fake_function_46:
    ret
    nop                         ; line 48
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_47
fake_function_47:
    ret
    nop                         ; line 49
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_48
fake_function_48:
    ret
    nop                         ; line 50
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_49
fake_function_49:
    ret
    nop                         ; line 51
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_50
fake_function_50:
    ret
    nop                         ; line 52
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_51
fake_function_51:
    ret
    nop                         ; line 53
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_52
fake_function_52:
    ret
    nop                         ; line 54
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_53
fake_function_53:
    ret
    nop                         ; line 55
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_54
fake_function_54:
    ret
    nop                         ; line 56
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_55
fake_function_55:
    ret
    nop                         ; line 57
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_56
fake_function_56:
    ret
    nop                         ; line 58
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_57
fake_function_57:
    ret
    nop                         ; line 59
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_58
fake_function_58:
    ret
    nop                         ; line 60
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_59
fake_function_59:
    ret
    nop                         ; line 61
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_60
fake_function_60:
    ret
    nop                         ; line 62
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_61
fake_function_61:
    ret
    nop                         ; line 63
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_62
fake_function_62:
    ret
    nop                         ; line 64
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_63
fake_function_63:
    ret
    nop                         ; line 65
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_64
fake_function_64:
    ret
    nop                         ; line 66
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_65
fake_function_65:
    ret
    nop                         ; line 67
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_66
fake_function_66:
    ret
    nop                         ; line 68
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_67
fake_function_67:
    ret
    nop                         ; line 69
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_68
fake_function_68:
    ret
    nop                         ; line 70
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_69
fake_function_69:
    ret
    nop                         ; line 71
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_70
fake_function_70:
    ret
    nop                         ; line 72
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_71
fake_function_71:
    ret
    nop                         ; line 73
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_72
fake_function_72:
    ret
    nop                         ; line 74
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_73
fake_function_73:
    ret
    nop                         ; line 75
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_74
fake_function_74:
    ret
    nop                         ; line 76
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_75
fake_function_75:
    ret
    nop                         ; line 77
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_76
fake_function_76:
    ret
    nop                         ; line 78
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_77
fake_function_77:
    ret
    nop                         ; line 79
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_78
fake_function_78:
    ret
    nop                         ; line 80
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_79
fake_function_79:
    ret
    nop                         ; line 81
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_80
fake_function_80:
    ret
    nop                         ; line 82
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_81
fake_function_81:
    ret
    nop                         ; line 83
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_82
fake_function_82:
    ret
    nop                         ; line 84
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_83
fake_function_83:
    ret
    nop                         ; line 85
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_84
fake_function_84:
    ret
    nop                         ; line 86
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_85
fake_function_85:
    ret
    nop                         ; line 87
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_86
fake_function_86:
    ret
    nop                         ; line 88
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_87
fake_function_87:
    ret
    nop                         ; line 89
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_88
fake_function_88:
    ret
    nop                         ; line 90
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_89
fake_function_89:
    ret
    nop                         ; line 91
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_90
fake_function_90:
    ret
    nop                         ; line 92
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_91
fake_function_91:
    ret
    nop                         ; line 93
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_92
fake_function_92:
    ret
    nop                         ; line 94
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_93
fake_function_93:
    ret
    nop                         ; line 95
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_94
fake_function_94:
    ret
    nop                         ; line 96
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_95
fake_function_95:
    ret
    nop                         ; line 97
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_96
fake_function_96:
    ret
    nop                         ; line 98
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_97
fake_function_97:
    ret
    nop                         ; line 99
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_98
fake_function_98:
    ret
    nop                         ; line 100
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_99
fake_function_99:
    ret
    nop                         ; line 101
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_100
fake_function_100:
    ret
    nop                         ; line 102
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_101
fake_function_101:
    ret
    nop                         ; line 103
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_102
fake_function_102:
    ret
    nop                         ; line 104
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_103
fake_function_103:
    ret
    nop                         ; line 105
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_104
fake_function_104:
    ret
    nop                         ; line 106
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_105
fake_function_105:
    ret
    nop                         ; line 107
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_106
fake_function_106:
    ret
    nop                         ; line 108
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_107
fake_function_107:
    ret
    nop                         ; line 109
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_108
fake_function_108:
    ret
    nop                         ; line 110
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_109
fake_function_109:
    ret
    nop                         ; line 111
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_110
fake_function_110:
    ret
    nop                         ; line 112
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_111
fake_function_111:
    ret
    nop                         ; line 113
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_112
fake_function_112:
    ret
    nop                         ; line 114
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_113
fake_function_113:
    ret
    nop                         ; line 115
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_114
fake_function_114:
    ret
    nop                         ; line 116
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_115
fake_function_115:
    ret
    nop                         ; line 117
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_116
fake_function_116:
    ret
    nop                         ; line 118
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_117
fake_function_117:
    ret
    nop                         ; line 119
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_118
fake_function_118:
    ret
    nop                         ; line 120
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_119
fake_function_119:
    ret
    nop                         ; line 121
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_120
fake_function_120:
    ret
    nop                         ; line 122
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_121
fake_function_121:
    ret
    nop                         ; line 123
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_122
fake_function_122:
    ret
    nop                         ; line 124
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_123
fake_function_123:
    ret
    nop                         ; line 125
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_124
fake_function_124:
    ret
    nop                         ; line 126
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_125
fake_function_125:
    ret
    nop                         ; line 127
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_126
fake_function_126:
    ret
    nop                         ; line 128
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_127
fake_function_127:
    ret
    nop                         ; line 129
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_128
fake_function_128:
    ret
    nop                         ; line 130
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_129
fake_function_129:
    ret
    nop                         ; line 131
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_130
fake_function_130:
    ret
    nop                         ; line 132
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_131
fake_function_131:
    ret
    nop                         ; line 133
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_132
fake_function_132:
    ret
    nop                         ; line 134
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_133
fake_function_133:
    ret
    nop                         ; line 135
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_134
fake_function_134:
    ret
    nop                         ; line 136
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_135
fake_function_135:
    ret
    nop                         ; line 137
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_136
fake_function_136:
    ret
    nop                         ; line 138
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_137
fake_function_137:
    ret
    nop                         ; line 139
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_138
fake_function_138:
    ret
    nop                         ; line 140
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_139
fake_function_139:
    ret
    nop                         ; line 141
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_140
fake_function_140:
    ret
    nop                         ; line 142
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_141
fake_function_141:
    ret
    nop                         ; line 143
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_142
fake_function_142:
    ret
    nop                         ; line 144
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_143
fake_function_143:
    ret
    nop                         ; line 145
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_144
fake_function_144:
    ret
    nop                         ; line 146
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_145
fake_function_145:
    ret
    nop                         ; line 147
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_146
fake_function_146:
    ret
    nop                         ; line 148
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_147
fake_function_147:
    ret
    nop                         ; line 149
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_148
fake_function_148:
    ret
    nop                         ; line 150
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_149
fake_function_149:
    ret
    nop                         ; line 151
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_150
fake_function_150:
    ret
    nop                         ; line 152
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_151
fake_function_151:
    ret
    nop                         ; line 153
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_152
fake_function_152:
    ret
    nop                         ; line 154
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_153
fake_function_153:
    ret
    nop                         ; line 155
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_154
fake_function_154:
    ret
    nop                         ; line 156
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_155
fake_function_155:
    ret
    nop                         ; line 157
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_156
fake_function_156:
    ret
    nop                         ; line 158
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_157
fake_function_157:
    ret
    nop                         ; line 159
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_158
fake_function_158:
    ret
    nop                         ; line 160
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_159
fake_function_159:
    ret
    nop                         ; line 161
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_160
fake_function_160:
    ret
    nop                         ; line 162
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_161
fake_function_161:
    ret
    nop                         ; line 163
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_162
fake_function_162:
    ret
    nop                         ; line 164
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_163
fake_function_163:
    ret
    nop                         ; line 165
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_164
fake_function_164:
    ret
    nop                         ; line 166
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_165
fake_function_165:
    ret
    nop                         ; line 167
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_166
fake_function_166:
    ret
    nop                         ; line 168
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_167
fake_function_167:
    ret
    nop                         ; line 169
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_168
fake_function_168:
    ret
    nop                         ; line 170
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_169
fake_function_169:
    ret
    nop                         ; line 171
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_170
fake_function_170:
    ret
    nop                         ; line 172
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_171
fake_function_171:
    ret
    nop                         ; line 173
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_172
fake_function_172:
    ret
    nop                         ; line 174
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_173
fake_function_173:
    ret
    nop                         ; line 175
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_174
fake_function_174:
    ret
    nop                         ; line 176
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_175
fake_function_175:
    ret
    nop                         ; line 177
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_176
fake_function_176:
    ret
    nop                         ; line 178
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_177
fake_function_177:
    ret
    nop                         ; line 179
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_178
fake_function_178:
    ret
    nop                         ; line 180
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_179
fake_function_179:
    ret
    nop                         ; line 181
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_180
fake_function_180:
    ret
    nop                         ; line 182
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_181
fake_function_181:
    ret
    nop                         ; line 183
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_182
fake_function_182:
    ret
    nop                         ; line 184
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_183
fake_function_183:
    ret
    nop                         ; line 185
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_184
fake_function_184:
    ret
    nop                         ; line 186
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_185
fake_function_185:
    ret
    nop                         ; line 187
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_186
fake_function_186:
    ret
    nop                         ; line 188
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_187
fake_function_187:
    ret
    nop                         ; line 189
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_188
fake_function_188:
    ret
    nop                         ; line 190
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_189
fake_function_189:
    ret
    nop                         ; line 191
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_190
fake_function_190:
    ret
    nop                         ; line 192
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_191
fake_function_191:
    ret
    nop                         ; line 193
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_192
fake_function_192:
    ret
    nop                         ; line 194
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_193
fake_function_193:
    ret
    nop                         ; line 195
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_194
fake_function_194:
    ret
    nop                         ; line 196
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_195
fake_function_195:
    ret
    nop                         ; line 197
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_196
fake_function_196:
    ret
    nop                         ; line 198
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_197
fake_function_197:
    ret
    nop                         ; line 199
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_198
fake_function_198:
    ret
    nop                         ; line 200
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_199
fake_function_199:
    ret
    nop                         ; line 201
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_200
fake_function_200:
    ret
    nop                         ; line 202
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_201
fake_function_201:
    ret
    nop                         ; line 203
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_202
fake_function_202:
    ret
    nop                         ; line 204
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_203
fake_function_203:
    ret
    nop                         ; line 205
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_204
fake_function_204:
    ret
    nop                         ; line 206
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_205
fake_function_205:
    ret
    nop                         ; line 207
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_206
fake_function_206:
    ret
    nop                         ; line 208
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_207
fake_function_207:
    ret
    nop                         ; line 209
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_208
fake_function_208:
    ret
    nop                         ; line 210
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_209
fake_function_209:
    ret
    nop                         ; line 211
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_210
fake_function_210:
    ret
    nop                         ; line 212
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_211
fake_function_211:
    ret
    nop                         ; line 213
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_212
fake_function_212:
    ret
    nop                         ; line 214
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_213
fake_function_213:
    ret
    nop                         ; line 215
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_214
fake_function_214:
    ret
    nop                         ; line 216
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_215
fake_function_215:
    ret
    nop                         ; line 217
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_216
fake_function_216:
    ret
    nop                         ; line 218
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_217
fake_function_217:
    ret
    nop                         ; line 219
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_218
fake_function_218:
    ret
    nop                         ; line 220
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_219
fake_function_219:
    ret
    nop                         ; line 221
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_220
fake_function_220:
    ret
    nop                         ; line 222
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_221
fake_function_221:
    ret
    nop                         ; line 223
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_222
fake_function_222:
    ret
    nop                         ; line 224
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_223
fake_function_223:
    ret
    nop                         ; line 225
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_224
fake_function_224:
    ret
    nop                         ; line 226
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_225
fake_function_225:
    ret
    nop                         ; line 227
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_226
fake_function_226:
    ret
    nop                         ; line 228
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_227
fake_function_227:
    ret
    nop                         ; line 229
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_228
fake_function_228:
    ret
    nop                         ; line 230
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_229
fake_function_229:
    ret
    nop                         ; line 231
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_230
fake_function_230:
    ret
    nop                         ; line 232
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_231
fake_function_231:
    ret
    nop                         ; line 233
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_232
fake_function_232:
    ret
    nop                         ; line 234
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_233
fake_function_233:
    ret
    nop                         ; line 235
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_234
fake_function_234:
    ret
    nop                         ; line 236
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_235
fake_function_235:
    ret
    nop                         ; line 237
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_236
fake_function_236:
    ret
    nop                         ; line 238
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_237
fake_function_237:
    ret
    nop                         ; line 239
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_238
fake_function_238:
    ret
    nop                         ; line 240
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_239
fake_function_239:
    ret
    nop                         ; line 241
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_240
fake_function_240:
    ret
    nop                         ; line 242
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_241
fake_function_241:
    ret
    nop                         ; line 243
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_242
fake_function_242:
    ret
    nop                         ; line 244
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_243
fake_function_243:
    ret
    nop                         ; line 245
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_244
fake_function_244:
    ret
    nop                         ; line 246
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_245
fake_function_245:
    ret
    nop                         ; line 247
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_246
fake_function_246:
    ret
    nop                         ; line 248
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_247
fake_function_247:
    ret
    nop                         ; line 249
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_248
fake_function_248:
    ret
    nop                         ; line 250
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_249
fake_function_249:
    ret
    nop                         ; line 251
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_250
fake_function_250:
    ret
    nop                         ; line 252
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_251
fake_function_251:
    ret
    nop                         ; line 253
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_252
fake_function_252:
    ret
    nop                         ; line 254
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_253
fake_function_253:
    ret
    nop                         ; line 255
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_254
fake_function_254:
    ret
    nop                         ; line 256
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_255
fake_function_255:
    ret
    nop                         ; line 257
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_256
fake_function_256:
    ret
    nop                         ; line 258
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_257
fake_function_257:
    ret
    nop                         ; line 259
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_258
fake_function_258:
    ret
    nop                         ; line 260
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_259
fake_function_259:
    ret
    nop                         ; line 261
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_260
fake_function_260:
    ret
    nop                         ; line 262
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_261
fake_function_261:
    ret
    nop                         ; line 263
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_262
fake_function_262:
    ret
    nop                         ; line 264
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_263
fake_function_263:
    ret
    nop                         ; line 265
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_264
fake_function_264:
    ret
    nop                         ; line 266
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_265
fake_function_265:
    ret
    nop                         ; line 267
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_266
fake_function_266:
    ret
    nop                         ; line 268
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_267
fake_function_267:
    ret
    nop                         ; line 269
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_268
fake_function_268:
    ret
    nop                         ; line 270
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_269
fake_function_269:
    ret
    nop                         ; line 271
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_270
fake_function_270:
    ret
    nop                         ; line 272
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_271
fake_function_271:
    ret
    nop                         ; line 273
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_272
fake_function_272:
    ret
    nop                         ; line 274
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_273
fake_function_273:
    ret
    nop                         ; line 275
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_274
fake_function_274:
    ret
    nop                         ; line 276
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_275
fake_function_275:
    ret
    nop                         ; line 277
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_276
fake_function_276:
    ret
    nop                         ; line 278
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_277
fake_function_277:
    ret
    nop                         ; line 279
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_278
fake_function_278:
    ret
    nop                         ; line 280
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_279
fake_function_279:
    ret
    nop                         ; line 281
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_280
fake_function_280:
    ret
    nop                         ; line 282
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_281
fake_function_281:
    ret
    nop                         ; line 283
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_282
fake_function_282:
    ret
    nop                         ; line 284
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_283
fake_function_283:
    ret
    nop                         ; line 285
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_284
fake_function_284:
    ret
    nop                         ; line 286
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_285
fake_function_285:
    ret
    nop                         ; line 287
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_286
fake_function_286:
    ret
    nop                         ; line 288
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_287
fake_function_287:
    ret
    nop                         ; line 289
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_288
fake_function_288:
    ret
    nop                         ; line 290
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_289
fake_function_289:
    ret
    nop                         ; line 291
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_290
fake_function_290:
    ret
    nop                         ; line 292
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_291
fake_function_291:
    ret
    nop                         ; line 293
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_292
fake_function_292:
    ret
    nop                         ; line 294
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_293
fake_function_293:
    ret
    nop                         ; line 295
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_294
fake_function_294:
    ret
    nop                         ; line 296
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_295
fake_function_295:
    ret
    nop                         ; line 297
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_296
fake_function_296:
    ret
    nop                         ; line 298
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_297
fake_function_297:
    ret
    nop                         ; line 299
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_298
fake_function_298:
    ret
    nop                         ; line 300
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_299
fake_function_299:
    ret
    nop                         ; line 301
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_300
fake_function_300:
    ret
    nop                         ; line 302
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_301
fake_function_301:
    ret
    nop                         ; line 303
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_302
fake_function_302:
    ret
    nop                         ; line 304
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_303
fake_function_303:
    ret
    nop                         ; line 305
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_304
fake_function_304:
    ret
    nop                         ; line 306
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_305
fake_function_305:
    ret
    nop                         ; line 307
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_306
fake_function_306:
    ret
    nop                         ; line 308
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_307
fake_function_307:
    ret
    nop                         ; line 309
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_308
fake_function_308:
    ret
    nop                         ; line 310
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_309
fake_function_309:
    ret
    nop                         ; line 311
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_310
fake_function_310:
    ret
    nop                         ; line 312
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_311
fake_function_311:
    ret
    nop                         ; line 313
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_312
fake_function_312:
    ret
    nop                         ; line 314
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_313
fake_function_313:
    ret
    nop                         ; line 315
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_314
fake_function_314:
    ret
    nop                         ; line 316
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_315
fake_function_315:
    ret
    nop                         ; line 317
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_316
fake_function_316:
    ret
    nop                         ; line 318
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_317
fake_function_317:
    ret
    nop                         ; line 319
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_318
fake_function_318:
    ret
    nop                         ; line 320
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_319
fake_function_319:
    ret
    nop                         ; line 321
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_320
fake_function_320:
    ret
    nop                         ; line 322
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_321
fake_function_321:
    ret
    nop                         ; line 323
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_322
fake_function_322:
    ret
    nop                         ; line 324
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_323
fake_function_323:
    ret
    nop                         ; line 325
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_324
fake_function_324:
    ret
    nop                         ; line 326
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_325
fake_function_325:
    ret
    nop                         ; line 327
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_326
fake_function_326:
    ret
    nop                         ; line 328
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_327
fake_function_327:
    ret
    nop                         ; line 329
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_328
fake_function_328:
    ret
    nop                         ; line 330
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_329
fake_function_329:
    ret
    nop                         ; line 331
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_330
fake_function_330:
    ret
    nop                         ; line 332
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_331
fake_function_331:
    ret
    nop                         ; line 333
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_332
fake_function_332:
    ret
    nop                         ; line 334
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_333
fake_function_333:
    ret
    nop                         ; line 335
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_334
fake_function_334:
    ret
    nop                         ; line 336
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_335
fake_function_335:
    ret
    nop                         ; line 337
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_336
fake_function_336:
    ret
    nop                         ; line 338
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_337
fake_function_337:
    ret
    nop                         ; line 339
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_338
fake_function_338:
    ret
    nop                         ; line 340
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_339
fake_function_339:
    ret
    nop                         ; line 341
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_340
fake_function_340:
    ret
    nop                         ; line 342
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_341
fake_function_341:
    ret
    nop                         ; line 343
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_342
fake_function_342:
    ret
    nop                         ; line 344
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_343
fake_function_343:
    ret
    nop                         ; line 345
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_344
fake_function_344:
    ret
    nop                         ; line 346
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_345
fake_function_345:
    ret
    nop                         ; line 347
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_346
fake_function_346:
    ret
    nop                         ; line 348
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_347
fake_function_347:
    ret
    nop                         ; line 349
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_348
fake_function_348:
    ret
    nop                         ; line 350
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_349
fake_function_349:
    ret
    nop                         ; line 351
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_350
fake_function_350:
    ret
    nop                         ; line 352
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_351
fake_function_351:
    ret
    nop                         ; line 353
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_352
fake_function_352:
    ret
    nop                         ; line 354
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_353
fake_function_353:
    ret
    nop                         ; line 355
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_354
fake_function_354:
    ret
    nop                         ; line 356
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_355
fake_function_355:
    ret
    nop                         ; line 357
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_356
fake_function_356:
    ret
    nop                         ; line 358
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_357
fake_function_357:
    ret
    nop                         ; line 359
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_358
fake_function_358:
    ret
    nop                         ; line 360
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_359
fake_function_359:
    ret
    nop                         ; line 361
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_360
fake_function_360:
    ret
    nop                         ; line 362
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_361
fake_function_361:
    ret
    nop                         ; line 363
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_362
fake_function_362:
    ret
    nop                         ; line 364
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_363
fake_function_363:
    ret
    nop                         ; line 365
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_364
fake_function_364:
    ret
    nop                         ; line 366
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_365
fake_function_365:
    ret
    nop                         ; line 367
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_366
fake_function_366:
    ret
    nop                         ; line 368
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_367
fake_function_367:
    ret
    nop                         ; line 369
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_368
fake_function_368:
    ret
    nop                         ; line 370
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_369
fake_function_369:
    ret
    nop                         ; line 371
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_370
fake_function_370:
    ret
    nop                         ; line 372
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_371
fake_function_371:
    ret
    nop                         ; line 373
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_372
fake_function_372:
    ret
    nop                         ; line 374
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_373
fake_function_373:
    ret
    nop                         ; line 375
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_374
fake_function_374:
    ret
    nop                         ; line 376
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_375
fake_function_375:
    ret
    nop                         ; line 377
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_376
fake_function_376:
    ret
    nop                         ; line 378
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_377
fake_function_377:
    ret
    nop                         ; line 379
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_378
fake_function_378:
    ret
    nop                         ; line 380
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_379
fake_function_379:
    ret
    nop                         ; line 381
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_380
fake_function_380:
    ret
    nop                         ; line 382
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_381
fake_function_381:
    ret
    nop                         ; line 383
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_382
fake_function_382:
    ret
    nop                         ; line 384
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_383
fake_function_383:
    ret
    nop                         ; line 385
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_384
fake_function_384:
    ret
    nop                         ; line 386
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_385
fake_function_385:
    ret
    nop                         ; line 387
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_386
fake_function_386:
    ret
    nop                         ; line 388
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_387
fake_function_387:
    ret
    nop                         ; line 389
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_388
fake_function_388:
    ret
    nop                         ; line 390
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_389
fake_function_389:
    ret
    nop                         ; line 391
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_390
fake_function_390:
    ret
    nop                         ; line 392
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_391
fake_function_391:
    ret
    nop                         ; line 393
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_392
fake_function_392:
    ret
    nop                         ; line 394
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_393
fake_function_393:
    ret
    nop                         ; line 395
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_394
fake_function_394:
    ret
    nop                         ; line 396
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_395
fake_function_395:
    ret
    nop                         ; line 397
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_396
fake_function_396:
    ret
    nop                         ; line 398
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_397
fake_function_397:
    ret
    nop                         ; line 399
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_398
fake_function_398:
    ret
    nop                         ; line 400
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_399
fake_function_399:
    ret
    nop                         ; line 401
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_400
fake_function_400:
    ret
    nop                         ; line 402
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_401
fake_function_401:
    ret
    nop                         ; line 403
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_402
fake_function_402:
    ret
    nop                         ; line 404
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_403
fake_function_403:
    ret
    nop                         ; line 405
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_404
fake_function_404:
    ret
    nop                         ; line 406
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_405
fake_function_405:
    ret
    nop                         ; line 407
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_406
fake_function_406:
    ret
    nop                         ; line 408
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_407
fake_function_407:
    ret
    nop                         ; line 409
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_408
fake_function_408:
    ret
    nop                         ; line 410
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_409
fake_function_409:
    ret
    nop                         ; line 411
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_410
fake_function_410:
    ret
    nop                         ; line 412
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_411
fake_function_411:
    ret
    nop                         ; line 413
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_412
fake_function_412:
    ret
    nop                         ; line 414
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_413
fake_function_413:
    ret
    nop                         ; line 415
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_414
fake_function_414:
    ret
    nop                         ; line 416
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_415
fake_function_415:
    ret
    nop                         ; line 417
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_416
fake_function_416:
    ret
    nop                         ; line 418
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_417
fake_function_417:
    ret
    nop                         ; line 419
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_418
fake_function_418:
    ret
    nop                         ; line 420
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_419
fake_function_419:
    ret
    nop                         ; line 421
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_420
fake_function_420:
    ret
    nop                         ; line 422
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_421
fake_function_421:
    ret
    nop                         ; line 423
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_422
fake_function_422:
    ret
    nop                         ; line 424
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_423
fake_function_423:
    ret
    nop                         ; line 425
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_424
fake_function_424:
    ret
    nop                         ; line 426
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_425
fake_function_425:
    ret
    nop                         ; line 427
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_426
fake_function_426:
    ret
    nop                         ; line 428
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_427
fake_function_427:
    ret
    nop                         ; line 429
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_428
fake_function_428:
    ret
    nop                         ; line 430
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_429
fake_function_429:
    ret
    nop                         ; line 431
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_430
fake_function_430:
    ret
    nop                         ; line 432
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_431
fake_function_431:
    ret
    nop                         ; line 433
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_432
fake_function_432:
    ret
    nop                         ; line 434
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_433
fake_function_433:
    ret
    nop                         ; line 435
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_434
fake_function_434:
    ret
    nop                         ; line 436
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_435
fake_function_435:
    ret
    nop                         ; line 437
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_436
fake_function_436:
    ret
    nop                         ; line 438
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_437
fake_function_437:
    ret
    nop                         ; line 439
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_438
fake_function_438:
    ret
    nop                         ; line 440
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_439
fake_function_439:
    ret
    nop                         ; line 441
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_440
fake_function_440:
    ret
    nop                         ; line 442
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_441
fake_function_441:
    ret
    nop                         ; line 443
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_442
fake_function_442:
    ret
    nop                         ; line 444
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_443
fake_function_443:
    ret
    nop                         ; line 445
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_444
fake_function_444:
    ret
    nop                         ; line 446
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_445
fake_function_445:
    ret
    nop                         ; line 447
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_446
fake_function_446:
    ret
    nop                         ; line 448
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_447
fake_function_447:
    ret
    nop                         ; line 449
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_448
fake_function_448:
    ret
    nop                         ; line 450
    xor eax, eax                ; fake reset
    inc ebx                     ; step
    mov edx, 0xBADC0DE          ; dummy value
    call fake_function_449
fake_function_449:
    ret

terminate:
    mov eax, 1
    int 0x80
    hlt
