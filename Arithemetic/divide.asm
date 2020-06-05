; Author: Kumar Ashwin
; Division

global _start

_start:
    
    ;	AX / 8bits = Answer in AL remainder in AH
	;	DX & AX / 16bits = Answer in AX remainder in DX
	;	EDX & EAX / 32bits = Answer in EAX remainder in EDX

    mov ax, 0x1000
    mov cx, 0x5

    div cx



    ; Exit with return code 0
    mov eax, 0x1
    mov ebx, 0x0
    int 80
