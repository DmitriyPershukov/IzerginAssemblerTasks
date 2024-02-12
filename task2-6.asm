.486                                   
.model flat, stdcall                   
option casemap :none                    


.data
    vA dw 1
    vB dw 2
    vC dw 3

    
.code                       

start:                                   
    ; Даны целые переменные A, B, C. Изменить их значения, 
    ; переместив содержимое A в C, C — в B, B — в A, и вывести новые значения переменных A, B, C.
    ; Должно получиться 2, 3, 1
    
    ; A в C
    mov cx, vC
    mov ax, vA
    mov vC, ax
    
    ; C в B
    mov ax, vB
    mov vB, cx
    
    ; B в A
    mov vA, ax
    
    ret                         

end start