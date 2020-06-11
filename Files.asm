; Author: Kumar Ashwin
; Working with Files (READING)

global _start

_start:
    
    ; Open
    mov eax, 0x5    ; open syscall(0x5)
    mov ebx, file
    mov ecx, 0x0    ; 0x0 - read only
    int 0x80

    mov esi, eax    ; esi is the FileDescriptor for the opened file

    ; Read
    mov eax, 0x3    ; read syscall(read)
    mov ebx, esi
    mov ecx, buffer
    mov edx, 0x400
    int 0x80

    ; Write data to screen
    mov eax, 0x4
    mov ebx, 0x1    ; 0x1 is the file descriptor std out.
    mov ecx, buffer
    mov edx, 0x400
    int 0x80

    ; Close the file
    mov eax, 0x6    ; close syscall(0x6)
    mov ebx, esi    ; close file using FileDescriptor
    int 0x80
    

    ; Exit with return code 0
    mov eax, 0x1
    mov ebx, 0x0
    int 0x80
    
    file: db "./file_data.txt", 0x0    ; 0x0 is added to the string for denoting the end

section .bss
    buffer resb 0x400   ; 1024 Bits
    ; resb - reserve bytes
