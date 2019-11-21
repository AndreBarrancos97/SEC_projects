`timescale 1ns/1ps
module ex_3_a (
                  input x_is_valid,
                  input [3:0] x,
		  input rst,
		  input clk,
                  output reg [5:0] y 
                  );
 
   reg [5:0] 			   y1;
   

   always @(posedge clk) begin 
	if (rst)
	begin
		y<=6'd0;
		y1<=6'd0;
	end	
   end
	
   always @(posedge clk) begin 
	if (x_load)
	  begin
	y1<=y;
	y<=(x<<1)+y1;
	end
   end

       
endmodule
