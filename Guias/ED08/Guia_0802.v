// 855947 - Antonio Drumond Cota de Sousa

// Meio subtrator
module halfSub(output saida0, output deveUm0, input a0, input b0);
	wire notaa0;
	not NOT0(notaa0, a0);
	xor XOR0(saida0, a0, b0);
	and AND0(deveUm0, notaa0, b0);
endmodule

module sub(output saida1, output deveUm1, input a1, input b1, input vemUm1);
	wire sai, vai1, vai2;
	halfSub MEIO0(sai, vai1, a1, b1);
	halfSub MEIO1(saida1, vai2, sai, vemUm1);
	or OR0(deveUm1, vai1, vai2);
endmodule

module Sub5(output saida00, output saida01, output saida02, output saida03, output saida04,
						 input x0, input x1, input x2, input x3, 
						 input y0, input y1, input y2, input y3);
	wire vm0, vm1, vm2;
	halfSub SUB0(saida00, vm0, x0, y0);
	sub SUB1(saida01, vm1, x1, y1, vm0);
	sub SUB2(saida02, vm2, x2, y2, vm1);
	sub SUB3(saida03, saida04, x3, y3, vm2);
endmodule

module Guia_0802;
	
	reg[3:0] x;
	reg[3:0] y;
	wire[4:0] s;
	Sub5 SUBTOTAL(s[0], s[1], s[2], s[3], s[4], x[0], x[1], x[2], x[3], y[0], y[1], y[2], y[3]);

	initial begin:main;

		$display("Guia_08 - Exercicio 2");
		
		x = 5;
		y = 3;
#10
		$display("%4b - %4b = %5b", x, y, s);

		x = 11;
		y = 10;
#10
		$display("%4b - %4b = %5b", x, y, s);

		x = 8;
		y = 5;
#10
		$display("%4b - %4b = %5b", x, y, s);

	end
endmodule
