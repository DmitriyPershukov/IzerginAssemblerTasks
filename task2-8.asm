.486                                   
.model flat, stdcall                   
option casemap :none                    


.data
    x1 dd 2
    y1 dd 2
    
    x2 dd 8
    y2 dd 8
    
   distance dd ?
       
.code                       

start:                                   
    ; Найти квадрат расстояния между двумя точками с заданными целочисленными координатами 
    ; (x1, y1) и (x2, y2) на плоскости. 
    
    ; Считаем (x2-x1)^2
    mov eax, x2
    mov ecx, x1
    
    sub eax, ecx
    
    mul eax
    
    mov ebx, eax
    
    ; Считаем (y2-y1)^2
    mov eax, y2
    mov ecx, y1
    
    sub eax, ecx
    
    mul eax
    
    add eax, ebx
    
    mov distance, eax
    
    ret                         

end start