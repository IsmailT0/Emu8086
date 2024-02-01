
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here

lea dx,mes
mov ah,09h
int 21h

lea si,newword
lea di,newword
mov ah,01h   

next:
    int 21h
    cmp al,0dh
    je lineend
    mov [di],al
    inc di
    jmp next

lineend:
    mov bx,si
pushtostack:
    cmp si,di              
    je popfromstack
    push [si]              
    inc si         
    loop pushtostack       

                 
popfromstack:
    cmp di,bx
    je end
    pop ax
    mov [bx],al
    inc bx
    loop popfromstack

             
end:
    inc bx
    mov [bx],'$'
    mov dh,2
    mov dl,0
    mov bh,0
    mov ah,2
    int 10h
    lea dx,newword
    mov ah,09h
    int 21h                    
    ret




mes db 10, 'herhangi bir kelime girin$'
newword db 50 dup(0) 