;Llamada a las macros
include macros1.asm
.model Large ;Tamaño del programa

; ---------------- Segmento de pila ----------
.stack
; ---------------- Variables a utilizar -------
.data
;Donde se guardar las operaciones
operaciones db 800 dup('$'), '$'


;Salto de linea 
skip db 0ah,0dh, ' ', '$'


;Donde donde un simbolo 
simbolo db 5 dup ('$'), '$'

;Variables para los numeros
numero1 db 50 dup ('$'), '$'
number1 db 50 dup ('$'), '$'
numero2 db 50 dup ('$'), '$'
number2 db 50 dup (' '), '$'
num1 db 50 dup ('$'), '$'
num2 db 50 dup ('$'), '$'
resul db 0
resul2 db 0000
num3 db 100 dup('$'), '$'
num4 db 100 dup('$'), '$'
test1  db 0
test2  db 0
resultado2 db 100 dup('$') , '$'

;Maneja la entrada del teclado
handlerentrada dw ?


;Convertida
conver db 100 dup('$') , '$'

;Rotulos Inicio
rotulo  db 0ah,0dh, "Universidad de San Carlos de Guatemala" , '$'
marco   db 0ah,0dh, "Facultad de Ingenieria" , '$'
marco1  db 0ah,0dh, "Arquitectura de Computadores y Ensambladores 1" , '$'
marco2  db 0ah,0dh, "Seccion B" , '$'
marco3  db 0ah,0dh, "Segundo Semestre 2023" , '$'
marco4  db 0ah,0dh, "Nombre: David Abraham Noriega Zamora" , '$'
marco5  db 0ah,0dh, "Carnet: 202113378", '$'
marco6  db 0ah,0dh, " " , '$'
marco7  db 0ah,0dh, " " , '$'
marco8  db 0ah,0dh, "Precione  Enter  Para Continuar... " , '$'
marco9  db 0ah,0dh, " " , '$'
marco10 db 0ah,0dh, " " , '$'

;--------------- Tablero  -------------------
tab db 0ah,0dh,  "  A   S   D   F   J   K   L  " , '$'
tab1 db 0ah,0dh, "______________________________" , '$'
tab2 db 0ah,0dh, "|   |   |   |   |   |   |   |" , '$'
tab3 db 0ah,0dh, "|   |   |   |   |   |   |   |" , '$'
tab4 db 0ah,0dh, "|   |   |   |   |   |   |   |" , '$'
tab5 db 0ah,0dh, "|   |   |   |   |   |   |   |" , '$'
tab6 db 0ah,0dh, "|   |   |   |   |   |   |   |" , '$'
tab7 db 0ah,0dh, "|   |   |   |   |   |   |   |" , '$'
tab8 db 0ah,0dh, "______________________________" , '$'
;--------------- Obtener lo que envio----------
obtener db 0ah,0dh, 'Ingrese el numero: ' , '$'
;--------------- Celda Ocupada----------
ocupada db 0ah,0dh, 'Celda Ocupada: ' , '$'
;--------------- Jugadores -------------------
;Jugador 1
ingrese1 db 0ah,0dh, 'Ingrese el primer Jugador: ' , '$'
;Jugador 2
ingrese2 db 0ah,0dh, 'Ingrese el segundo Jugador: ' , '$'
;--------------- Signos -------------------
signo1 db 1 dup ("X"),'$' 
signo2 db 1 dup ("O"),'$'
;--------------- Turnos -------------------
turno1 db 0ah,0dh, 'Turno del Jugador 1: ' , '$'
turno2 db 0ah,0dh, 'Turno del Jugador 2: ' , '$'
;--------------- Ganador -------------------
ganador1 db 0ah,0dh, 'El Ganador es el Jugador 1: ' , '$'
ganador2 db 0ah,0dh, 'El Ganador es el Jugador 2: ' , '$'
;--------------- Empate -------------------
empate db 0ah,0dh, 'Empate' , '$'
;--------------- Guardar -------------------
guardar db 0ah,0dh, 'Desea Guardar la Partida? ' , '$'
guardar1 db 0ah,0dh, 'Precione W para Guardar la Partida ' , '$'
guardar2 db 0ah,0dh, 'Precione S para Salir ' , '$'
;--------------- Guardar -------------------



;Rotulos 2
marco11 db 0ah,0dh, "1. Ayuda" , '$'
marco12  db 0ah,0dh, "2. Jugador vs Jugador" , '$'
marco13  db 0ah,0dh, "3. Jugador vs PC " , '$'
marco14  db 0ah,0dh, "4. Cargar Partida" , '$'
marco15  db 0ah,0dh, "5. Reportes de la Partida" , '$'
marco16  db 0ah,0dh, "6. Salir" ,'$'
marco17  db 0ah,0dh, "Entramos a Ayuda " , '$'
marco18  db 0ah,0dh, "Entramos a Jugador vs Jugador  " , '$'
marco19  db 0ah,0dh, "Entramos a Jugador vs Pc" , '$'
marco20  db 0ah,0dh, "Entramos a  Cargar Partida " , '$'
marco21  db 0ah,0dh, "Entramos a Reportes de la Partida" , '$'
marco22  db 0ah,0dh, "Guardar Partida con W " , '$'

