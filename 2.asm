.model small   
.stack 256h  
.data 
a DB 12d
b DB 33h

mas1 DD 0,1,2 
mas2 DD 3,4,5
mas3 DD 6,7,8 
mas4 DD 9,0,9
mas5 DD 8,7,6 
mas6 DD 5,3,4

.code  
start:  
mov ax,@data    
mov ds,ax

lea dx,a 
mov ah,09h
int 21h

lea dx,b
mov ah,09h 
int 21h

lea ax, mas1          
push ax 
lea ax, mas2   
push ax 
    
mov bp, sp
mov ah, 09h


mov dx, [bp+2] 
int 21h

mov dx, [bp]    
int 21h

pop dx  
int 21h

mov bp, sp
mov dx, [bp] 
int 21h



mov ax,4c00h    
int 21h     
end start   
