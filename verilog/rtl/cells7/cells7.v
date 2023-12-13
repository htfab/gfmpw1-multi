`default_nettype none

module cells7 (
`ifdef USE_POWER_PINS
    inout vdd,  // User area 1 1.8V supply
    inout vss,  // User area 1 digital ground
`endif
    input clk,
    input rst_n,
    input [`INPUT_BITS-1:0] in,
    output [`OUTPUT_BITS-1:0] out
);

wire slow_clk = in[0];
wire page_mode = in[1];
wire [5:0] switches = in[7:2];

reg [5:0] cm_page;
reg [5:0] cm_in;
wire [7:0] cm_out;

cell_mux cm_inst (
    .page(cm_page),
    .in(cm_in),
    .out(cm_out)
);

reg ro_en;
reg [2:0] ro_sel;
wire ro_sig = cm_out[ro_sel];
wire [7:0] ro_out;

ring_osc_timer ro_inst (
    .slow_clk(slow_clk),
    .enable(ro_en),
    .signal(ro_sig),
    .out(ro_out)
);

assign out[7:0] = ro_en ? ro_out : cm_out;

always @(posedge slow_clk) begin
    if (page_mode) begin
        if (switches[5:3] == 3'b111) begin
            ro_en <= 1;
            ro_sel <= switches[2:0];
        end else begin
            ro_en <= 0;
            cm_page <= switches;
        end
    end else begin
        cm_in <= switches;
    end
end

assign out[`OUTPUT_BITS-1:8] = 0;
wire _unused_ok = &{1'b0, in[`INPUT_BITS-1:8], 1'b0};

endmodule
