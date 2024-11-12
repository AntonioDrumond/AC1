;855947 - Antonio Drumond Cota de Sousa

JMP MAIN

LOADER:LXI H,C0E0
MVI M,22H

LXI H,C0F0
MVI M,BBH

LXI H,C100
MVI M,13H

LXI H,C110
MVI M,49H

RET




MAIN:	CALL LOADER ; Carrega dados iniciais na memoria
	LDA C0E0
	LXI H,C0F0
	SUB M
	STA C0E2
	
	LXI H,C100
	MOV B,M
	                     ;  Altera o fluxo de execucao para caso o resultado 
	JC NEG ;      da subtracao seja negativo

	ADD B     ; Caso positivo
	JMP AFTER

	; Caso negativo
	NEG: CMA
	INR A
	ADD B
	CMA
	INR A

	AFTER: STA C0E2

	; Ultima subtracao
	LXI H,C110
	SUB M
	
	JNC AFTER2
	CMA
	INR A

	AFTER2: STA C0E2
	
HLT
