
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
cmp num,0





LEA SI, MESSAGE
MOV CX, 38
MOV AH, 0Eh
GO: LODSB
INT 10h
LOOP GO
end:
ret

MESSAGE DB 'Please enter a value between 14 and 26', 0
num db 0 
arr db num dup(0)



