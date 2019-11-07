`timescale 1ns / 1ps

module add_shift_mult (
                     input         clk,
                     input         rst,
                     input         start,
                     input [3:0]   d, 
                     input [3:0]   D,
                     output        q,
                     output        done
                     );

   reg [3:0]D_linha;
   
   
   always@ (posedge clk)
     if (rst)
       D_linha <= 4'd0;
     else if (start)
       D_linha <= D;
     else
       

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
       if (rst)
	 dd <= 4d'0;
       else if (start)
	 dd <= d;
   
endmodule


