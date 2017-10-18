global start

[section .text align=16]
start:
    mov rax, 0x2000001 ; SYS_exit = 1 and is type 2 (bsd call)
    mov rdi, 14 ; Exit success = 0
    syscall ; faster than int 0x80, and legal!

