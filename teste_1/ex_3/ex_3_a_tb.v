`timescale 1ns / 1ps

module ex_3_a_tb;

   reg  [3:0] x;
   reg  x_is_valid;
   reg 	      clk;
   reg 	      rst;
 	      

   wire [5:0] y;
   

   ex_3_a zica(
		    .x(x),
		    .x_is_valid(x_is_valid),
		    .rst(rst),
	            .clk(clk),
	            .y(y)
		    
		    );

   initial begin

      $dumpfile("top.vcd");
      $dumpvars();


	// Initialize Inputs
	clk = 1
	x_is_valid = 1;
        rst = 0
	x = 4'b0100;
	//b = 0;

	#10
	x = 4'b1000;
	//b = 4'b0001;
	#120

      $finish;
      
    end 
// initial begin
   always #10 clk = ~clk;
endmodule

