`default_nettype none

module rotfpga2a (
`ifdef USE_POWER_PINS
    inout vdd,  // User area 1 1.8V supply
    inout vss,  // User area 1 digital ground
`endif
    input clk,
    input rst_n,
    input [`INPUT_BITS-1:0] in,
    output [`OUTPUT_BITS-1:0] out
);

grid g (
    .clk(in[0]),
    .rst_n(in[1]),
    .in_se(in[10]),
    .in_sc(in[11]),
    .in_cfg(in[13:12]),
    .in_lb(in[14]),
    .in_lbc(in[16:15]),
    .ins(in[9:2]),
    .out_sc(out[8]),
    .outs(out[7:0])
);

assign out[`OUTPUT_BITS-1:9] = 0;
wire _unused_ok = &{1'b0, in[`INPUT_BITS-1:17], 1'b0};

endmodule
