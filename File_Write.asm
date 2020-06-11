; Author : Kumar Ashwin
; Working with file (WRITING/OVERWRITTING)

global _start

_start:

    ; Open
    mov eax, 0x5 
    mov ebx, file
    mov ecx, 0x1    ; 0x1 - write
    int 0x80

    mov esi, eax
    
    ; Write
    mov eax, 0x4
    mov ebx, esi
    mov ecx, string
    mov edx, stringL
    int 0x80

    mov eax, 0x6
    mov ebx, esi
    int 0x80


    ; Exit w/ return code 0
    mov eax, 0x1
    mov ebx, 0x0
    int 0x80

    file: db "./file_data.txt", 0x0
    string: db "Writing to file...", 0x0a
    stringL equ $-string

section .bss
    buffer resb 0x400
