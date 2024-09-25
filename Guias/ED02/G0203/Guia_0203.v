//855947 - Antonio Drumond Cota de Sousa

module Guia_0203;
//data
	reg[7:0] i;
	reg[7:0] r;

//actions
	initial
		begin:main
			$display("Guia_0203 - Questao 03b\n");
			
			i = 0;
			r = 8'b01111000;
			$display("a.) 0.%8b = 0.%d%d%d%d(4)", r, r[7:6], r[5:4], r[3:2], r[1:0]);

			i = 0;
			r = 8'b10100100;
			$display("b.) 0.%8b = 0.%d%d%d(8)", r, r[7:5], r[4:2], r[1:0]);

			i = 0;
			r = 8'b10011000;
			$display("c.) 0.%8b = 0.%x%x(16)", r, r[7:4], r[3:0]);

			i = 1;
			r = 8'b11101100;
			$display("d.) 0.%8b = 1.%d%d%d(8)", r, r[7:5], r[4:2], r[1:0]);

			i = 8'b00001101;
			r = 8'b10010000;
			$display("e.) %b.%b = %X.%X%X(16)", i, r, i[3:0], r[7:4], r[3:0]);


		end//main

endmodule
