
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
mov [2000h],11h
mov [2001h],07h
mov [2002h],0ABh
mov [2003h],7Dh
mov [2004h],22h
mov [2005h],0FFh
mov [2006h],34h    
mov [2007h],55h



mov bx,2000h
mov si,2004h
mov cx,2
swap:
    mov dx,[bx]
    mov ax,[si]
    mov [bx],ax
    mov [si],dx
    add bx,2
    add si,2
loop swap    

ret




