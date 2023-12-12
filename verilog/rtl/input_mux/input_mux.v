`default_nettype none

module input_mux (
`ifdef USE_POWER_PINS
    inout vdd,	// User area 1 1.8V supply
    inout vss,	// User area 1 digital ground
`endif
    input [`SEL_BITS-1:0] sel,
    input clk,
    input rst_n,
    input [`INPUT_BITS-1:0] in,
    output [3:0] proj_clk,
    output [3:0] proj_rst_n,
    output [4*`INPUT_BITS-1:0] proj_in
);

reg[`SEL_BITS-1:0] sel_latched;
always @(posedge clk) begin
    sel_latched <= sel;
end

assign proj_clk[0] = clk | (sel_latched != 0);
assign proj_clk[1] = clk | (sel_latched != 1);
assign proj_clk[2] = clk | (sel_latched != 2);
assign proj_clk[3] = clk | (sel_latched != 3);

assign proj_rst_n[0] = (sel == 0) ? rst_n : 1'b0;
assign proj_rst_n[1] = (sel == 1) ? rst_n : 1'b0;
assign proj_rst_n[2] = (sel == 2) ? rst_n : 1'b0;
assign proj_rst_n[3] = (sel == 3) ? rst_n : 1'b0;

assign proj_in[  `INPUT_BITS-1:            0] = (sel == 0) ? in : {`INPUT_BITS{1'b0}};
assign proj_in[2*`INPUT_BITS-1:  `INPUT_BITS] = (sel == 1) ? in : {`INPUT_BITS{1'b0}};
assign proj_in[3*`INPUT_BITS-1:2*`INPUT_BITS] = (sel == 2) ? in : {`INPUT_BITS{1'b0}};
assign proj_in[4*`INPUT_BITS-1:3*`INPUT_BITS] = (sel == 3) ? in : {`INPUT_BITS{1'b0}};

endmodule
`default_nettype wire
