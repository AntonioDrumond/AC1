// 855947 - Antonio Drumond Cota de Sousa

module Guia_0205;

	reg[15:0] a;
	reg[15:0] b;
	reg[15:0] c;
	real ar;
	real br;

	initial
	begin:main
	$display("Guia_0205 - Questao 05b\n");

	a = 8'b0101_1100;
	b = 8'b0010_0110;
	c = a + b;
	$display("a.) 101.11 + 10.011 = %b.%b", c[7:4], c[3:0]);

	a = 8'b1000_1010;
	b = 8'b0010_0100;
	c = a - b;
	$display("b.) 1000.101 - 10.01 = %b.%b", c[7:4], c[3:0]);

	a = 8'b00101_101;
	b = 8'b00010_101;
	c = a * b;
	$display("c.) %b.%b * %b.%b = %b.%b", a[7:3], a[2:0], b[7:3], b[2:0], c[12:6], c[5:0]);

	a = 8'b10111_010;
	b = 8'b00011_011;
	ar = a;
	br = b;
	c = (ar/br) * 256; // para ajustar a posicao do ponto, multiplicamos por 2^8
	$display("d.) %b.%b / %b.%b = %b.%b", a[7:3], a[2:0], b[7:3], b[2:0], c[15:8], c[7:0]);

	a = 8'b01101011;
	b = 8'b00001101;
	c = a % b;
	$display("e.) %0b %% %0b = %0b", a, b, c);

	end
endmodule