;Errores
errorintro db 0ah,0dh, '******* Error no es Tecla Enter ***************' , '$'
errormenu db 0ah,0dh,'********* Comando No valido ************', '$'

;----------------Variables para escribir en un archivo----------------

; ----------------------------^^^^^^^^^^^^ Eso estamos haciendo



;Salto de linea
saltolinea db 10,'$'


;--------------- Segmento de codigo -------------------
.code
main proc far
mov ax,@data
mov ds,ax
mov es,ax

    begin:


        mov al,signo1
        mov tab7[8],al
        jmp inicio
        
        mov al,signo1
        mov tab7[12],al
        jmp inicio 
        mov al,signo1
        mov tab7[16],al
        jmp inicio 
        mov al,signo1
        mov tab7[20],al
        jmp inicio  
        mov al,signo1
        mov tab7[24],al
        jmp inicio 
        mov al,signo1
        mov tab7[28],al
        jmp inicio
        mov al,signo1
        mov tab6[4],al
        jmp inicio
        mov al,signo1
        mov tab6[8],al
        jmp inicio 

    inicio:
        print rotulo
        print marco
        print marco1
        print marco2
        print marco3
        print marco4
        print marco5
        print marco6
        print marco7
        print marco8
        print marco9
        print marco10
        print skip
        print_tabla:
        

        getChar

        cmp al,13 ;oprimir intro
		je menu
        print errorintro
        jmp inicio

    menu:
        print marco11
        print marco12
        print marco13
        print marco14
        print marco15
        print marco16
        print skip
        getChar

        cmp al,49 ; mnemonio 31h = 1 en hexadecimal, ascii 49
        je opcion1
        cmp al,50 ; mnemonio 32h = 2 en hexadecimal, ascii 50
        je opcion2
        cmp al,51 ; mnemonio 33h = 3 en hexadecimal, ascii 51
        je opcion3
        cmp al,52 ; mnemonio 33h = 3 en hexadecimal, ascii 52
        je opcion4
        cmp al,53 ; mnemonio 33h = 3 en hexadecimal, ascii 53
        je opcion5
        cmp al,54 ; mnemonio 33h = 3 en hexadecimal, ascii 54
        je salir

        print errormenu                               
        jmp menu
    ;Ayuda 
    opcion1: 
        print marco17
        jmp menu

    ;---------------------------------------- Jugador vs Jugador    
    opcion2:
        print saltolinea
        print ingrese1
        ObtenerTexto numero1
        print ingrese2
        ObtenerTexto numero2
        jmp jugador1
    jugador1:
        print turno1
        ObtenerTexto signo1
        print tab
        print tab1
        print tab2
        print tab3
        print tab4
        print tab5
        print tab6
        print tab7
        print tab8
        print skip
        getChar
;----------Primer movimiento
        mov al,signo1
        cmp tab7[4],al
        jmp jugador2

        mov obtener,al 
        print obtener
        cmp obtener,83

        mov al,signo1
        cmp tab7[8],al
        jmp jugador2        

        cmp al,97 ; mnemonio 61h = a en hexadecimal, ascii 97
        je jugador2
        cmp al,115 ; mnemonio 73h = s en hexadecimal, ascii 115
        je jugador2
        cmp al,100 ; mnemonio 64h = d en hexadecimal, ascii 100
        je jugador2
        cmp al,102 ; mnemonio 66h = f en hexadecimal, ascii 102
        je jugador2
        cmp al,106 ; mnemonio 6Ah = j en hexadecimal, ascii 106
        je jugador2
        cmp al,107 ; mnemonio 6Bh = k en hexadecimal, ascii 107
        je jugador2
        cmp al,108 ; mnemonio 6Ch = l en hexadecimal, ascii 108
        je jugador2
        print errormenu
        jmp jugador1

    jugador2:
        print turno2
        ObtenerTexto signo2
        print tab
        print tab1
        print tab2
        print tab3
        print tab4
        print tab5
        print tab6
        print tab7
        print tab8
        print skip
        getChar
        cmp al,97 ; mnemonio 61h = a en hexadecimal, ascii 97
        je jugador1
        cmp al,115 ; mnemonio 73h = s en hexadecimal, ascii 115
        je jugador1
        cmp al,100 ; mnemonio 64h = d en hexadecimal, ascii 100
        je jugador1
        cmp al,102 ; mnemonio 66h = f en hexadecimal, ascii 102
        je jugador1
        cmp al,106 ; mnemonio 6Ah = j en hexadecimal, ascii 106
        je jugador1
        cmp al,107 ; mnemonio 6Bh = k en hexadecimal, ascii 107
        je jugador1
        cmp al,108 ; mnemonio 6Ch = l en hexadecimal, ascii 108
        je jugador1
        print errormenu
        jmp jugador2

    ;Jugador vs PC     
    opcion3:
        print marco20 
        jmp menu

    ;Cargar Partida    
    opcion4:
        print marco21
        jmp menu

    ;Reportes de la Partida    
    opcion5:
        print marco22 
        jmp menu

    ;Salir         
    opcion6:
    salir:
        close

main endp
end main
