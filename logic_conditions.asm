; Author: Kumar Ashwin
; Logic Operations

global _start

SetupFunction:
    mov ecx, 0x5
    jmp FinalMethod

PrintMethod:
    push ebp
    mov ebp, esp

    mov eax, 0x4
    mov ecx, string
    mov edx, stringL
    int 0x80

    leave 
    ret

_start:
    jmp SetupFunction
    
FinalMethod:
    push ecx
    pushad
    pushfd

    call PrintMethod

    popfd
    popad
    pop ecx

    dec ecx
    jnz FinalMethod

    ; Exit Return
    mov eax, 0x1
    mov ebx, 0x0
    int 0x80



    string: db "Repeating using jumps..."
    stringL equ $-string
    
