; Author: Kumar Ashwin

global _start ;_<anything>  -- entrypoint

_start:
    ; Sets syscall valued 4 AKA write
    mov eax, 0x4
    
    mov ebx, 0x1 ; File Descriptor for write (man 2 write)

    mov ecx, string ; string is a varibale

    mov edx, stringL


    int 0x80 ;interrupt 80 - execute whatever is in system call     
    
    ; moving 1 to eax - for exit syscall
    mov eax, 0x1
    ; moving 0 to ebx - for success status
    mov ebx, 0x0
    
    int 0x80

    string: db "Hello Guys", 0x0a
    stringL: equ $-string 
    ; $ - referencing end of the string
    ; $-string = $ - start of the string
    ; equ = equals



