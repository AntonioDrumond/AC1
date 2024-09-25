// 855947 - Antonio Drumond Cota de Sousa

module unequal4(output s0, input a0, input a1, input a2, input a3, input b0, input b1, input b2, input b3);
	wire xn0, xn1, xn2, xn3, an0, an1;
	xor XOR0(xn0, a0, b0);
	xor XOR1(xn1, a1, b1);
	xor XOR2(xn2, a2, b2);
	xor XOR3(xn3, a3, b3);
	or OR0(an0, xn0, xn1);
	or OR1(an1, xn2, xn3);
	or OR2(s0, an0, an1);
endmodule

module Guia_0802;
	
	reg[3:0] x;
	reg[3:0] y;
	wire s;
	unequal4 DIFF(s, x[0], x[1], x[2], x[3], y[0], y[1], y[2], y[3]);

	initial begin:main;

		$display("Guia_08 - Exercicio 2");
		
		x = 5;
		y = 5;
#10
		$display("%4b != %4b = %b", x, y, s);

		x = 9;
		y = 4;
#10
		$display("%4b != %4b = %b", x, y, s);

		x = 3;
		y = 13;
#10
		$display("%4b != %4b = %b", x, y, s);

	end
endmodule
