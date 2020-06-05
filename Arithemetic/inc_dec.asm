; Author : Kumar Ashwin
; Increment/Decrement

global _start

_start: 
    mov al, 0x20

    inc eax

    dec eax



    ; Return 0 as exit code
    mov eax, 0x1
    mov ebx, 0x0
    int 0x80
