`timescale 1ns/1ns
`include "jk.v"

module jk_tb;

reg clk,j,k;
wire Q;

initial begin
 clk<=0;
end

always begin
  clk=~clk;
  #10;
end

jk uut(clk,j,k,Q);

initial begin
  $dumpfile("jk_tb.vcd");
  $dumpvars(0,jk_tb);
  j <= 0;  
  k <= 0;  
  #45; 
  j <= 1;  
  k <= 0;  
  #40; 
  j <= 1;  
  k <= 1;  
  #40; 
  j <= 0;  
  k <= 1;  
  #40; 
  $finish;  
end

endmodule
