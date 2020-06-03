# Notes

* [https://www.informatik.htw-dresden.de/~beck/ASM/syscall_list.html](System Call List)

* If syscall contains parameters then it first goes to `eax`(mostly contains syscall number), `ebx` (first arg), `ecx` (second arg), `edx` (third arg), and following that anything get pushed to stack.

* int 80 - executes the system_calls

* $ - refrences the end of the string

* string_length is required as the buffer length

* shortcut method to calculate string length
    > stringLength equ $ - string

* equ = equals
