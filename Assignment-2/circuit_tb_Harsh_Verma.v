`timescale 1ns/1ns
`include "circuit.v"

module circuit_tb;

reg in;
reg clk=1;

always #5
clk= ~clk;

circuit c0 (.clk(clk), .in(in), .out(out));

initial begin
    $dumpfile("circuit_tb.vcd");
    $dumpvars(0, circuit_tb);
    
    for (integer i = 0; i<=5; i=i+1) begin
        in=0;
        #15;

        in=1;
        #15;
    end
    
    $display("done successfully!");
    $finish;
    
end

initial  
    $monitor ("in=%0d out=%0d clk=%0d ", in, out, clk); 

endmodule