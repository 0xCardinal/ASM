; Author : Kumar Ashwin
; Saving States

global _start

PrintText:
    
    ; Epilogue
    push ebp   ; this is used for recovery of pointer inside the _start
    mov ebp,esp  ; moving stack pointer to base pointer

    mov eax, 0x4
    mov ecx, string
    mov edx, stringL
    int 0x80
    
    ; Prologue
    mov esp,ebp
    pop ebp

    ; leave - nasm command/function to achieve the Prologue task

    ret  ; this returns to the function call 

_start: 
    ; push/pop<ad> - pushes or pops all the registers onto the stack
    ; push/pop<fd> - pushes or pops all the flags onto the stack

    pushad
    pushfd

    call PrintText   ; function call

    popfd
    popad

    ; Exit w/ return code 0
     mov eax, 0x1
     mov ebx, 0x0
     int 0x80

     string: db "This seems like a long way to go...", 0x0a
     stringL equ $-string



; Work Flow
; =========

; pushed register
; pushed flags
; EBP -> PrintText

; In PrintText
; pushed EBP
; EBP <- ESP
; 
; ESP <- EBP
; Poped EBP
; return to function call

; Poped Flags
; Poped Registers
