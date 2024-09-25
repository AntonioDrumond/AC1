// 855947 - Antonio Drumond Cota de Sousa
module Questao1;
	reg[7:0] qs;
	reg[5:0] six;
	reg[6:0] sev;
	reg[7:0] eig;

	initial
		begin:main;
			$display("Questao 0301\n");

			qs = 8'b00001010;
			six = ~qs;
			$display("a.) %0b => %b", qs, six);

			qs = 8'b00001101;
			eig = ~qs;
			$display("b.) %0b => %b", qs, eig);

			qs = 8'b00101001;
			six = ~qs+1;
			$display("c.) %0b => %b", qs, six);

			qs = 8'b00101111;
			sev = ~qs+1;
			$display("d.) %0b => %b", qs, sev);

			qs = 8'b00110100;
			eig = ~qs+1;
			$display("e.) %0b => %b", qs, eig);

		end//main
endmodule

module Questao2;
	reg[11:0] qs;
	reg[5:0] six;
	reg[7:0] eig;
	reg[9:0] ten;

	initial
		begin:main;
			$display("\nQuestao 0302\n");

			qs = 8'b00111001; // 321 em binario
			six = ~qs;
			$display("a.) %d%d%d => %b", qs[5:4], qs[3:2], qs[1:0], six);

			qs = 8'hB2;
			eig = ~qs;
			$display("b.) %x => %b", qs, eig);

			qs = 8'b00101101;
			six = ~qs+1;
			$display("c.) %d%d%d => %b", qs[5:4], qs[3:2], qs[1:0], six);

			qs = 12'o146;
			ten = ~qs+1;
			$display("d.) %o => %b", qs, ten);

			qs = 8'h6F;
			eig = ~qs+1;
			$display("e.) %x => %b", qs, eig);
		end
endmodule

module Questao3;
	reg signed[4:0] a = 5'b10110;
	reg signed[4:0] ar;
	reg signed[5:0] b = 6'b110011;
	reg signed[5:0] br;
	reg signed[6:0] d = 7'b1011011;
	reg signed[6:0] dr;

	initial
		begin:main;
			$display("\nQuestao 0303\n");

			ar = ~(a-1);
			$display("a.) %b => %d", a, ar);
			
			br = ~(b-1);
			$display("b.) %b => %d", b, br);

			b = 6'b100100;
			br = ~(b-1);
			$display("c.) %b => %b", b, br);

			dr = ~(d-1);
			$display("d.) %b => %b", d, dr);

			d = 7'b1011011;
			dr = ~(d-1);
			$display("e.) %b => %x", d, dr);
		end
endmodule

module Questao4;
	reg[15:0] bin;
	reg[15:0] neg;
	reg[15:0] r;

	initial
		begin:main;
			$display("\nQuestao 0304\n");

			bin = 8'b00011001;
			neg = 8'b00001101;
			r[4:0] = bin[4:0] + (~neg[4:0]+1);
			$display("a.) %0b - %0b = %8b", bin[4:0], neg[3:0], r[4:0]);

			bin = 8'b01011101;
			neg = 8'b00001001;
			r[6:0] = bin[6:0] + (~(neg*2)+1);
			$display("b.) %0b.%0b - %0b.%8b = %0b.%8b", bin[7:4], bin[3:0], neg[3:2], neg[1:0], r[6:4], r[3:0]);

			bin = 8'b00111001;
			neg = 8'b00101101;
			r[5:0] = bin + (~neg[5:0]+1);
			$display("c.) %d%d%d (4) - %d%d%d (4) = %d%d%d (4)", bin[5:4], bin[3:2], bin[1:0], neg[5:4], neg[3:2], neg[1:0], r[5:4], r[3:2], r[1:0]);

			bin = 12'o376;
			neg = 12'o267;
			r[8:0] = bin[8:0] + (~neg[8:0]+1);
			$display("d.) %o - %o = %o", bin[8:0], neg[8:0], r[8:0]);

			bin = 15'h7D2;
			neg = 15'hA51;
			r[11:0] = bin[11:0] + (~neg[11:0]+1);
			$display("e.) %x - %x = %x", bin[11:0], neg[11:0], r[8:0]);
		end
endmodule

module Questao5;
	reg[15:0] bin;
	reg[15:0] neg;
	reg[15:0] r;

	initial
		begin:main;
			$display("\nQuestao 0305\n");

			bin = 8'b00110101;
			neg = 8'b00001011;
			r[5:0] = bin[5:0] + (~neg[5:0]+1);
			$display("a.) %8b - %8b = %8b", bin[5:0], neg[5:0], r[5:0]);

			bin = 8'b0101_1001;
			neg = 12'o3_1;
			r[6:0] = bin[6:0] + (~(neg[6:0]*2)+1);
			$display("b.) %0b.%0b(2) - %0o.%0o(8) = %0b.%8b(2)", bin[6:4], bin[3:0], neg[5:3], neg[2:0], r[6:4], r[3:0]);

			bin = 8'b00100111;
			neg = 16'h3D;
			r[7:0] = bin[7:0] + (~neg[7:0]+1);
			$display("c.) %d%d%d(4) - %x(16) = %8b", bin[5:4], bin[3:2], bin[1:0], neg[7:0], r[7:0]);

			bin = 16'hC5;
			neg = 8'b01011001;
			r[7:0] = bin[7:0] + (~neg[7:0]+1);
			$display("d.) %x(16) - %8b(2) = %8b(2)", bin[7:0], neg[7:0], r[7:0]);

			bin = 16'h7E;
			neg = 16'h2D;
			r[7:0] = bin[7:0] + (~neg[7:0]+1);
			$display("e.) %x(16) - %x(16) = %8b(2)", bin[7:0], neg[7:0], r[7:0]);
		end
endmodule
