// SPDX-FileCopyrightText: 2020 Efabless Corporation
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// SPDX-License-Identifier: Apache-2.0

`default_nettype none
/*
 *-------------------------------------------------------------
 *
 * user_project_wrapper
 *
 * This wrapper enumerates all of the pins available to the
 * user for the user project.
 *
 * An example user project is provided in this wrapper.  The
 * example should be removed and replaced with the actual
 * user project.
 *
 *-------------------------------------------------------------
 */

module user_project_wrapper (
`ifdef USE_POWER_PINS
    inout vdd,		// User area 5.0V supply
    inout vss,		// User area ground
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
    input   user_clock2,

    // User maskable interrupt signals
    output [2:0] user_irq
);

wire clk;
wire rst_n;
wire [`SEL_BITS-1:0] sel;
wire [`INPUT_BITS-1:0] in;
wire [`OUTPUT_BITS-1:0] out;
wire [3:0] proj_clk;
wire [3:0] proj_rst_n;
wire [4*`INPUT_BITS-1:0] proj_in;
wire [4*`OUTPUT_BITS-1:0] proj_out;

`define SEL_START 0
`define SEL_END (`SEL_BITS-1)
`define INPUT_START `SEL_BITS
`define INPUT_END (`INPUT_START+`INPUT_BITS-1)
`define OUTPUT_START (`INPUT_START+`INPUT_BITS)
`define OUTPUT_END (`OUTPUT_START+`OUTPUT_BITS-1)
`define UNUSED_START (`OUTPUT_START+`OUTPUT_BITS)
`define UNUSED_END (`MPRJ_IO_PADS-1)
`define UNUSED_BITS (`MPRJ_IO_PADS-`UNUSED_START)

mux_wrapper mw (
    .wb_clk_i,
    .wb_rst_i,
    .wbs_stb_i,
    .wbs_cyc_i,
    .wbs_we_i,
    .wbs_sel_i,
    .wbs_dat_i,
    .wbs_adr_i,
    .wbs_ack_o,
    .wbs_dat_o,
    .la_data_in,
    .la_data_out,
    .la_oenb,
    .io_in,
    .io_out,
    .io_oeb,
    .user_clock2,
    .user_irq,
    .clk,
    .rst_n,
    .sel,
    .in,
    .out
);

input_mux im (
    .sel,
    .clk,
    .rst_n,
    .in,
    .proj_clk,
    .proj_rst_n,
    .proj_in
);

rotfpga2a p0 (
    .clk(proj_clk[0]),
    .rst_n(proj_rst_n[0]),
    .in(proj_in[`INPUT_BITS-1:0]),
    .out(proj_out[`OUTPUT_BITS-1:0])
);

rotfpga2b p1 (
    .clk(proj_clk[1]),
    .rst_n(proj_rst_n[1]),
    .in(proj_in[2*`INPUT_BITS-1:`INPUT_BITS]),
    .out(proj_out[2*`OUTPUT_BITS-1:`OUTPUT_BITS])
);

totp p2 (
    .clk(proj_clk[2]),
    .rst_n(proj_rst_n[2]),
    .in(proj_in[3*`INPUT_BITS-1:2*`INPUT_BITS]),
    .out(proj_out[3*`OUTPUT_BITS-1:2*`OUTPUT_BITS])
);

unigate p3 (
    .clk(proj_clk[3]),
    .rst_n(proj_rst_n[3]),
    .in(proj_in[4*`INPUT_BITS-1:3*`INPUT_BITS]),
    .out(proj_out[4*`OUTPUT_BITS-1:3*`OUTPUT_BITS])
);

output_mux om (
    .sel,
    .proj_out,
    .out,
);

endmodule	// user_project_wrapper

`default_nettype wire
