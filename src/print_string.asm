SECTION .text
global print_string

; ---------------------------------
; print_string
; Entrada:
;   EAX = direccion de cadena
;   cadena terminada en 0
; ---------------------------------

print_string:

    push ebp
    mov ebp, esp

    ; TODO:
    ; 1. calcular longitud
    ; 2. syscall write

    mov esi, eax
    xor edx, edx

.calcular:

    cmp byte [esi + edx], 0
    je .imprimir

    inc edx
    jmp .calcular

.imprimir:

    mov ecx, eax
    mov eax, 4
    mov ebx, 1
    int 0x80

    mov esp, ebp
    pop ebp
    ret
