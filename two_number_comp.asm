.model small  ; code segment and data segment 
.stack 100h
.data
    a db 'Enter two number $'
    b db 10,13,'Result $'
    
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
    int 21h
    mov bh,al
    
    big:
    cmp bl,bh
    jg l1
    jmp l2
        
    l1:
    mov ah,9
    lea dx,b
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h
    jmp exit
    
    l2:
    mov ah,9
    lea dx,b
    int 21h
    
    mov ah,2
    mov dl,bh
    int 21h
    jmp exit
    
    exit:
    mov ah,4ch 
    int 21h
    main endp
end main     
