`default_nettype none

module totp (
`ifdef USE_POWER_PINS
    inout vdd,  // User area 1 1.8V supply
    inout vss,  // User area 1 digital ground
`endif
    input clk,
    input rst_n,
    input [`INPUT_BITS-1:0] in,
    output [`OUTPUT_BITS-1:0] out
);

    wire data, key_en, msg_en, ready;
    wire hotp_rst_n, hotp_in, hotp_out;
    wire [2:0] sel;
    wire [3:0] bcd;
    wire [6:0] segs;
    wire [1:0] stream_debug;
    wire [8:0] hotp_debug;

    stream stream (
        .clk,
        .rst_n,
        .data,
        .key_en,
        .msg_en,
        .sel,
        .hotp_out,
        .ready,
        .bcd,
        .hotp_rst_n,
        .hotp_in,
        .debug(stream_debug)
    );

    hotp hotp (
        .clk,
        .rst_n(hotp_rst_n),
        .in(hotp_in),
        .out(hotp_out),
        .debug(hotp_debug)
    );
    
    seg_magic seg (
        .digit(bcd),
        .segments(segs)
    );

    wire [3:0] debug = {hotp_debug[8], hotp_out, stream_debug};
    wire [7:0] alt_debug = hotp_debug[7:0];

    assign data = in[0];
    assign key_en = in[1];
    assign msg_en = in[2];
    assign sel = in[5:3];
    assign out[7:0] = in[6] ? alt_debug : {ready, segs};
    assign out[11:8] = in[6] ? debug : bcd;

    wire _unused_ok = &{1'b0, in[`INPUT_BITS-1:7], 1'b0};

endmodule
