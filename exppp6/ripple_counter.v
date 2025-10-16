module ripple_counter (
  input wire clk,         //clock input
  input wire rst,         //synchronous reset
  output reg [2:0] q      //3-bit counter output
);

initial begin
  q<= 3'b0000;
  end
  
  always@(posedge clk)
  begin
  q<=3'b000;
  if(rst)
  q<=3'b000;              //reset counter to 0
  else 
  q<=q-1;                 //increment counter
  end
  
endmodule
  