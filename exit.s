# Simple exit program
.section __TEXT,__text
.globl _main
_main:
  movl $0x2000001, %eax # system call $1 with $0x2000000 offset
  movl $13, %edi         # set the exit code to be $0
  syscall
