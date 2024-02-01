
#start=Emulation_Kit.exe#

clock:
mov ah,2ch
int 21h
xor ax,ax
push dx
mov al,ch
mov bl,10
div bl

mov bl,al
mov dx,2030h   ;saatin 1. kismi
call numPrint
mov bl,ah
mov dx,2031h   ;saatin 2. kismi
call numPrint
mov bl,10
mov dx,2032h   ; --------------
call numPrint

xor ax,ax
mov al,cl
mov bl,10
div bl

mov bl,al
mov dx,2033h   ;dakika 1. kismi
call numPrint
mov bl,ah
mov dx,2034h   ;dakika 2. kismi
call numPrint
mov bl,10
mov dx,2035h   ; --------------
call numPrint

xor ax,ax
pop dx
mov al,dh
mov bl,10
div bl

mov bl,al
mov dx,2036h   ;saniye 1. kismi
call numPrint
mov bl,ah
mov dx,2037h   ;saniye 2. kismi
call numPrint

jmp clock






ret

NumPrint Proc
    mov al,Dots[bx]
    out dx,al
    ret   
NumPrint endp


Dots DB 00111111b ; 0
     DB 00000110b ; 1
     DB 01011011b ; 2
     DB 01001111b ; 3
     DB 01100110b ; 4
     DB 01101101b ; 5
     DB 01111101b ; 6
     DB 00000111b ; 7
     DB 01111111b ; 8
     DB 01101111b ; 9
     DB 01000000b ; -