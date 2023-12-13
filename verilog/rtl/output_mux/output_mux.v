`default_nettype none

module output_mux (
`ifdef USE_POWER_PINS
    inout vdd,	// User area 1 1.8V supply
    inout vss,	// User area 1 digital ground
`endif
    input [`SEL_BITS-1:0] sel,
    input [`NUM_DESIGNS*`OUTPUT_BITS-1:0] proj_out,
    output [`OUTPUT_BITS-1:0] out
);

assign out = proj_out[sel*`OUTPUT_BITS+:`OUTPUT_BITS];

endmodule
`default_nettype wire
