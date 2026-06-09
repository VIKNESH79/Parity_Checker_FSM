module parity_fsm(clk,reset,din,parity);
input clk,reset,din;
output parity;
reg state,next_state;
parameter s0 = 1'b0; // No of 1's received Even
parameter s1 = 1'b1; // No of 1's received Odd

always @(posedge clk or posedge reset) begin
    if(reset) state <= s0;
    else state <= next_state;
end

always @(*) begin
    next_state = state ^ din;
end
assign parity = state;

endmodule