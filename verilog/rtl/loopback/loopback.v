`default_nettype none

module loopback (
`ifdef USE_POWER_PINS
    inout vdd,	// User area 1 1.8V supply
    inout vss,	// User area 1 digital ground
`endif
    input clk,
    input rst_n,
    input [`INPUT_BITS-1:0] in,
    output [`OUTPUT_BITS-1:0] out
);

wire [`INPUT_BITS:0] chain;
assign chain[0] = rst_n;

generate genvar i;
for (i=0; i<`INPUT_BITS; i=i+1) begin
    assign chain[i+1] = chain[i] ^ in[i];
end
endgenerate

assign out = {chain[`INPUT_BITS:`INPUT_BITS-`OUTPUT_BITS+2], clk};

endmodule
`default_nettype wire
