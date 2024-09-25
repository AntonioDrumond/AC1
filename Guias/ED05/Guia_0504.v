// 855947 - Antonio Drumond Cota de Sousa

module QUESTAO(output s2, input a, input b); // (a'.b)' => a' NAND b
	wire na;
	nand nt(na, a, a);
	nand expr(s2, na, b);
endmodule

module Guia_0504;

	integer counter;
	reg a, b;
	wire s;
	QUESTAO nd(.s2(s), .a(a), .b(b));

	initial begin:main;
		a=0; b=0; counter = 0;
		$display("Guia_05 - Questao 4");
		$display("Tabela verdade da expressao (a'.b)'");
		$display("m | a b | s");
		$monitor("%0d | %b %b | %b", counter, a,b,s);
#1 b=1; counter++;
#1 b=0; a=1; counter++;
#1 b=1; counter++;
	end
endmodule
