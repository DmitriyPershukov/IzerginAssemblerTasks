.486                                   
.model flat, stdcall                   
option casemap :none                    


.data
    K dd 41
    N dd 1  
    
    result dd ?
    
.code                       

start:                                   
    ; Дни недели пронумерованы следующим образом: 1 — понедельник, 2 — вторник, …, 
    ; 6 — суббота, 7 — воскресенье. Дано целое число K, лежащее в диапазоне 1–365, 
    ; и целое число N, лежащее в диапазоне 1–7. Определить номер дня недели для K-го дня года, 
    ; если известно, что в этом году 1 января было днем недели с номером N.
    mov edx, 0
    mov eax, K
    mov ecx, 7
    
    div ecx
    
    mov eax, N
    add eax, edx
    
    sub eax, 1
    
    cmp eax, 0
    je sunday
 
other_days:
    mov result, eax
    jmp exit
    
sunday:
    mov result, 7
    jmp exit
    
exit:  
    ret                         

end start
