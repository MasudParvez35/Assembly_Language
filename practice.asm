.model small  ; code segment and data segment 
.stack 100h
.data
    a db 'Enter 1st number $'
    b db 10,13,'Enter 2nd number $'
    c db 10,13,'Result $'
    
.code
 main proc  
 
;data segment initilazition
    mov ax,@data
    mov ds,ax  
             
    mov ah,9
    lea dx,a
    int 21h         
    
    mov ah,1
    int 21h
    mov bl,al     
    
    mov ah,9
    lea dx,b
    int 21h
    
    mov ah,1
    int 21h
    mov bh,al
             
; add two number
    add bl,bh ; bl = bl+bh
    sub bl,48  
    
    mov ah,9
    lea dx,c
    int 21h 
    
;print sum   
    mov ah,2
    mov dl,bl
    int 21h
    
    exit:
    mov ah,4ch  ; last 4 line use for exit
    int 21h
    main endp
end main     
