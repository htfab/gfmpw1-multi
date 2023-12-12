`default_nettype none

module unigate (
`ifdef USE_POWER_PINS
    inout vdd,	// User area 1 1.8V supply
    inout vss,	// User area 1 digital ground
`endif
    input clk,
    input rst_n,
    input [`INPUT_BITS-1:0] in,
    output [`OUTPUT_BITS-1:0] out
);

    ucomb_full gate (
        .clk,
        .in,
        .out
    );

endmodule

