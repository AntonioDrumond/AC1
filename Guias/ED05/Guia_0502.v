// 855947 - Antonio Drumond Cota de Sousa

module QUESTAO(output s, input a, input b); // (a+b')
	wire n1;
	nand not1(n1, a, a);
	nand expr(s, n1, b);
endmodule

module Guia_0502;

	integer counter;
	reg a, b;
	wire s;
	QUESTAO nd(.s(s), .a(a), .b(b));

	initial begin:main;
		a=0; b=0; counter = 0;
		$display("Guia_05 - Questao 2");
		$display("Tabela verdade da expressao (a+b')");
		$display("m | a b | s");
		$monitor("%0d | %b %b | %b", counter, a,b,s);
#1 b=1; counter++;
#1 b=0; a=1; counter++;
#1 b=1; counter++;
	end
endmodule
