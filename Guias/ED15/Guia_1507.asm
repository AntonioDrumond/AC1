; Antonio Drumond Cota de Sousa - 855947

JMP MAIN

AMOD2:	ANI FE	; Nao consegui pensar em outra maneira
	CPI FF
	JZ POS
	JMP NEG
POS:	MVI A,01
	RET
NEG:	MVI A,00
	RET

ADIV4:	ANI FE
	RRC
	ANI FE
	RRC
	RET

LOADER:	MVI A,FB
	STA C0C0
	MVI A,71
	STA C0D0
	RET

MAIN:	CALL LOADER
	
	; Dividir dado02 por 4
	LDA C0D0
	CALL ADIV4
	STA C0D2
	LDA C0C0
	CALL AMOD2
	
	LXI H,C0D2
	ADD M
	STA C0C4


HLT
