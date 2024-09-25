// 855947 - Antonio Drumond Cota de Sousa

module QUESTAO(output s2, input a, input b); // (a'+b)' => a' NOR b
	wire n1;
	nor not1(n1, a, a);
	nor expr(s2, n1, b);
endmodule

module Guia_0503;

	integer counter;
	reg a, b;
	wire s;
	QUESTAO nd(.s2(s), .a(a), .b(b));

	initial begin:main;
		a=0; b=0; counter = 0;
		$display("Guia_05 - Questao 3");
		$display("Tabela verdade da expressao (a'+b)'");
		$display("m | a b | s");
		$monitor("%0d | %b %b | %b", counter, a,b,s);
#1 b=1; counter++;
#1 b=0; a=1; counter++;
#1 b=1; counter++;
	end
endmodule
