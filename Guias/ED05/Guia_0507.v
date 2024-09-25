// 855947 - Antonio Drumond Cota de Sousa

// para as portas XOR e XNOR nao faz diferenca trocar ambos os inputs
module QUESTAO(output s, input a, input b); // a' ^ b' => a^b => (a' nor b') nor (a nor b)
	wire na, nb, ex1, ex2;
	nor nota(na, a, a);
	nor notb(nb, b, b);
	nor exp1(ex1, na, nb);
	nor exp2(ex2, a, b);
	nor expF(s, ex1, ex2);
endmodule

module Guia_0507;

	integer counter;
	reg a, b;
	wire s;
	QUESTAO nd(.s(s), .a(a), .b(b));

	initial begin:main;
		a=0; b=0; counter = 0;
		$display("Guia_05 - Questao 7");
		$display("Tabela verdade da expressao a' ^ b'");
		$display("m | a b | s");
		$monitor("%0d | %b %b | %b", counter, a,b,s);
#1 b=1; counter++;
#1 b=0; a=1; counter++;
#1 b=1; counter++;
	end
endmodule
