.486                                   
.model flat, stdcall                   
option casemap :none                    


.data
    number dw 678
    
    firstDigit dw ?
    secondDigit dw ?
    thirdDigit dw ?
    
    reversedNumber dw ?
    
.code                       

start:                                   
    ; Дано трехзначное число. Вывести число, полученное при прочтении исходного числа справа налево.
    
    ; Находим значение каждой из трех цифр
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
    
    ; Находим перевернутое число
    mov cx, firstDigit
    
    mov ax, secondDigit
    mov dx, 10
    mul dx
    add cx, ax
    
    mov ax, thirdDigit
    mov dx, 100
    mul dx
    add cx, ax
    
    mov reversedNumber, cx
    
    ret                         

end start