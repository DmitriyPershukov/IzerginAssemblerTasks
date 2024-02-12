.486                                   
.model flat, stdcall                   
option casemap :none                    


.data
    year dw 56
    
    century db ?
    
.code                       

start:                                   
    ; Дан номер некоторого года (целое положительное число). 
    ; Определить соответствующий ему номер столетия, учитывая, что, к примеру, 
    ; началом 20 столетия был 1901 год.
    
    ; После деления в al будут хранится первые две цифры, а в dl две последние
    mov dx, 0
    mov ax, year
    mov cx, 100
    
    div cx

    cmp dl, 0
    jg lastTwoDigitsBiggerThanZero
    
    mov century, al
    jmp exit
    
lastTwoDigitsBiggerThanZero:
    add al, 1
    mov century, al

exit:   
    ret                         

end start
