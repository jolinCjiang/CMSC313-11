; THIS IS YOUR WORK
section .text
    global getFirstDigit
    global getSecondDigit
    global main
    global print ; prints a single provided character

section .data
    outputBuf:
        resb 80
    inputBuf:
        db  0x83,0x6A,0x88,0xDE,0x9A,0xC3,0x54,0x9A 

getFirstDigit:
    push ebp
    mov  ebp, esp
    mov  eax, [ebp + 8]    ; get input byte
    ; TODO check this is logical. there should be a separate instruction for arith?
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

print:
    ; TODO see chatgpt logs for how to make print syscall

main:
    ; save stack pointer
    push ebp
    mov ebp, esp

    ; bl is our index into inputBuf
    mov ebx, 0

; will loop through each character starting at this label
.loop:
    ; take inputBuf[bl]
    mov dl, [ebx + inputBuf]
    
    ; do conversion
    ; call getFirstDigit on dl
    ; capture return value
    ; print

    ; call getSecondDigit on dl
    ; capture return value
    ; print

    ; print space

    inc ebx

    ; jump back to loop (????)
    cmpl ebx 8
    jmp loop

    ; print newline
    ; finish

