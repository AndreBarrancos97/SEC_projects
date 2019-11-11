`timescale 1ns / 1ps
`include "xdefs.vh"

module xled (
		input 	   reset,
		input 	   clk,
		input 	   led0_sel,
	        input      sw0_status,
		output reg led0
		);

 always @(posedge clk,posedge reset)
   if (reset)
     led0 <= 1'b0;
   else if(led0_sel && sw0_status)
     led0 <= 1'b1;
     

endmodule
