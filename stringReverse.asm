.model small
.stack 100h

.data
string db 'parvez'

.code

main proc
    mov ax, @data   ; Initialize the data segment
    mov ds, ax
    
    mov si, offset string   ; Initialize SI register with the address of the string
    
    mov cx, 6   ; Set the loop counter to 10 (assuming 'parvez' is 6 characters)

loop1:
    mov bx, [si]   ; Load a character from the string into BX
    push bx        ; Push the character onto the stack
    inc si         ; Move to the next character in the string
    loop loop1     ; Repeat until CX is zero (10 times)

    mov cx, 6     ; Reset the loop counter

loop2:
    pop dx         ; Pop a character from the stack into DX
    mov ah, 2    ; AH=2 for displaying a character
    int 21h        ; Call DOS interrupt 21h to print the character in DX
    loop loop2     ; Repeat until CX is zero (10 times)

    main endp      ; End of the main procedure

end main
