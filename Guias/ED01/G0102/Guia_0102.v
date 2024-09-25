/*
	Guia_0102.v
	855947 - Antonio Drumond Cota de Sousa
*/

module Guia_0102;

//define data
	reg [7:0] y = 0;
	integer x = 0;

//actions
	initial
		begin:main
			$display("Guia_0102 - Questao 01b");
			//a
			y = 8'b00010101;
			x = y;
			$display("a.) Binario: %8b", y);
			$display("    Decimal: %d", x);
			//b
			y = 8'b00011011;
			x = y;
			$display("b.) Binario: %8b", y);
			$display("    Decimal: %d", x);
			//c
			y = 8'b00010010;
			x = y;
			$display("c.) Binario: %8b", y);
			$display("    Decimal: %d", x);
			//d
			y = 8'b00101011;
			x = y;
			$display("d.) Binario: %8b", y);
			$display("    Decimal: %d", x);
			//e
			y = 8'b00110111;
			x = y;
			$display("e.) Binario: %8b", y);
			$display("    Decimal: %d", x);
		end
endmodule
