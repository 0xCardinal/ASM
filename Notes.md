# Notes

* [System Call List](https://www.informatik.htw-dresden.de/~beck/ASM/syscall_list.html)

* If syscall contains parameters then it first goes to `eax`(mostly contains syscall number), `ebx` (first arg), `ecx` (second arg), `edx` (third arg), and following that anything get pushed to stack.

* int 80 - executes the system_calls

* $ - refrences the end of the string

* string_length is required as the buffer length

* shortcut method to calculate string length
    > stringLength equ $ - string

* equ = equals

* db - define byte

* Variables
    > Byte : 8 bits  -- if the complete 8 bits are not occupied then the free space is filled with 0x0
    > Word : 16 bits
    > Double Word : 32 bits
    > Quad Word : 64 bits
    > Double Quad Word : 128 bits

* 0x0a is used after variables for a new line

* While creating the object file and loading the files, we write elf_i386 - this is for x86 architecure

* if `ret` is not used inside of the function, so when the function executes completely, it will start executing the commands sequentially.

* Prologue 
    > mov esp,ebp
    > pop ebp

    can also be written as 
    > leave ; nasm function that executes the above prologue commands 

* > push/pop<ad> - pushes or pops all the register contents onto the stack
  > push/pop<fd> - pushes or pops all the CPU flags onto the stack

