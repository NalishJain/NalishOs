global main
extern scanf, printf

section .text

main:
    push rbp
    mov rbp, rsp
    sub rsp, 16

    xor eax, eax
    lea rdi, [text1]
    call printf

    mov eax, 0
    lea rdi, [f]
    lea rsi, [num]
    call scanf

    lea rdi, [g]
    mov rsi, [num]
    xor eax, eax
    call printf

    xor eax, eax
    lea rdi, [text2]
    call printf

    lea rdi, [h]
    lea rsi, [s]
    xor eax, eax
    call scanf

    lea rdi, [i]
    lea rsi, [s]
    xor eax, eax
    call printf

    add rsp, 16
    mov rsp, rbp
    pop rbp
    ret

section .data
    text1: db "Enter an integer ", 0
    text2: db "Enter a string ", 0
    f: db "%d", 0
    g: db "The integer you entered is %d", 10, 0
    h: db "%s", 0
    i: db "The string you entered is %s", 10, 0
    s times 100 db 0

section .bss
    num resb 4
    