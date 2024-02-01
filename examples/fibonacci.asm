
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov al,n
cmp al,0
je end


cmp al,1
mov fibonacci,ax
je end

cmp al,2
mov al,2
mov fibonacci,ax
je end

mov cl,n
sub cx,2
mov ax,1
mov bx,1

fib:
    mov dx,ax
    add ax,bx
    mov bx,dx
loop fib 
mov fibonacci,ax    



end:
ret
n db 6
fibonacci dw 0



