section .data
    hello: db "hello 64-bit syscall!", 0x0a
    size:  equ $-hello

global start
section .text
start:
    mov rax, 0x2000004
    mov rdi, 1              ; Write to standard out = 1
    lea rsi, [hello wrt rip]      ; The address of hello_world string
    mov rdx, size             ; The size to write
    syscall

    mov rax, 0x2000001 ; SYS_exit = 1 and is type 2 (bsd call)
    mov rdi, 0;
    syscall 
