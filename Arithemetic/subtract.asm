; Author: Kumar Ashwin
; Subtraction

global _start

_start:
    
    mov al, 0x17
    sub al, 0x5

    stc
    sbb eax, 0x10
    

    ; Exit with return code 0
    mov eax, 0x1
    mov ebx, 0x2
    int 0x80
