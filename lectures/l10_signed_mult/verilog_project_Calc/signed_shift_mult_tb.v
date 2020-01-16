module add_shft_mul_tb ();

   reg clk, rst;
   reg [3:0] a, b;
   wire [7:0] c;
   reg         start;
   wire        done;
   
   add_shft_mul mult0 (
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

      b=4'b0010;   //7
      //b=4'b0010; //2
      a = 4'b1001; //-2
      //b = 4'b0011; //3
      //a = 4'd0;
      //b = 4'd0;
      //b=8'b00000010;
      //a = 8'b11111110;
      @(posedge clk) #1 rst=0;

      #5 @(posedge clk) #1 start=1;
      @(posedge clk) #1 start=0;

      @(posedge done) $display("%d", c);
      
      @(posedge clk) $finish;
   end
   
   always #10 clk = ~clk;
 
endmodule