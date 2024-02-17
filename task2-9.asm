.486                                   
.model flat, stdcall                   
option casemap :none                    


.data
    x1 dd 1
    y1 dd 1
    
    x2 dd 3
    y2 dd 4
    
    x3 dd 7
    y3 dd 4
    
    ABx dd ?
    ABy dd ?
    
    BCx dd ?
    BCy dd ?
    
    crossProduct dd ?
    
    parallelogramArea dd ?
       
.code                       

start:                                   
    ; Найти площадь параллелограмма заданными целочисленными координатами 
    ; (x1, y1), (x2, y2) и (x3, y3) на плоскости.
    ; Для обозначения отрезков примем, что (x1, y1) - это точка A, (x2, y2) - это точка B и (x3, y3) - это точка C.
    
    ; AB, BC
    ; Вычисляем координаты AB  
    mov eax, x2
    mov ecx, x1
    
    sub eax, ecx
    
    mov ABx, eax
 
       
    mov eax, y2
    mov ecx, y1
    
    sub eax, ecx
    
    mov ABy, eax
      
    ; Вычисляем координаты BC
    mov eax, x3
    mov ecx, x2
    
    sub eax, ecx
    
    mov BCx, eax
    

    mov eax, y3
    mov ecx, y2
    
    sub eax, ecx
    
    mov BCy, eax
    
    ; Вычислим векторное произведение AB и BC.
    mov eax, ABx
    imul BCy
    mov ebx, eax
    
    mov eax, ABy
    imul BCx
    sub ebx, eax
    
    mov crossProduct, ebx
    
    
    cmp crossProduct, 0
    jl negative
    
negative:
    mov eax, crossProduct
    neg eax
    mov parallelogramArea, eax
    jmp exit

positive:
    mov eax, crossProduct
    mov parallelogramArea, eax
    
exit:   
    ret                         

end start