/*
	 Guia_0103.v
	 855947 - Antonio Drumond Cota de Sousa
*/


module Guia_0104;

//define data
	reg[7:0] a = 20;
	reg[7:0] v = 0;
	reg[7:0] e = 45;

//actions
	initial
		begin:main
			$display("Guia_0104 - Questao 04b");

			$display("a.) Binario:     %8b", a);
			$display("    Quaternario: %d%d%d%d", a[7:6], a[5:4], a[3:2], a[1:0]);

			v = 8'b00011010;
			$display("b.) Binario:     %8b", v);
			$display("    Octadecimal: %o", v);

			v = 8'b00100111;
			$display("c.) Binario:     %8b", v);
			$display("    Hexadecimal: %x", v);

			v = 8'b00100101;
			$display("d.) Binario:     %8b", v);
			$display("    Octadecimal: %o", v);

			$display("e.) Binario:     %8b", e);
			$display("    Quaternario: %d%d%d%d", e[7:6], e[5:4], e[3:2], e[1:0]);
		end
endmodule




