.486                                   
.model flat, stdcall                   
option casemap :none                    


.data
    A DW  1,  2,  3,  4,  5
    B DD 5 dup (?)
.code                       

start:                                          

    ; Поменять местами второй и четвертый элементы в массиве A
    MOV AX, A[2 * 3]
    MOV BX, A[2 * 1]
    MOV A[2 * 1], AX
    MOV A[2 * 3], BX
    
    ; Заменить 1 и 5 элементы массива А противоположными по знаку значениями
    MOV AX, A[2 * 0]
    NEG AX
    MOV A[2 * 0], AX
    
    MOV AX, A[2 * 4]
    NEG AX
    MOV A[2 * 4], AX
    
    ; Утроить значение 3 го элемента в массиве A
    MOV AX, 3
    MUL A[2 * 2]
    MOV A[2 * 2], AX
    
    ; Записать в массив Б содержимое массива А с противоположным знаком в ОБРАТНОМ порядке
    ; т.е. B[0] <- -A[4], B[1] <- -A[3]...
    
    ; -1, 4, 9, 2, -5 -> 5, -2, -9, -4, 1
    MOV ECX, 4
loop_start:
    MOV AX, A[2 * ECX]
    MOVSX EAX, AX
    NEG EAX
    MOV EDX, 4
    SUB EDX, ECX
    MOV B[4 * EDX], EAX
    DEC ECX
    CMP ECX, -1
    JG loop_start

    ret                         

end start