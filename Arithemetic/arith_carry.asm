; Author : Kumar Ashwin
; Concept of carry

global _start

_start:
    
    mov eax, 0xffffffff  ; fills the register completely
    stc
    adc al, 0x10  ; add 0x10 to al (eax=al,ah) & we use adc as we know the carry will be generated

    ; return exit 0
    mov eax, 0x1
    mov ebx, 0x0
    int 0x80

