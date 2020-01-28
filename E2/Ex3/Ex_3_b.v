module Dram ( 
        input output_en,
        input write_enable,   
        input  [3:0] addr,
        inout  [3:0] data  
);  
    wire   [3:0] ram [3:0]; 

  always @(*) begin   
    if (write_enable)   
      ram[adress] = data;   
    end 
    else if (output_en)begin
        data = ram[adress];   
    end
endmodule 