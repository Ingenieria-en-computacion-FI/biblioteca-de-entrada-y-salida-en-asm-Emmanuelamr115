SECTION .bss
char_buffer resb 1

SECTION .text
global scan_char

; ---------------------------------
; scan_char
; Salida:
;   AL = caracter leído
; ---------------------------------

scan_char:

    push ebp
    mov ebp, esp

    ; TODO:
    ; 1. usar syscall read
    ; 2. leer 1 byte desde stdin
    ; 3. devolverlo en AL

    mov eax, 3
    mov ebx, 0
    mov ecx, char_buffer
    mov edx, 1
    int 0x80

    mov al, [char_buffer]

    mov esp, ebp
    pop ebp
    ret
