.486                                   
.model flat, stdcall                   
option casemap :none                    


.data
    BOOLDOG DB  01111001b ; Define the BOOLDOG variable
    A1 DB ? ; Define the result variables
    A2 DB ?
    A3 DB ?
    A4 DB ?
    A5 DB ?
    A6 DB ?
    A7 DB ?
    A8 DB ?

.code                       

start:                                          
    mov bl,  11100011b ; Initialize BL with the specified value

    ; XOR BL, BOOLDOG
    xor bl, BOOLDOG
    mov A1, bl

    ; Обновляем BL
    mov bl,  11100011b

    ; AND BL, BOOLDOG
    and bl, BOOLDOG
    mov A2, bl

    ; Обновляем BL
    mov bl,  11100011b

    ; OR BL, BOOLDOG
    or bl, BOOLDOG
    mov A3, bl

    ; Обновляем BL
    mov bl,  11100011b

    ; NOT BL
    not bl
    mov A4, bl

    ; Обновляем BL
    mov bl,  11100011b

    ; XOR BL, BL
    xor bl, bl
    mov A5, bl

    ; Обновляем BL
    mov bl,  11100011b

    ; XOR BL,  11111111b
    xor bl,  11111111b
    mov A6, bl

    ; Обновляем BL
    mov bl,  11100011b

    ; OR BL,  11111111b
    or bl,  11111111b
    mov A7, bl

    ; Обновляем BL
    mov bl,  11100011b

    ; AND BL,  00000000b
    and bl,  00000000b
    mov A8, bl

    ret                         

end start
