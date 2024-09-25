// 855947 - Antonio Drumond Cota de Sousa

module QUESTAO(output s2, input a, input b); // a XNOR b => (a XOR b)' => (a' nor b) nor (a nor b')
	wire na, nb, ex1, ex2;
	nor nota(na, a, a);
	nor notb(nb, b, b);
	nor exp1(ex1, na, b);
	nor exp2(ex2, a, nb);
	nor expF(s2, ex1, ex2);
endmodule

module Guia_0505;

	integer counter;
	reg a, b;
	wire s;
	QUESTAO nd(.s2(s), .a(a), .b(b));

	initial begin:main;
		a=0; b=0; counter = 0;
		$display("Guia_05 - Questao 5");
		$display("Tabela verdade da expressao (a^b)'");
		$display("m | a b | s");
		$monitor("%0d | %b %b | %b", counter, a,b,s);
#1 b=1; counter++;
#1 b=0; a=1; counter++;
#1 b=1; counter++;
	end
endmodule
