# Common Commands

* `gdb {exec_file}` - starts the gdb with that file
* `set disassembly-flavor intel` - changes the syntax to intel arch
* `break {point_ref}` - Pauses the execution at that specific point
* `run` - runs the program until break point
* `disassemble [function_name]` - shows the execution of the pogram. function_name is optional and shall be used as required
* `info registers` - it gives the information about all the registers involved in the execution of the program and it is helpful in figuring out how the registers are changing
* `stepi` - proceeds to run the program stepwise
* `quit` - quits the debugger

_P.S.: These are commonly used commands in GDB for linux. It should not be confused with the total number of commands._