
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here
;find prime number
mov bx,2;start from 2 go until N
mov cx,N
sub cx,2

isPrimeLoop:
xor dx,dx
mov ax,N
div bx
cmp dx,0
je isPerfectSquare
inc bx 
loop isPrimeLoop
mov isPrime,1

mov bx,2
mov 


isPerfectSquare:    
xor dx,dx
mov ax,M

loop isPerfectSquare

end:
    ret

;variables

isPrime db 0h
N dw 23
isPerfectSquare db 0h
M dw 10h





