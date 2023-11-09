include 'emu8086.inc'
org 100h

CALL SCAN_NUM  
mov bl,cl     
mov ax, 0001H

FACT:
    mul bl 
    dec bl  
    dec cl
    cmp cl,0
    jne FACT   ; jne not equel
CALL PRINT_NUM

ret
DEFINE_SCAN_NUM   
DEFINE_PRINT_NUM   
DEFINE_PRINT_NUM_UNS
                         