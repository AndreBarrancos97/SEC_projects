`timescale 1ns / 1ps

module add_shift_mult (
                     input         clk,
                     input         rst,
                     
                     input [7:0]   a, 
                     input [7:0]   b,
                     output reg [15:0] c,
                     input         start,
                     output        done
                     );

   reg [3:0]                     counter;
   wire[7:0]			 aux;
   

   assign done = (counter == 4'd8);

   always@(posedge clk)
     if(rst)
       counter <= 4'd8;
     else if (start)begin
       c <= 16'd0;
       aux = 8'd8;
       counter <= 4'd0;
       aux = aux + a;
     end
     else if (counter != 4'd8)
       counter <= counter + 1'b1;
   
   
     always@(posedge clk)
     if(rst)
       c <= 16'd0;
     else if(counter != 4'd8) begin 
        if (counter == 4'd0)
	  aux = aux >>>1;
        if (counter == 4'd1)
	  aux = (aux+(b<<4)) >>> 1;	
         if (counter == 4'd2)
	  aux = aux >>>1;
        if (counter == 4'd3)
	  aux = (c-b) >>>1;
          c <= aux;
       
     end
endmodule


