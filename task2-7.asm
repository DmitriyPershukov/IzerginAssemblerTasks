.486                                   
.model flat, stdcall                   
option casemap :none                    


.data
    A_x dw 2    
    C_x dw 4
    B_x dw 8
    
    ACLength dw ?
    BCLength dw ?
    
    productOfSegments dw ?
       
.code                       

start:                                   
    ; Даны три точки A, B, C на числовой оси (целые координаты). 
    ; Точка C расположена между точками A и B. Найти произведение длин отрезков AC и BC.
    ; sqrt((x2 - x1)^2 + (y2 - y1)^2)   
    
    ; Вычисляем длину AC
    mov ax, C_x
    mov cx, A_x
    sub ax, cx

    mov ACLength, ax
    
    ; Вычисляем длину BC
    mov ax, B_x
    mov cx, C_x
    sub ax, cx

    mov BCLength, ax
    
    ; Вычисляем произведение отрезков AC и BC
    mov ax, ACLength
    mul BCLength
    
    mov productOfSegments, ax
    
    ret                         

end start