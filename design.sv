// Code your design here
module counter(
  input logic clk,
  input logic rst,
  output logic [1:0] q);
  logic [1:0] count;
  
  initial count = 2'b00;
  
  always @(posedge clk or negedge rst)begin
    if(rst==1'b0)
      count<=2'b00;
    
    else
     count <= count+1;
  end
  assign q = count;
  
endmodule