/*
	Guia_0201.v
	855947 - Antonio Drumond Cota de Sousa
*/

module Guia_0201;
	
	real res = 0;
	real pwr = 1.0;
	integer i = 7;
	reg[7:0] b = 8'b10100000;

	initial
		begin:main
			$display("Guia_0201 - Questao 01b");
			
			//a
			b = 8'b00011000;
			i = 7;
			pwr = 1.0;
			res = 0;
			while(i>=0)
				begin
					pwr = pwr/2.0;
					if(b[i]==1)
						begin
							res = res + pwr;
						end
					i = i - 1;
				end
			$display("a.) 0.%8b = %f", b, res);
			
			//b
			b = 8'b01001000;
			i = 7;
			pwr = 1.0;
			res = 0;
			while(i>=0)
				begin
					pwr = pwr/2.0;
					if(b[i]==1)
						begin
							res = res + pwr;
						end
					i = i - 1;
				end
			$display("b.) 0.%8b = %f", b, res);

			//c
			b = 8'b10101000;
			i = 7;
			pwr = 1.0;
			res = 0;
			while(i>=0)
				begin
					pwr = pwr/2.0;
					if(b[i]==1)
						begin
							res = res + pwr;
						end
					i = i - 1;
				end
			$display("c.) 0.%8b = %f", b, res);

			//d
			b = 8'b11101000;
			i = 7;
			pwr = 1.0;
			res = 0;
			while(i>=0)
				begin
					pwr = pwr/2.0;
					if(b[i]==1)
						begin
							res = res + pwr;
						end
					i = i - 1;
				end
			$display("d.) 1.%8b = %f", b, res+1);

			//e
			b = 8'b11001000;
			i = 7;
			pwr = 1.0;
			res = 0;
			while(i>=0)
				begin
					pwr = pwr/2.0;
					if(b[i]==1)
						begin
							res = res + pwr;
						end
					i = i - 1;
				end
			$display("e.)11.%8b = %f", b, res+3);

	end//main
endmodule
