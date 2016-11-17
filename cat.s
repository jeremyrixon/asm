section .bss
    buffer: resb 16

global start
section .text
start:
    lea rsi, [buffer wrt rip]
    mov rdx, 16
    mov rax, 0x2000003
    mov rdi, 0
    syscall

    lea rsi, [buffer wrt rip]
    mov rdx, 16
    mov rax, 0x2000004
    mov rdi, 1
    syscall

    mov rax, 0x2000001 ; SYS_exit = 1 and is type 2 (bsd call)
    mov rdi, 0;
    syscall 
