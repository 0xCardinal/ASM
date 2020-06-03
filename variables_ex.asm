; Author: Kumar Ashwin
; Variables

global _start

_start:
    
    ; About data types consult Notes.md

    ; we are skipping ebx because it contains file_descriptor
    mov eax, 0x4
    mov ecx, definebyte1
    mov edx, byte1L
    int 0x80

    mov ecx, definebyte2
    mov edx, byte2L
    int 0x80

    mov ecx, defineword
    mov edx, wordL
    int 0x80


    ; Exit w/ return code 0
    mov eax, 0x1
    mov ebx, 0x0
    int 0x80

    definebyte1: db "Assembly", 0x0a
    byte1L equ $-definebyte1    

    definebyte2: db "Language", 0x0a
    byte2L equ $-definebyte2

    defineword: dw "Too much typing...", 0x0a
    wordL equ $-defineword

