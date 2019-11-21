module test_ex1 (
                  input clk,
                  input [3:0] a,
                  output reg [11:0] c
                  );

   reg [7:0]                  y;

   always @(posedge clk) begin 
        y <= a*a;
        c  <=-y*a;
   end

endmodule

