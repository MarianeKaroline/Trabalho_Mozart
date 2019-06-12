; Mostra "Alô mundo"

; Bad programmers
; worry about the
; code.
; Good programmers
; worry about data
; structures and
; their relationships.

SYS_EXIT_PROGRAM equ 1
SYS_WRITE_FILE equ 4   ; Escrever em arquivo
SYSTEM_CALL equ 0x80

SYS_STANDARD_OUTPUT equ 1 ; Saída padrão = tela

ASCII_PULA_LINHA equ 10

section .data
    texto: db "Alô mundo",ASCII_PULA_LINHA,0
    tamanho_texto: equ $-texto

section .text
    global _start

_start:
    mov EAX, SYS_WRITE_FILE
    mov EBX, SYS_STANDARD_OUTPUT
    mov ECX, texto
    mov EDX, tamanho_texto
    int SYSTEM_CALL

    mov EAX, SYS_EXIT_PROGRAM
    mov EBX, 0
    int SYSTEM_CALL
