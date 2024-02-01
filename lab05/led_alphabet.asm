org 100h


mainFunc:

    mov dx,2000h
    
    add dx,di
    
    mov bx,0

print:
    
    
    mov si,0
    
    mov cx,5
    
    cmp dx,2027h
    
    jle next
    
    mov dx,2000h
    
next:
    
    mov al,dots[bx][si]
    
    out dx,al
    
    inc si
    
    inc dx
    
    cmp si,5
    
    loopne next
    
    add bx,5
    
    cmp bx,40
    
   jl print

ret
Dots DB 00000000b,01000001b, 01111111b,01000001b,00000000b
     DB 00100110b,01001001b, 01001001b,01001001b,00110010b
     DB 01111111b,00000010b, 00000100b,00000010b,01111111b
     DB 01111100b,00001010b, 00001001b,00001010b,01111100b
     DB 00000000b,01000001b, 01111111b,01000001b,00000000b
     DB 01111111b,01000000b, 01000000b,01000000b,01000000b 