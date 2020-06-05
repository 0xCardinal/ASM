; Author : Kumar Ashwin
; Arithemetic Operations

global _start

_start:
    mov al, 0x55
    add al, 0x15

    

    ; Exit code 0 return
    mov eax, 0x1
    mov ebx, 0x0
    int 0x80

