# ASM
Learning Course: Assembly Programming in Linux

### Exec Instructions
`nasm -f elf filename.asm` <br>
|<br>
--filename.o<br>
<br>
Loading the object file for executions,<br>
`ld -m elf_i386 -o exec_name filename.o`<br>
|<br>
-- exec_name (executable file)<br>
<br>
`./exec_name` - to run the program for proper output
