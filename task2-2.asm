.486                                   
.model flat, stdcall                   
option casemap :none                    


.data
    sideA dw 11
    sideB dw 11
    sideC dw 3
    
    cThatFitInA dw ?
    cThatFitInB dw ?
    squareArea dw ?
    occupiedArea dw ?
    rectangleArea dw ?
    
    squaresNum dw ?
    unoccupiedArea dw ?
    
.code                       

start:                                   
    ; Даны целые положительные числа A, B, C. На прямоугольнике размера A × B размещено максимально 
    ; возможное количество квадратов со стороной C (без наложений). 
    ; Найти количество квадратов, размещенных на прямоугольнике, а также площадь незанятой части 
    ; прямоугольника.
    
    ; Находим сколько квадратов помещается в сторону A прямоугольника
    mov dx, 0
    mov ax, sideA
    mov cx, sideC
    
    div cx
    
    mov cThatFitInA, ax
    
    ; Находим сколько квадратов помещается в сторону B прямоугольника
    mov dx, 0
    mov ax, sideB
    mov cx, sideC
    
    div cx
    
    mov cThatFitInB, ax

    ; Находим сколько квадратов помещается в прямоугольник
    mov ax, cThatFitInA
    mul cThatFitInB
    
    mov squaresNum, ax
    
    ; Находим площадь квадрата
    mov ax, sideC
    mul ax      
        
    mov squareArea, ax
    
    ; Находим площадь прямоугольника
    mov ax, sideA
    mul sideB   
        
    mov rectangleArea, ax
    
    ; Находим занятую площадь внутри прямоугольника
    mov ax, squaresNum
    mul squareArea
    
    mov occupiedArea, ax
    
    ; Находим площадь незанятой части прямоугольника
    mov ax, rectangleArea
    sub ax, occupiedArea
    
    mov unoccupiedArea, ax
    
    
    
    
    
    ret                         

end start
