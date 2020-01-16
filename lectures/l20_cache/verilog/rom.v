`timescale 1ns / 1ps

module rom (
                     input [31:0]     addr,
		     input 	      write,
		     input 	      en,
		     input [31:0]     data_in,
		     output [31:0]    data_out,
		     input 	      clk,
		     input 	      rst,
		     output 	      hit_miss,
                     output reg [5:0] decoder
                     );

   
   always@ (*)
     begin
	case (addr)
	  0: decoder = 6'd0;
	  1: decoder = 6'd1;
	  2: decoder = 6'd1;
	  3: decoder = 6'd2;
	  4: decoder = 6'd3;
	  5: decoder = 6'd5;
	  6: decoder = 6'd8;
	  7: decoder = 6'd13;
	  8: decoder = 6'd21;
	  9: decoder = 6'd34;
       endcase
       end
   
endmodule


