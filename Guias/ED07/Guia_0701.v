// Antonio Drumond Cota de Sousa - 855947

//modulo paralelo, com duas saidas
module paralelo (output s1, output s2, input a1, input b1);
	and AND1 (s1, a1, b1);
	nand NAND1 (s2, a1, b1);
endmodule

//multiplexador 2x1, para selecionar a saida correta
module mux2x1 (output s4, input a3, input b3, input c1);
	wire and1, and2, not1;
	not NOT1(not1, c1);
	and AND1(and1, a3, not1);
	and AND2(and2, b3, c1);
	or OR1(s4, and1, and2);
endmodule

//module com input seletor
module seletor (output s3, input a2, input b2, input c2);
	wire and3, nand1;
	and AND3(and3, a2, b2);
	nand NAND2(nand1, a2, b2);
	mux2x1 MUX1(s3, and3, nand1, c2);
endmodule

module testes;
	
	integer counter;
	reg a, b, c;
	wire s;
	seletor SEL(s, a, b, c);

	initial begin:main;
		a=0; b=0; c=0; counter = 0;
    $display("Guia_07 - Questao 1");
    $display("m | a b c | s");
    $monitor("%0d | %b %b %b | %b", counter, a,b,c,s);
#5 c=1; counter++;
#1 c=0; b=1; counter++;
#1 c=1; b=1; counter++;
#1 c=0; b=0; a=1; counter++;
#1 c=1; b=0; counter++;
#1 c=0; b=1; counter++;
#1 c=1; counter++;
  end 
endmodule
