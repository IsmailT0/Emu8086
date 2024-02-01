
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here                                               
mov cl,n
sub cx,1
mov ax,1
mov bx,2     

fact:
    mul bx
    inc bx    
loop fact

end:
    mov factorial,ax
    ret
n db 5h
factorial dw 0h



