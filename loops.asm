; Author: Kumar Ashwin

global _start

PrintMethod:
    push ebp
    mov ebp,esp

    mov eax, 0x4
    mov ecx, string
    mov edx, stringL
    int 0x80

    leave
    ret

_start:
    mov ecx, 0x5
    ; call Main - can/cannot give - as it wil continue execution sequentially

Main: 
    pushad
    pushfd

    call PrintMethod

    popfd
    popad

    loop Main ; for explanation refer Notes.md

    ; Exit with return code 0
    mov eax, 0x1
    mov ebx, 0x0
    int 0x80

    string: db "I am not repeating...", 0x0a
    stringL equ $-string