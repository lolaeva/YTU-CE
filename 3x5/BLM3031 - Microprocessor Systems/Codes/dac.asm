STAK SEGMENT PARA STACK 'STACK'
     DW 20 DUP(?)
STAK ENDS


DATA SEGMENT PARA 'DATA'
     DIGITS 00H
DATA ENDS

CODE SEGMENT PARA 'CODE'
     ASSUME CS:CODE, DS:DATA, SS:STAK

START PROC

      MOX AX, DATA
      MOV DS, AX

      MOV DX, 1000H
      MOV AL, 00H

      ENDLESS:

        OUT DX, AL
        CALL DELAY
        INC AL
        JMP ENDLESS
        RET
START ENDP

DELAY PROC NEAR

      PUSH CX
      MOV CX, 00FFH ; frekans 0fffh olsaydı frekansımız aazalacaktı
      L1:
        LOOP L1
      POP CX
      RET
DELAY ENDP


CODE ENDS
END START
