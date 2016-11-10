; assemble with
; yasm -f macho64 -o syscall64.o syscall64.asm && ld -lc -ldylib1.o -e start -o syscall64 syscall64.o && ./syscall64; echo $?
global start

[section .text align=16]
start:
    ;now let's do it raw
    mov rax, 0x2000001 ; SYS_exit = 1 and is type 2 (bsd call)
    mov rdi, 1 ; Exit success = 0
    syscall ; faster than int 0x80, and legal!

[section .data align=16]
hello: db "hello 64-bit syscall!", 0x0a
size: equ $-hello
