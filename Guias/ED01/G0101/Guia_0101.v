/*
	Guia_0101.v
	855947 - Antonio Drumond Cota de Sousa
*/

module Guia_0101;

//define data
	integer x = 0;
	reg [11:0] y = 0;

//actions
	initial
		begin:main
			$display("Guia_0101 - Questao 01b");
			//a
			x = 26;
			y = x;
			$display("a.) Decimal: %d" , x);
			$display("    Binario: %8b" , y);
			//b
			x = 53;
			y = x;
			$display("b.) Decimal: %d" , x);
			$display("    Binario: %8b" , y);
			//c
			x = 713;
			y = x;
			$display("c.) Decimal: %d" , x);
			$display("    Binario: %12b" , y);
			//d
			x = 213;
			y = x;
			$display("d.) Decimal: %d" , x);
			$display("    Binario: %12b" , y);
			//e
			x = 365;
			y = x;
			$display("e.) Decimal: %d" , x);
			$display("    Binario: %12b" , y);
		end
endmodule
