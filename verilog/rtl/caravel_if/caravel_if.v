`default_nettype none

module caravel_if (
`ifdef USE_POWER_PINS
    inout vdd,	// User area 1 1.8V supply
    inout vss,	// User area 1 digital ground
`endif

    // Wishbone Slave ports (WB MI A)
    input wb_clk_i,
    input wb_rst_i,
    input wbs_stb_i,
    input wbs_cyc_i,
    input wbs_we_i,
    input [3:0] wbs_sel_i,
    input [31:0] wbs_dat_i,
    input [31:0] wbs_adr_i,
    output wbs_ack_o,
    output [31:0] wbs_dat_o,

    // Logic Analyzer Signals
    input  [63:0] la_data_in,
    output [63:0] la_data_out,
    input  [63:0] la_oenb,

    // IOs
    input  [`MPRJ_IO_PADS-1:0] io_in,
    output [`MPRJ_IO_PADS-1:0] io_out,
    output [`MPRJ_IO_PADS-1:0] io_oeb,

    // Independent clock (on independent integer divider)
    input user_clock2,

    // IRQ
    output [2:0] user_irq,

    // passed to muxes
    output clk,
    output rst_n,
    output [`SEL_BITS-1:0] sel,
    output [`INPUT_BITS-1:0] in,
    input [`OUTPUT_BITS-1:0] out
);

`define SKIP_START 0
`define SKIP_END (`SKIP_BITS-1)
`define SEL_START `SKIP_BITS
`define SEL_END (`SEL_START+`SEL_BITS-1)
`define INPUT_START (`SEL_START+`SEL_BITS)
`define INPUT_END (`INPUT_START+`INPUT_BITS-1)
`define OUTPUT_START (`INPUT_START+`INPUT_BITS)
`define OUTPUT_END (`OUTPUT_START+`OUTPUT_BITS-1)

assign clk = wb_clk_i;
assign rst_n = ~wb_rst_i;

assign sel = io_in[`SEL_END:`SEL_START];
assign in = io_in[`INPUT_END:`INPUT_START];

assign io_out[`SKIP_END:`SKIP_START] = {`SKIP_BITS{1'b0}};
assign io_out[`SEL_END:`SEL_START] = {`SEL_BITS{1'b0}};
assign io_out[`INPUT_END:`INPUT_START] = {`INPUT_BITS{1'b0}};
assign io_out[`OUTPUT_END:`OUTPUT_START] = out;

assign io_oeb[`SKIP_END:`SKIP_START] = {`SKIP_BITS{1'b1}};        // input
assign io_oeb[`SEL_END:`SEL_START] = {`SEL_BITS{1'b1}};           // input
assign io_oeb[`INPUT_END:`INPUT_START] = {`INPUT_BITS{1'b1}};     // input
assign io_oeb[`OUTPUT_END:`OUTPUT_START] = {`OUTPUT_BITS{1'b0}};  // output

assign wbs_ack_o = 1'b0;
assign wbs_dat_o = 32'b0;
assign la_data_out = 64'b0;
assign user_irq = 3'b0;

wire _unused_ok = &{1'b0,
                    wbs_stb_i,
                    wbs_cyc_i,
                    wbs_we_i,
                    wbs_sel_i,
                    wbs_dat_i,
                    wbs_adr_i,
                    la_data_in,
                    la_oenb,
                    io_in[`SKIP_END:`SKIP_START],
                    io_in[`OUTPUT_END:`OUTPUT_START],
                    user_clock2,
                    1'b0};

endmodule
`default_nettype wire
