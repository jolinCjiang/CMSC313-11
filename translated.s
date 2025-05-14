section .text
    global getFirstDigit
    global getSecondDigit
    global main

getFirstDigit:
    push ebp
    mov  ebp, esp
    mov  eax, [ebp + 8]    ; get input byte
    shr  al, 4             ; shift right 4 bits
    cmp  al, 10
    jl   .ret_num
    add  eax, 0x30
    jmp  .done
.ret_num:
    add  eax, 0x37
.done:
    pop  ebp
    ret

getSecondDigit:
    push ebp
    mov  ebp, esp
    mov  eax, [ebp + 8]    ; get input byte
    and  eax, 0xF          ; mask lower 4 bits
    cmp  al, 10
    jl   .ret_num
    add  eax, 0x30
    jmp  .done
.ret_num:
    add  eax, 0x37
.done:
    pop  ebp
    ret

main:
    push ebp
    mov  ebp, esp

    ; hex[] = {0x83, 0x6A, 0x88, 0xDE, 0x9A, 0xC3, 0x54, 0x9A}
    ; load first byte (0x83) into eax
    mov  al, 0x83

    ; call getFirstDigit
    push eax
    call getFirstDigit
    add  esp, 4
    mov  [first], al

    ; reload al with 0x83 again for second digit
    mov  al, 0x83
    push eax
    call getSecondDigit
    add  esp, 4
    mov  [second], al

    mov  eax, 0
    pop  ebp
    ret

section .bss
    first   resb 1
    second  resb 1

