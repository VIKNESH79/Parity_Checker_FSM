`timescale 1ns/1ps

module parity_fsm_tb;
reg clk,reset,din;
wire parity;

parity_fsm dut(.clk(clk), .reset(reset), .din(din), .parity(parity));

initial begin
    clk = 0;
    reset = 0;
    din = 0;
    $dumpfile("parity_fsm.vcd");
    $dumpvars(0,parity_fsm_tb);
    $monitor($time," din = %b parity = %b ",din,parity);
    #100 $finish;
end
always #5 clk = ~clk;

initial begin
    #1 reset  = 1;
    #1 reset = 0;
    #10 din = 1;
    #10 din = 1;
    #10 din = 0;
    #10 din = 1;
    #10 din = 0;
    #10 din = 0;
    #10 din = 1;
end
endmodule