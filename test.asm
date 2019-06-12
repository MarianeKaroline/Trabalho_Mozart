section .data
    ; constantes padrão para comunicação com o sistema operacional
    SYSTEM_CALL equ 0x80
    SYS_EXIT_PROGRAM equ 1

    ; Identificadores de arquivos
    SYS_STANDARD_OUTPUT equ 1
    SYS_STANDARD_INPUT equ 2

    ; Manipulação de arquivos
    SYS_READ_FILE equ 3
    SYS_WRITE_FILE equ 4

    ; Exibição de texto
    QUEBRA_DE_LINHA equ 10

    Comando: db '/bin/ls -a',0
    Argumentos: db '-a',0

section .text
    global _start

_start:
    mov ebx,Comando
    mov eax, 11
    mov ecx, 0
    mov edx, 0
    int SYSTEM_CALL

Fim:
    ; termina programa
    mov eax,SYS_EXIT_PROGRAM
    int SYSTEM_CALL