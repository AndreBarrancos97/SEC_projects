`timescale 1ns / 1ps

module signed_shift_mult_tb;

   reg  clk;
   reg  rst;
   reg  [7:0] a;
   reg  [7:0] b;
 
   wire [15:0] c;
   reg 	       start;
   wire        done;
   

   add_shift_mult  zica(
                       .clk(clk),
                       .rst(rst),
                     
                       .a(a), 
                       .b(b),
                       .c(c),
                       .start(start),
                       .done(done)
		    );

   initial begin

      $dumpfile("dump.vcd");
      $dumpvars;
      
      rst = 1;
      clk = 1;
      start = 0;

      a=2;
      b = -7;

      @(posedge clk) #1 rst=0;

      #5 @(posedge clk) #1 start=1;
      @(posedge clk) #1 start=0;

      @(posedge done) $display("%d", c);
      
      @(posedge clk) $finish;
   end
   
   always #10 clk = ~clk;
 
endmodule

