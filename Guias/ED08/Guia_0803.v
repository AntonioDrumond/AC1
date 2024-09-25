// 855947 - Antonio Drumond Cota de Sousa

module equal4(output s0, input a0, input a1, input a2, input a3, input b0, input b1, input b2, input b3);
	wire xn0, xn1, xn2, xn3, an0, an1;
	xnor XNOR0(xn0, a0, b0);
	xnor XNOR1(xn1, a1, b1);
	xnor XNOR2(xn2, a2, b2);
	xnor XNOR3(xn3, a3, b3);
	and AND0(an0, xn0, xn1);
	and AND1(an1, xn2, xn3);
	and AND2(s0, an0, an1);
endmodule

module Guia_0802;
	
	reg[3:0] x;
	reg[3:0] y;
	wire s;
	equal4 EQUALS(s, x[0], x[1], x[2], x[3], y[0], y[1], y[2], y[3]);

	initial begin:main;

		$display("Guia_08 - Exercicio 2");
		
		x = 4;
		y = 4;
#10
		$display("%4b == %4b = %b", x, y, s);

		x = 11;
		y = 10;
#10
		$display("%4b == %4b = %b", x, y, s);

		x = 8;
		y = 5;
#10
		$display("%4b == %4b = %b", x, y, s);

	end
endmodule
