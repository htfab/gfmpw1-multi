// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: 2022 Tamas Hubai

`default_nettype none

module ucomb_full (
    input clk,
    input [18:0] in,
    output [11:0] out
);

ucomb ucomb_inst (
    .u21_in(in[5:2]),
    .u31_in(in[11:6]),
    .u41_in(in[11:2]),
    .u22_in(in[17:12]),
    .u22_sel(in[18]),
    .u21_out(out[0]),
    .u31_out(out[1]),
    .u41_out(out[2]),
    .u22_out(out[4:3]),
    .mux_out(out[5])
);

reg [1:0] saved_sel;
reg [15:0] saved_func;
reg [3:0] saved_pin; 

always @(posedge clk) begin
    if (in[1:0] == 1) begin
        saved_sel <= in[3:2];
    end else if (in[1:0] == 2) begin
        saved_func <= in[17:2];
    end else if (in[1:0] == 3) begin
        saved_pin <= in[5:2];
    end
end

ucomb_ref ucomb_ref_inst (
    .sel(saved_sel),
    .func(saved_func),
    .pin(saved_pin),
    .wpin(out[11:6])
);

endmodule

