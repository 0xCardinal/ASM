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
    > Byte : 8 bits  -- if the complete 8 bits are not occupied then the free space is filled with 0x0 <br>
    > Word : 16 bits <br>
    > Double Word : 32 bits <br>
    > Quad Word : 64 bits <br>
    > Double Quad Word : 128 bits <br>

* 0x0a is used after variables for a new line

* While creating the object file and loading the files, we write elf_i386 - this is for x86 architecure

* if `ret` is not used inside of the function, so when the function executes completely, it will start executing the commands sequentially.

* Prologue 
    > mov esp,ebp <br>
    > pop ebp <br><br>

    can also be written as <br>
    > leave ; nasm function that executes the above prologue commands <br>

* > push/pop<ad> - pushes or pops all the register contents onto the stack <br>
  > push/pop<fd> - pushes or pops all the CPU flags onto the stack <br>

* `stc` - set the carry flag
* `clc` - clear the carry flag
* `cmc` - complement the carry flag

* If the arithemetic operations generate carry, we have to set the carry using any three commands from above. (refer `./Arithemetic/arith_carry.asm`) 

* For `gdb_crash_course` refer `./Arithemetic/gdb_crash_course`

* We use `adc` to add some data and have the carry flag along and `sbb` to subtract carry with data

* **Loop** - when nasm command `loop x` is used what it does is, it check for the ZF(Zero Flag), if it is set or unset. If it is set, the execution will continue and followwing commands will get executed. If the ZF is unset it will send the pointer to the function(x) and keep on executing till ZF is set.
    > Refer `loops.asm`

* `jmp & jnz` - two of many flags(check others out as well).
    > `jmp` - jumps to mem. addr. or label
    > `jnz` - jump no zero, jumps when the value of counter register(ecx) is not zero 
