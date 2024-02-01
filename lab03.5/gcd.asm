
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
mov ax, num1
mov bx, num2
gcd_loop:
;your code here
xor dx,dx ;dx ax/ bx = ax remainder=dx
cmp ax,bx
jl swap
div bx
cmp dx,0h
je end
mov ax,bx
mov bx,dx
loop gcd_loop



swap:
    mov di,ax
    mov ax,bx
    mov bx,di
    jmp gcd_loop



mov gcd, ax ; Store the GCD in the result variable
; Display the result or perform further operations    


end:
    mov gcd,bx    
    ret


num1 dw 172
num2 dw 148
gcd dw 0




