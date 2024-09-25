// Antonio Drumond Cota de Sousa - 855947

//multiplexador 2x1, para selecionar a saida correta
module mux2x1 (output s4, input a3, input b3, input c1);
	wire and1, and2, not1;
	not NOT1(not1, c1);
	and AND1(and1, a3, not1);
	and AND2(and2, b3, c1);
	or OR1(s4, and1, and2);
endmodule

//module com input seletor
module ornor(output s3, input a2, input b2, input c2);
	wire or3, nor1;
	or OR3(or3, a2, b2);
	nor NOR2(nor1, a2, b2);
	mux2x1 MUX1(s3, or3, nor1, c2);
endmodule

module testes;
	
	integer counter;
	reg a, b, c;
	wire s;
	ornor SEL(s, a, b, c);

	initial begin:main;
		a=0; b=0; c=0; counter = 0;
    $display("Guia_07 - Questao 2");
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
