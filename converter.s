global _start

section .data
inputBuf:
    db 0x83,0x6A,0x88,0xDE,0x9A,0xC3,0x54,0x9A

section .bss
outputBuf:
    resb 80

section .text
_start:
    ; current index in inputBuf
    mov ebx, 0
    ; current index in outputBuf
    mov eax, 0
.loop:
    mov dl, [ebx + inputBuf]
    ; convert cl into first character
    mov  cl, dl            ; move dl into cl so dl can be used for second digit
    shr  cl, 4             
    cmp  cl, 10
    jl   .ret_num
    add  cl, 0x37
    jmp  .done
.ret_num:
    add  cl, 0x30
.done:
    ; copy to outputBuf[eax]
    mov [eax + outputBuf], cl    
    ; increment ebx
    add eax, 1 
    ; convert dl into second character
    and  dl, 0xF          
    cmp  dl, 10
    jl   .ret_num_2
    add  dl, 0x37
    jmp  .done_2
.ret_num_2:
    add  dl, 0x30
.done_2:
    ; copy to outputBuf[eax]
    mov [eax + outputBuf], dl
    ; increment outputBuf index
    add eax, 1
    ; write a space to outputBuf[eax]
    mov cl, 0x20
    mov [eax + outputBuf], cl
    ; increment outputBuf index 
    add eax, 1
    ; increment inputBuf index
    add ebx, 1
    ; move next hex input into dl 
    mov [eax + outputBuf], dl
    ; jump back to loop
    cmp ebx, 24
    jl .loop
    
    ; adds newline
    mov cl, 0x0A
    mov [outputBuf + 23], cl 
    ; print the contents of outputBuf
    mov eax, 4           
    mov ebx, 1            
    mov ecx, outputBuf    
    mov edx, 24            
    int 0x80              

    
    mov eax, 1
    xor ebx, ebx
    int 0x80
