/*
	Guia_0201.v
	855947 - Antonio Drumond Cota de Sousa
*/

module Guia_0202;
	
	reg [7:0] b = 0;
	real r = 0.375;
	integer i = 7;

	initial
		begin:main
			$display("Guia_0202 - Questao 02b\n");

			//a
			while(r>0 && i>0)
				begin//while
				if(r*2>=1)
					begin
					b[i] = 1;
					r = r*2.0 - 1.0;
					end
				else
					begin
						b[i] = 0;
						r = r*2.0;
				end//if
				i = i-1;
			end//while
			$display("a.) 0.375 = 0.%8b", b);

			//b
			r = 0.125;
			i = 7;
			b = 0;
			while(r>0 && i>0)
				begin//while
				if(r*2>=1)
					begin
					b[i] = 1;
					r = r*2.0 - 1.0;
					end
				else
					begin
						b[i] = 0;
						r = r*2.0;
				end//if
				i = i-1;
			end//while
			$display("a.) 2.125 = 10.%8b", b);

			//c
			r = 0.625;
			i = 7;
			b = 0;
			while(r>0 && i>0)
				begin//while
				if(r*2>=1)
					begin
					b[i] = 1;
					r = r*2.0 - 1.0;
					end
				else
					begin
						b[i] = 0;
						r = r*2.0;
				end//if
				i = i-1;
			end//while
			$display("c.) 3.625 = 11.%8b", b);

			//d
			r = 0.03125;
			i = 7;
			b = 0;
			while(r>0 && i>0)
				begin//while
				if(r*2>=1)
					begin
					b[i] = 1;
					r = r*2.0 - 1.0;
					end
				else
					begin
						b[i] = 0;
						r = r*2.0;
				end//if
				i = i-1;
			end//while
			$display("d.) 5.03125 = 101.%8b", b);

			//e
			r = 0.7500;
			i = 7;
			b = 0;
			while(r>0 && i>0)
				begin//while
				if(r*2>=1)
					begin
					b[i] = 1;
					r = r*2.0 - 1.0;
					end
				else
					begin
						b[i] = 0;
						r = r*2.0;
				end//if
				i = i-1;
			end//while
			$display("e.) 6.75 = 110.%8b", b);


	end//main
endmodule
