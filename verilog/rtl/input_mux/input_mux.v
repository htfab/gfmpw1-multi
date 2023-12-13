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
    output [`NUM_DESIGNS-1:0] proj_clk,
    output [`NUM_DESIGNS-1:0] proj_rst_n,
    output [`NUM_DESIGNS*`INPUT_BITS-1:0] proj_in
);

reg[`SEL_BITS-1:0] sel_reg;
always @(posedge clk) begin
    sel_reg <= sel;
end

generate genvar i;
for (i=0; i<`NUM_DESIGNS; i=i+1) begin
    assign proj_clk[i] = clk | (sel_reg != i);
    assign proj_rst_n[i] = (sel == i) ? rst_n : 1'b0;
    assign proj_in[i*`INPUT_BITS+:`INPUT_BITS] = (sel == i) ? in : {`INPUT_BITS{1'b0}};
end
endgenerate

endmodule
`default_nettype wire
