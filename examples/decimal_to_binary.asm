
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here
mov ax,n
n mov bp,2015h

mov cx,16

mov bx,2

mainFunc:

    xor dx,dx
    
    div bx
    
    mov [bp],dx
    
    cmp ax,0
    
    je end:
    
    dec bp
          
          
loop mainFunc    
  
    
   
    
    

end:

ret   
n dw 123




