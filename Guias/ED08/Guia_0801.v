// 855947 - Antonio Drumond Cota de Sousa

// Meio somador
module halfSum(output saida0, output vaiUm0, input a0, input b0);
	xor XOR0(saida0, a0, b0);
	and AND0(vaiUm0, a0, b0);
endmodule

// Somador completo
module sum(output saida1, output vaiUm1, input a1, input b1, input vemUm1);
	wire sai, vai, vai2;
	halfSum MEIA0(sai, vai, a1, b1);
	halfSum MEIA1(saida1, vai2, sai, vemUm1);
	or OR1(vaiUm1, vai, vai2);
endmodule

module Soma5(output saida00, output saida01, output saida02, output saida03, output saida04,
						 input x0, input x1, input x2, input x3, 
						 input y0, input y1, input y2, input y3);
	wire vm0, vm1, vm2;
	halfSum SOMA0(saida00, vm0, x0, y0);
	sum SOMA1(saida01, vm1, x1, y1, vm0);
	sum SOMA2(saida02, vm2, x2, y2, vm1);
	sum SOMA3(saida03, saida04, x3, y3, vm2);
endmodule

module Guia_0801;
	
	reg[3:0] x;
	reg[3:0] y;
	wire[4:0] s;
	Soma5 SOMATOTAL(s[0], s[1], s[2], s[3], s[4], x[0], x[1], x[2], x[3], y[0], y[1], y[2], y[3]);

	initial begin:main;

		$display("Guia_08 - Exercicio 1");
		
		x = 5;
		y = 3;
#10
		$display("%4b + %4b = %5b", x, y, s);

		x = 10;
		y = 11;
#10
		$display("%4b + %4b = %5b", x, y, s);

		x = 8;
		y = 5;
#10
		$display("%4b + %4b = %5b", x, y, s);

	end
endmodule
