// 855947 - Antonio Drumond Cota de Sousa

module clock(clk);
	output clk;
	reg clk;
	
	initial begin
		clk = 1'b0;
	end
	
	always begin
		#12 clk = ~clk;
	end
endmodule //clock

module pulse(signal, clock);
	input clock;
	output signal;
	reg signal;

	always @ (clock) begin
		signal = 1'b1;
		#3 signal = 1'b0;
		#3 signal = 1'b1;
		#3 signal = 1'b0;
	end
endmodule //pulse

module Guia_0904;
	
	wire clock;
	clock clk(clock);

	wire p;
	pulse pls (p, clock);

	initial begin
		$dumpfile("Guia_0904.vcd");
		$dumpvars(1, clock, p);
		#480 $finish;
	end
endmodule
