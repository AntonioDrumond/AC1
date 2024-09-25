// 855947 - Antonio Drumond Cota de Sousa

module QUESTAO(output s2, input a, input b);
	wire n1, n2;
	//nor not1(n1, a, a); // a não é barrado, pois a expressao é (a'b)
	nor not2(n2, b, b);
	nor expr(s2, a, n2);
endmodule

module Guia_0501;

	integer counter;
	reg a, b;
	wire s;
	QUESTAO nd(.s2(s), .a(a), .b(b));

	initial begin:main;
		a=0; b=0; counter = 0;
		$display("Guia_05 - Questao 1");
		$display("Tabela verdade da expressao (a'.b)");
		$display("m | a b | s");
		$monitor("%0d | %b %b | %b", counter, a,b,s);
#1 b=1; counter++;
#1 b=0; a=1; counter++;
#1 b=1; counter++;
	end
endmodule
