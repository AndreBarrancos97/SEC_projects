`timescale 1ns / 1ps 

//compute p**q, where q=4


module control (
		//top interface
	input 	    clk,
	input 	    rst,
	input 	    data_in_valid,
		//counter interface 
	input [1:0] cnt_data,
	output 	    cnt_rst, cnt_en,
		//register interface
	output 	    reg_en
);


   
   
//state vars
   reg   state, state_nxt;
   
   //state register 
   always @ (posedge clk) begin //entra no ciclo quando o relógio está a ascender
      if(rst) // se rst=1 então state=0
	      state <= 1'b0;
      else
	         state <= state_nxt;// se rst!=1 então state=state_nxt
   end

   //state transition 
   always @* begin
      //defaults 
      
      state_nxt = state; //inicialização

      case (state)// se o state=0 então vai correr a condição, caso contrário vai para a função default
	      1'b0: //Init
	         if(data_in_valid) 
	            state_nxt = 1'b1;
	      default:;//Accumulate
      endcase    
   end 
   
   //counter management
   assign cnt_rst = data_in_valid;
   assign cnt_en = (state != 1'b0);// se o state != 0, então cnt_eng = 1

   //register management
   assign reg_en = data_in_valid | (cnt_data < 2'd3);
   

endmodule
