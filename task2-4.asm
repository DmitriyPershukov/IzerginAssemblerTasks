.486                                   
.model flat, stdcall                   
option casemap :none                    


.data
    number dw 345
    
    firstDigit dw ?
    secondDigit dw ?
    thirdDigit dw ?
    
    sumOfDigits dw ?
    productOfDigits dw ?
    
.code                       

start:                                   
    ; Дано трехзначное число. Найти сумму и произведение его цифр.
    mov dx, 0
    mov ax, number
    mov cx, 100
    
    div cx
    
    mov firstDigit, ax
    
    mov ax, dx
    mov dx, 0
    mov cx, 10
    
    div cx
    
    mov secondDigit, ax
    mov thirdDigit, dx
    
    ; Находим произведение цифр
    mov ax, firstDigit
    mul secondDigit
    mul thirdDigit
    
    mov productOfDigits, ax
    
    ; Находим сумму цифр
    mov ax, firstDigit
    add ax, secondDigit
    add ax, thirdDigit
    
    mov sumOfDigits, ax
    
    ret                         

end start

