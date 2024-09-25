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

module Soma6(output saida00, output saida01, output saida02, output saida03, output saida04, output saida05, output saida06,
						 input x0, input x1, input x2, input x3, input x4, input x5,
						 input y0, input y1, input y2, input y3, input y4, input y5);
	wire vm0, vm1, vm2, vm3, vm4;
	halfSum SOMA0(saida00, vm0, x0, y0);
	sum SOMA1(saida01, vm1, x1, y1, vm0);
	sum SOMA2(saida02, vm2, x2, y2, vm1);
	sum SOMA3(saida03, vm3, x3, y3, vm2);
	sum SOMA4(saida04, vm4, x4, y4, vm3);
	sum SOMA5(saida05, saida06, x5, y5, vm4);
endmodule

module comp2_6(output c0, output c1, output c2, output c3, output c4, output c5,
							 input i0, input i1, input i2, input i3, input i4, input i5);
	wire trash;
	Soma6 SUM(c0, c1, c2, c3, c4, c5, trash, ~i0, ~i1, ~i2, ~i3, ~i4, ~i5, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0);
endmodule

module Guia_0805;

	reg[5:0] a;
	wire[5:0] com2;
	comp2_6 COMP(com2[0], com2[1], com2[2], com2[3], com2[4], com2[5], a[0], a[1], a[2], a[3], a[4], a[5]);

	initial begin:main;
		$display("Guia_08 - Exercicio 5");

		a = 6'b010110;
#10
		$display("Complemento de 2 de %6b = %6b", a, com2);

		a = 6'b110011;
#10
		$display("Complemento de 2 de %6b = %6b", a, com2);

		a = 6'b101101;
#10
		$display("Complemento de 2 de %6b = %6b", a, com2);

	end
endmodule
