; Author : Kumar Ashwin
; Multiply

global _start

_start:
    ; AL * 8bits = AX register
	; AX * 16bits = DX & AX register
	; EAX * 32bits = EDX & EAX registers

    mov al, 0x10
    mov bl, 0x5

    mul bl

    ; Exit with code 0
    mov eax, 0x1
    mov ebx, 0x0
    int 0x80


