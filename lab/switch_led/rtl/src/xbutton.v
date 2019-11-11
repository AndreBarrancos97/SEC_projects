`timescale 1ns / 1ps
`include "xdefs.vh"

module xsw0 (
		input 	   reset,
		input 	   clk,
		input      sw0,
		input 	   sw0_sel,
		output reg sw0_status
		);

 always @(posedge clk,posedge reset)
   if (sw0_sel && sw0)
     sw0_status <= 1'b1;
     

endmodule
