`default_nettype none

`ifndef STROBE_BIT
    `define STROBE_BIT 34
`endif

module ring_osc_timer (
    input slow_clk,
    input enable,
    input signal,
    output [7:0] out
);

wire slow_clk_n;    
wire running;
wire [3:0] ring;
`ifdef RTL_TEST
    reg saved_signal;
    reg [`STROBE_BIT:0] counter;
    reg [`STROBE_BIT:0] counter_n;
    always @(signal, slow_clk) if(~slow_clk) saved_signal <= signal;
`else
    wire saved_signal;
    wire [`STROBE_BIT:0] counter;
    wire [`STROBE_BIT:0] counter_n;
    gf180mcu_fd_sc_mcu9t5v0__inv_1 slow_clock_inv(.I(slow_clk), .ZN(slow_clk_n));
    gf180mcu_fd_sc_mcu9t5v0__latq_1 sig_latch(.D(signal), .E(slow_clk_n), .Q(saved_signal));
    
`endif
gf180mcu_fd_sc_mcu9t5v0__xnor2_1 sig_cmp(.A1(signal), .A2(saved_signal), .ZN(running));
gf180mcu_fd_sc_mcu9t5v0__nand2_1 ring_osc_0(.A1(ring[0]), .A2(enable), .ZN(ring[1]));
gf180mcu_fd_sc_mcu9t5v0__inv_1 ring_osc_1(.I(ring[1]), .ZN(ring[2]));
gf180mcu_fd_sc_mcu9t5v0__inv_1 ring_osc_2(.I(ring[2]), .ZN(ring[3]));
`ifdef RTL_TEST
    assign #1 ring[0] = ring[3];
    always @(posedge ring[0], negedge ring[0]) begin
        counter[0] <= ring[0] & running;
        counter_n[0] <= ~(ring[0] & running);
    end
`else
    assign ring[0] = ring[3];
    gf180mcu_fd_sc_mcu9t5v0__icgtp_1 clock_gate(.CLK(ring[0]), .E(running), .TE(1'b0), .Q(counter[0]));
    gf180mcu_fd_sc_mcu9t5v0__inv_1 clock_gate_inv(.I(counter[0]), .ZN(counter_n[0]));
`endif
generate genvar i;  
`ifdef RTL_TEST
for (i=1; i<=`STROBE_BIT; i=i+1) begin: gcount
    always @(posedge counter_n[i-1]) begin
        counter[i] <= ~counter[i];
        counter_n[i] <= counter[i];
        if (~slow_clk) begin
            counter[i] <= 0;
            counter_n[i] <= 1;
        end
    end
end
`else
for (i=1; i<=`STROBE_BIT; i=i+1) begin: gcount
    gf180mcu_fd_sc_mcu9t5v0__dffrnq_1 div_flop(.CLK(counter_n[i-1]), .D(counter_n[i]), .RN(slow_clk), .Q(counter[i]));
    gf180mcu_fd_sc_mcu9t5v0__inv_1 div_flop_inv(.I(counter[i]), .ZN(counter_n[i]));
end
`endif
endgenerate

wire strobe = counter[`STROBE_BIT];
assign out = {saved_signal, strobe, counter[5:0]};

endmodule
