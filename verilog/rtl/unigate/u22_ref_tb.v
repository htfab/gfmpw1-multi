// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: 2022 Tamas Hubai

`default_nettype none

module u22_ref_tb ();

integer i;
reg clk;
reg [11:0] func1;
reg [11:0] func2;
wire [2:0] pin = i;
reg [17:0] wiring;
wire [2:0] wtest;
wire [3:0] fcmp1 = {func1[9], func1[6], func1[3], func1[0]};
wire [3:0] fcmp2 = {func2[9], func2[6], func2[3], func2[0]};
wire [15:0] fres1 = {func1[11], func1[10], func1[8], func1[7], func1[5], func1[4], func1[2], func1[1]};
wire [15:0] fres2 = {func2[11], func2[10], func2[8], func2[7], func2[5], func2[4], func2[2], func2[1]};
wire assert = (wiring[3*i+:3] == wtest) && (fres1 == 8'b0) && (fres2 == 8'b0);

wire [2:0] O = 3'b000;
wire [2:0] I = 3'b001;
wire [2:0] a = 3'b010;
wire [2:0] b = 3'b011;

u22_ref dut (
    .clk(clk),
    .func1(fcmp1),
    .func2(fcmp2),
    .pin(pin),
    .wiring(wtest)
);

always #1 clk ^= 1;

initial begin
    clk <= 0;
    for (i=0; i<6; i=i+1) begin
        #2 func1 <= {O, O, O, O}; func2 <= {O, O, O, O}; wiring <= {O, O, O, O, O, O}; #4 $display(assert);
        #2 func1 <= {O, O, O, O}; func2 <= {O, O, O, I}; wiring <= {a, b, a, I, I, O}; #4 $display(assert);
        #2 func1 <= {O, O, O, O}; func2 <= {O, O, I, O}; wiring <= {b, O, a, a, O, O}; #4 $display(assert);
        #2 func1 <= {O, O, O, O}; func2 <= {O, O, I, I}; wiring <= {b, O, O, O, O, O}; #4 $display(assert);
        #2 func1 <= {O, O, O, O}; func2 <= {O, I, O, O}; wiring <= {a, O, b, b, O, O}; #4 $display(assert);
        #2 func1 <= {O, O, O, O}; func2 <= {O, I, O, I}; wiring <= {a, O, O, O, O, O}; #4 $display(assert);
        #2 func1 <= {O, O, O, O}; func2 <= {O, I, I, O}; wiring <= {b, O, O, O, a, O}; #4 $display(assert);
        #2 func1 <= {O, O, O, O}; func2 <= {O, I, I, I}; wiring <= {b, O, a, O, O, a}; #4 $display(assert);
        #2 func1 <= {O, O, O, O}; func2 <= {I, O, O, O}; wiring <= {I, b, a, a, O, O}; #4 $display(assert);
        #2 func1 <= {O, O, O, O}; func2 <= {I, O, O, I}; wiring <= {I, b, O, O, a, O}; #4 $display(assert);
        #2 func1 <= {O, O, O, O}; func2 <= {I, O, I, O}; wiring <= {I, a, O, O, O, O}; #4 $display(assert);
        #2 func1 <= {O, O, O, O}; func2 <= {I, O, I, I}; wiring <= {I, b, a, a, b, O}; #4 $display(assert);
        #2 func1 <= {O, O, O, O}; func2 <= {I, I, O, O}; wiring <= {I, b, O, O, O, O}; #4 $display(assert);
        #2 func1 <= {O, O, O, O}; func2 <= {I, I, O, I}; wiring <= {I, a, b, b, a, O}; #4 $display(assert);
        #2 func1 <= {O, O, O, O}; func2 <= {I, I, I, O}; wiring <= {I, b, I, O, a, I}; #4 $display(assert);
        #2 func1 <= {O, O, O, O}; func2 <= {I, I, I, I}; wiring <= {I, O, O, O, O, O}; #4 $display(assert);
        #2 func1 <= {O, O, O, I}; func2 <= {O, O, O, O}; wiring <= {a, b, b, O, a, O}; #4 $display(assert);
        #2 func1 <= {O, O, O, I}; func2 <= {O, O, O, I}; wiring <= {O, b, b, a, a, O}; #4 $display(assert);
        #2 func1 <= {O, O, O, I}; func2 <= {O, O, I, O}; wiring <= {b, a, a, O, a, O}; #4 $display(assert);
        #2 func1 <= {O, O, O, I}; func2 <= {O, O, I, I}; wiring <= {b, a, a, O, O, O}; #4 $display(assert);
        #2 func1 <= {O, O, O, I}; func2 <= {O, I, O, O}; wiring <= {a, b, b, O, b, O}; #4 $display(assert);
        #2 func1 <= {O, O, O, I}; func2 <= {O, I, O, I}; wiring <= {a, b, b, O, O, O}; #4 $display(assert);
        #2 func1 <= {O, O, O, I}; func2 <= {O, I, I, O}; wiring <= {b, a, O, O, O, a}; #4 $display(assert);
        #2 func1 <= {O, O, O, I}; func2 <= {O, I, I, I}; wiring <= {b, a, I, a, I, I}; #4 $display(assert);
        #2 func1 <= {O, O, O, I}; func2 <= {I, O, O, O}; wiring <= {b, a, a, O, I, O}; #4 $display(assert);
        #2 func1 <= {O, O, O, I}; func2 <= {I, O, O, I}; wiring <= {b, O, O, a, I, O}; #4 $display(assert);
        #2 func1 <= {O, O, O, I}; func2 <= {I, O, I, O}; wiring <= {I, I, a, I, O, b}; #4 $display(assert);
        #2 func1 <= {O, O, O, I}; func2 <= {I, O, I, I}; wiring <= {b, I, b, a, a, I}; #4 $display(assert);
        #2 func1 <= {O, O, O, I}; func2 <= {I, I, O, O}; wiring <= {I, I, b, I, O, a}; #4 $display(assert);
        #2 func1 <= {O, O, O, I}; func2 <= {I, I, O, I}; wiring <= {a, I, a, b, b, I}; #4 $display(assert);
        #2 func1 <= {O, O, O, I}; func2 <= {I, I, I, O}; wiring <= {b, a, I, a, O, I}; #4 $display(assert);
        #2 func1 <= {O, O, O, I}; func2 <= {I, I, I, I}; wiring <= {b, a, I, a, a, I}; #4 $display(assert);
        #2 func1 <= {O, O, I, O}; func2 <= {O, O, O, O}; wiring <= {a, b, O, b, a, O}; #4 $display(assert);
        #2 func1 <= {O, O, I, O}; func2 <= {O, O, O, I}; wiring <= {a, a, O, b, O, O}; #4 $display(assert);
        #2 func1 <= {O, O, I, O}; func2 <= {O, O, I, O}; wiring <= {a, b, I, I, O, O}; #4 $display(assert);
        #2 func1 <= {O, O, I, O}; func2 <= {O, O, I, I}; wiring <= {a, I, b, I, I, O}; #4 $display(assert);
        #2 func1 <= {O, O, I, O}; func2 <= {O, I, O, O}; wiring <= {O, O, O, b, a, O}; #4 $display(assert);
        #2 func1 <= {O, O, I, O}; func2 <= {O, I, O, I}; wiring <= {a, b, O, b, O, O}; #4 $display(assert);
        #2 func1 <= {O, O, I, O}; func2 <= {O, I, I, O}; wiring <= {a, b, O, O, O, O}; #4 $display(assert);
        #2 func1 <= {O, O, I, O}; func2 <= {O, I, I, I}; wiring <= {a, b, O, O, b, O}; #4 $display(assert);
        #2 func1 <= {O, O, I, O}; func2 <= {I, O, O, O}; wiring <= {b, I, O, a, a, I}; #4 $display(assert);
        #2 func1 <= {O, O, I, O}; func2 <= {I, O, O, I}; wiring <= {O, O, b, a, I, O}; #4 $display(assert);
        #2 func1 <= {O, O, I, O}; func2 <= {I, O, I, O}; wiring <= {O, b, O, a, I, O}; #4 $display(assert);
        #2 func1 <= {O, O, I, O}; func2 <= {I, O, I, I}; wiring <= {I, a, O, b, O, O}; #4 $display(assert);
        #2 func1 <= {O, O, I, O}; func2 <= {I, I, O, O}; wiring <= {a, b, I, O, a, I}; #4 $display(assert);
        #2 func1 <= {O, O, I, O}; func2 <= {I, I, O, I}; wiring <= {a, b, I, O, O, I}; #4 $display(assert);
        #2 func1 <= {O, O, I, O}; func2 <= {I, I, I, O}; wiring <= {I, a, b, a, O, O}; #4 $display(assert);
        #2 func1 <= {O, O, I, O}; func2 <= {I, I, I, I}; wiring <= {I, a, b, a, b, O}; #4 $display(assert);
        #2 func1 <= {O, O, I, I}; func2 <= {O, O, O, O}; wiring <= {O, O, O, b, O, O}; #4 $display(assert);
        #2 func1 <= {O, O, I, I}; func2 <= {O, O, O, I}; wiring <= {O, a, a, b, O, O}; #4 $display(assert);
        #2 func1 <= {O, O, I, I}; func2 <= {O, O, I, O}; wiring <= {b, I, I, O, a, O}; #4 $display(assert);
        #2 func1 <= {O, O, I, I}; func2 <= {O, O, I, I}; wiring <= {O, b, O, O, O, O}; #4 $display(assert);
        #2 func1 <= {O, O, I, I}; func2 <= {O, I, O, O}; wiring <= {O, a, O, b, O, a}; #4 $display(assert);
        #2 func1 <= {O, O, I, I}; func2 <= {O, I, O, I}; wiring <= {a, O, O, b, O, O}; #4 $display(assert);
        #2 func1 <= {O, O, I, I}; func2 <= {O, I, I, O}; wiring <= {I, a, b, O, I, O}; #4 $display(assert);
        #2 func1 <= {O, O, I, I}; func2 <= {O, I, I, I}; wiring <= {a, O, b, O, O, O}; #4 $display(assert);
        #2 func1 <= {O, O, I, I}; func2 <= {I, O, O, O}; wiring <= {O, b, I, O, a, I}; #4 $display(assert);
        #2 func1 <= {O, O, I, I}; func2 <= {I, O, O, I}; wiring <= {a, O, b, O, I, O}; #4 $display(assert);
        #2 func1 <= {O, O, I, I}; func2 <= {I, O, I, O}; wiring <= {I, b, b, O, a, O}; #4 $display(assert);
        #2 func1 <= {O, O, I, I}; func2 <= {I, O, I, I}; wiring <= {I, a, b, O, O, O}; #4 $display(assert);
        #2 func1 <= {O, O, I, I}; func2 <= {I, I, O, O}; wiring <= {O, O, b, O, I, O}; #4 $display(assert);
        #2 func1 <= {O, O, I, I}; func2 <= {I, I, O, I}; wiring <= {b, I, O, O, a, I}; #4 $display(assert);
        #2 func1 <= {O, O, I, I}; func2 <= {I, I, I, O}; wiring <= {I, a, b, O, a, O}; #4 $display(assert);
        #2 func1 <= {O, O, I, I}; func2 <= {I, I, I, I}; wiring <= {I, O, b, O, O, O}; #4 $display(assert);
        #2 func1 <= {O, I, O, O}; func2 <= {O, O, O, O}; wiring <= {b, a, O, a, b, O}; #4 $display(assert);
        #2 func1 <= {O, I, O, O}; func2 <= {O, O, O, I}; wiring <= {b, b, O, a, O, O}; #4 $display(assert);
        #2 func1 <= {O, I, O, O}; func2 <= {O, O, I, O}; wiring <= {O, O, O, a, b, O}; #4 $display(assert);
        #2 func1 <= {O, I, O, O}; func2 <= {O, O, I, I}; wiring <= {b, a, O, a, O, O}; #4 $display(assert);
        #2 func1 <= {O, I, O, O}; func2 <= {O, I, O, O}; wiring <= {b, a, I, I, O, O}; #4 $display(assert);
        #2 func1 <= {O, I, O, O}; func2 <= {O, I, O, I}; wiring <= {b, I, a, I, I, O}; #4 $display(assert);
        #2 func1 <= {O, I, O, O}; func2 <= {O, I, I, O}; wiring <= {b, a, O, O, O, O}; #4 $display(assert);
        #2 func1 <= {O, I, O, O}; func2 <= {O, I, I, I}; wiring <= {b, a, O, O, a, O}; #4 $display(assert);
        #2 func1 <= {O, I, O, O}; func2 <= {I, O, O, O}; wiring <= {a, I, O, b, b, I}; #4 $display(assert);
        #2 func1 <= {O, I, O, O}; func2 <= {I, O, O, I}; wiring <= {O, O, a, b, I, O}; #4 $display(assert);
        #2 func1 <= {O, I, O, O}; func2 <= {I, O, I, O}; wiring <= {b, a, I, O, a, I}; #4 $display(assert);
        #2 func1 <= {O, I, O, O}; func2 <= {I, O, I, I}; wiring <= {b, a, I, O, O, I}; #4 $display(assert);
        #2 func1 <= {O, I, O, O}; func2 <= {I, I, O, O}; wiring <= {O, a, O, b, I, O}; #4 $display(assert);
        #2 func1 <= {O, I, O, O}; func2 <= {I, I, O, I}; wiring <= {I, b, O, a, O, O}; #4 $display(assert);
        #2 func1 <= {O, I, O, O}; func2 <= {I, I, I, O}; wiring <= {I, b, a, b, O, O}; #4 $display(assert);
        #2 func1 <= {O, I, O, O}; func2 <= {I, I, I, I}; wiring <= {I, b, a, b, a, O}; #4 $display(assert);
        #2 func1 <= {O, I, O, I}; func2 <= {O, O, O, O}; wiring <= {O, O, O, a, O, O}; #4 $display(assert);
        #2 func1 <= {O, I, O, I}; func2 <= {O, O, O, I}; wiring <= {O, b, b, a, O, O}; #4 $display(assert);
        #2 func1 <= {O, I, O, I}; func2 <= {O, O, I, O}; wiring <= {b, O, a, a, O, a}; #4 $display(assert);
        #2 func1 <= {O, I, O, I}; func2 <= {O, O, I, I}; wiring <= {b, O, O, a, O, O}; #4 $display(assert);
        #2 func1 <= {O, I, O, I}; func2 <= {O, I, O, O}; wiring <= {a, I, I, O, b, O}; #4 $display(assert);
        #2 func1 <= {O, I, O, I}; func2 <= {O, I, O, I}; wiring <= {O, a, O, O, O, O}; #4 $display(assert);
        #2 func1 <= {O, I, O, I}; func2 <= {O, I, I, O}; wiring <= {I, b, a, O, I, O}; #4 $display(assert);
        #2 func1 <= {O, I, O, I}; func2 <= {O, I, I, I}; wiring <= {b, O, a, O, O, O}; #4 $display(assert);
        #2 func1 <= {O, I, O, I}; func2 <= {I, O, O, O}; wiring <= {O, a, I, O, b, I}; #4 $display(assert);
        #2 func1 <= {O, I, O, I}; func2 <= {I, O, O, I}; wiring <= {b, O, a, O, I, O}; #4 $display(assert);
        #2 func1 <= {O, I, O, I}; func2 <= {I, O, I, O}; wiring <= {O, O, a, O, I, O}; #4 $display(assert);
        #2 func1 <= {O, I, O, I}; func2 <= {I, O, I, I}; wiring <= {I, b, I, a, a, I}; #4 $display(assert);
        #2 func1 <= {O, I, O, I}; func2 <= {I, I, O, O}; wiring <= {I, b, a, O, a, O}; #4 $display(assert);
        #2 func1 <= {O, I, O, I}; func2 <= {I, I, O, I}; wiring <= {I, b, a, O, O, O}; #4 $display(assert);
        #2 func1 <= {O, I, O, I}; func2 <= {I, I, I, O}; wiring <= {I, b, a, O, b, O}; #4 $display(assert);
        #2 func1 <= {O, I, O, I}; func2 <= {I, I, I, I}; wiring <= {I, O, a, O, O, O}; #4 $display(assert);
        #2 func1 <= {O, I, I, O}; func2 <= {O, O, O, O}; wiring <= {b, I, I, O, I, a}; #4 $display(assert);
        #2 func1 <= {O, I, I, O}; func2 <= {O, O, O, I}; wiring <= {O, O, a, b, a, O}; #4 $display(assert);
        #2 func1 <= {O, I, I, O}; func2 <= {O, O, I, O}; wiring <= {O, O, b, a, O, O}; #4 $display(assert);
        #2 func1 <= {O, I, I, O}; func2 <= {O, O, I, I}; wiring <= {a, I, I, b, I, O}; #4 $display(assert);
        #2 func1 <= {O, I, I, O}; func2 <= {O, I, O, O}; wiring <= {O, O, a, b, O, O}; #4 $display(assert);
        #2 func1 <= {O, I, I, O}; func2 <= {O, I, O, I}; wiring <= {b, I, I, a, I, O}; #4 $display(assert);
        #2 func1 <= {O, I, I, O}; func2 <= {O, I, I, O}; wiring <= {O, b, a, O, O, O}; #4 $display(assert);
        #2 func1 <= {O, I, I, O}; func2 <= {O, I, I, I}; wiring <= {a, b, O, a, O, O}; #4 $display(assert);
        #2 func1 <= {O, I, I, O}; func2 <= {I, O, O, O}; wiring <= {b, I, a, O, a, I}; #4 $display(assert);
        #2 func1 <= {O, I, I, O}; func2 <= {I, O, O, I}; wiring <= {b, I, a, O, O, I}; #4 $display(assert);
        #2 func1 <= {O, I, I, O}; func2 <= {I, O, I, O}; wiring <= {O, b, a, O, I, O}; #4 $display(assert);
        #2 func1 <= {O, I, I, O}; func2 <= {I, O, I, I}; wiring <= {I, a, a, b, a, O}; #4 $display(assert);
        #2 func1 <= {O, I, I, O}; func2 <= {I, I, O, O}; wiring <= {O, a, b, O, I, O}; #4 $display(assert);
        #2 func1 <= {O, I, I, O}; func2 <= {I, I, O, I}; wiring <= {I, b, b, a, b, O}; #4 $display(assert);
        #2 func1 <= {O, I, I, O}; func2 <= {I, I, I, O}; wiring <= {I, O, b, a, O, O}; #4 $display(assert);
        #2 func1 <= {O, I, I, O}; func2 <= {I, I, I, I}; wiring <= {I, b, b, a, a, O}; #4 $display(assert);
        #2 func1 <= {O, I, I, I}; func2 <= {O, O, O, O}; wiring <= {O, O, O, b, O, a}; #4 $display(assert);
        #2 func1 <= {O, I, I, I}; func2 <= {O, O, O, I}; wiring <= {O, b, a, b, a, O}; #4 $display(assert);
        #2 func1 <= {O, I, I, I}; func2 <= {O, O, I, O}; wiring <= {O, b, O, a, O, O}; #4 $display(assert);
        #2 func1 <= {O, I, I, I}; func2 <= {O, O, I, I}; wiring <= {O, a, b, a, O, O}; #4 $display(assert);
        #2 func1 <= {O, I, I, I}; func2 <= {O, I, O, O}; wiring <= {O, a, O, b, O, O}; #4 $display(assert);
        #2 func1 <= {O, I, I, I}; func2 <= {O, I, O, I}; wiring <= {O, b, a, b, O, O}; #4 $display(assert);
        #2 func1 <= {O, I, I, I}; func2 <= {O, I, I, O}; wiring <= {a, b, a, O, a, O}; #4 $display(assert);
        #2 func1 <= {O, I, I, I}; func2 <= {O, I, I, I}; wiring <= {a, b, a, O, O, O}; #4 $display(assert);
        #2 func1 <= {O, I, I, I}; func2 <= {I, O, O, O}; wiring <= {a, b, I, a, O, I}; #4 $display(assert);
        #2 func1 <= {O, I, I, I}; func2 <= {I, O, O, I}; wiring <= {a, b, I, a, a, I}; #4 $display(assert);
        #2 func1 <= {O, I, I, I}; func2 <= {I, O, I, O}; wiring <= {b, O, a, b, I, b}; #4 $display(assert);
        #2 func1 <= {O, I, I, I}; func2 <= {I, O, I, I}; wiring <= {a, b, O, O, I, a}; #4 $display(assert);
        #2 func1 <= {O, I, I, I}; func2 <= {I, I, O, O}; wiring <= {a, O, b, a, I, a}; #4 $display(assert);
        #2 func1 <= {O, I, I, I}; func2 <= {I, I, O, I}; wiring <= {I, b, b, a, b, a}; #4 $display(assert);
        #2 func1 <= {O, I, I, I}; func2 <= {I, I, I, O}; wiring <= {a, b, a, O, I, O}; #4 $display(assert);
        #2 func1 <= {O, I, I, I}; func2 <= {I, I, I, I}; wiring <= {I, O, O, b, O, a}; #4 $display(assert);
        #2 func1 <= {I, O, O, O}; func2 <= {O, O, O, O}; wiring <= {b, O, b, I, a, O}; #4 $display(assert);
        #2 func1 <= {I, O, O, O}; func2 <= {O, O, O, I}; wiring <= {a, b, I, a, I, O}; #4 $display(assert);
        #2 func1 <= {I, O, O, O}; func2 <= {O, O, I, O}; wiring <= {b, b, a, I, O, O}; #4 $display(assert);
        #2 func1 <= {I, O, O, O}; func2 <= {O, O, I, I}; wiring <= {O, I, b, I, a, I}; #4 $display(assert);
        #2 func1 <= {I, O, O, O}; func2 <= {O, I, O, O}; wiring <= {a, a, b, I, O, O}; #4 $display(assert);
        #2 func1 <= {I, O, O, O}; func2 <= {O, I, O, I}; wiring <= {O, I, a, I, b, I}; #4 $display(assert);
        #2 func1 <= {I, O, O, O}; func2 <= {O, I, I, O}; wiring <= {a, b, a, O, a, I}; #4 $display(assert);
        #2 func1 <= {I, O, O, O}; func2 <= {O, I, I, I}; wiring <= {b, b, a, I, a, O}; #4 $display(assert);
        #2 func1 <= {I, O, O, O}; func2 <= {I, O, O, O}; wiring <= {a, b, I, a, O, O}; #4 $display(assert);
        #2 func1 <= {I, O, O, O}; func2 <= {I, O, O, I}; wiring <= {I, b, a, I, I, O}; #4 $display(assert);
        #2 func1 <= {I, O, O, O}; func2 <= {I, O, I, O}; wiring <= {I, b, a, I, O, O}; #4 $display(assert);
        #2 func1 <= {I, O, O, O}; func2 <= {I, O, I, I}; wiring <= {I, b, a, I, a, O}; #4 $display(assert);
        #2 func1 <= {I, O, O, O}; func2 <= {I, I, O, O}; wiring <= {I, a, b, I, O, O}; #4 $display(assert);
        #2 func1 <= {I, O, O, O}; func2 <= {I, I, O, I}; wiring <= {I, a, b, I, b, O}; #4 $display(assert);
        #2 func1 <= {I, O, O, O}; func2 <= {I, I, I, O}; wiring <= {a, b, a, O, I, I}; #4 $display(assert);
        #2 func1 <= {I, O, O, O}; func2 <= {I, I, I, I}; wiring <= {b, I, O, b, O, a}; #4 $display(assert);
        #2 func1 <= {I, O, O, I}; func2 <= {O, O, O, O}; wiring <= {O, b, I, O, I, a}; #4 $display(assert);
        #2 func1 <= {I, O, O, I}; func2 <= {O, O, O, I}; wiring <= {O, a, b, I, a, O}; #4 $display(assert);
        #2 func1 <= {I, O, O, I}; func2 <= {O, O, I, O}; wiring <= {O, b, a, O, a, I}; #4 $display(assert);
        #2 func1 <= {I, O, O, I}; func2 <= {O, O, I, I}; wiring <= {O, a, I, b, I, O}; #4 $display(assert);
        #2 func1 <= {I, O, O, I}; func2 <= {O, I, O, O}; wiring <= {O, a, b, O, b, I}; #4 $display(assert);
        #2 func1 <= {I, O, O, I}; func2 <= {O, I, O, I}; wiring <= {O, b, I, a, I, O}; #4 $display(assert);
        #2 func1 <= {I, O, O, I}; func2 <= {O, I, I, O}; wiring <= {O, b, a, O, O, I}; #4 $display(assert);
        #2 func1 <= {I, O, O, I}; func2 <= {O, I, I, I}; wiring <= {b, I, a, I, a, I}; #4 $display(assert);
        #2 func1 <= {I, O, O, I}; func2 <= {I, O, O, O}; wiring <= {b, I, a, O, a, O}; #4 $display(assert);
        #2 func1 <= {I, O, O, I}; func2 <= {I, O, O, I}; wiring <= {b, I, a, O, O, O}; #4 $display(assert);
        #2 func1 <= {I, O, O, I}; func2 <= {I, O, I, O}; wiring <= {b, I, a, O, I, O}; #4 $display(assert);
        #2 func1 <= {I, O, O, I}; func2 <= {I, O, I, I}; wiring <= {O, a, I, b, b, O}; #4 $display(assert);
        #2 func1 <= {I, O, O, I}; func2 <= {I, I, O, O}; wiring <= {a, I, b, O, I, O}; #4 $display(assert);
        #2 func1 <= {I, O, O, I}; func2 <= {I, I, O, I}; wiring <= {O, b, I, a, a, O}; #4 $display(assert);
        #2 func1 <= {I, O, O, I}; func2 <= {I, I, I, O}; wiring <= {I, a, b, a, O, I}; #4 $display(assert);
        #2 func1 <= {I, O, O, I}; func2 <= {I, I, I, I}; wiring <= {I, b, a, b, a, I}; #4 $display(assert);
        #2 func1 <= {I, O, I, O}; func2 <= {O, O, O, O}; wiring <= {O, O, a, I, O, O}; #4 $display(assert);
        #2 func1 <= {I, O, I, O}; func2 <= {O, O, O, I}; wiring <= {a, b, a, I, a, O}; #4 $display(assert);
        #2 func1 <= {I, O, I, O}; func2 <= {O, O, I, O}; wiring <= {b, O, a, I, O, O}; #4 $display(assert);
        #2 func1 <= {I, O, I, O}; func2 <= {O, O, I, I}; wiring <= {a, I, b, I, a, O}; #4 $display(assert);
        #2 func1 <= {I, O, I, O}; func2 <= {O, I, O, O}; wiring <= {O, a, O, b, a, I}; #4 $display(assert);
        #2 func1 <= {I, O, I, O}; func2 <= {O, I, O, I}; wiring <= {a, I, O, I, O, O}; #4 $display(assert);
        #2 func1 <= {I, O, I, O}; func2 <= {O, I, I, O}; wiring <= {a, I, b, I, O, O}; #4 $display(assert);
        #2 func1 <= {I, O, I, O}; func2 <= {O, I, I, I}; wiring <= {a, I, b, I, b, O}; #4 $display(assert);
        #2 func1 <= {I, O, I, O}; func2 <= {I, O, O, O}; wiring <= {O, a, I, O, b, O}; #4 $display(assert);
        #2 func1 <= {I, O, I, O}; func2 <= {I, O, O, I}; wiring <= {a, I, O, b, O, O}; #4 $display(assert);
        #2 func1 <= {I, O, I, O}; func2 <= {I, O, I, O}; wiring <= {a, I, O, O, O, O}; #4 $display(assert);
        #2 func1 <= {I, O, I, O}; func2 <= {I, O, I, I}; wiring <= {I, b, I, a, a, O}; #4 $display(assert);
        #2 func1 <= {I, O, I, O}; func2 <= {I, I, O, O}; wiring <= {a, I, O, b, a, O}; #4 $display(assert);
        #2 func1 <= {I, O, I, O}; func2 <= {I, I, O, I}; wiring <= {I, b, a, O, O, I}; #4 $display(assert);
        #2 func1 <= {I, O, I, O}; func2 <= {I, I, I, O}; wiring <= {b, O, I, a, a, O}; #4 $display(assert);
        #2 func1 <= {I, O, I, O}; func2 <= {I, I, I, I}; wiring <= {I, a, O, I, O, O}; #4 $display(assert);
        #2 func1 <= {I, O, I, I}; func2 <= {O, O, O, O}; wiring <= {b, O, b, I, a, I}; #4 $display(assert);
        #2 func1 <= {I, O, I, I}; func2 <= {O, O, O, I}; wiring <= {O, b, a, I, O, O}; #4 $display(assert);
        #2 func1 <= {I, O, I, I}; func2 <= {O, O, I, O}; wiring <= {b, a, I, O, I, O}; #4 $display(assert);
        #2 func1 <= {I, O, I, I}; func2 <= {O, O, I, I}; wiring <= {b, O, O, I, a, O}; #4 $display(assert);
        #2 func1 <= {I, O, I, I}; func2 <= {O, I, O, O}; wiring <= {b, a, I, I, O, I}; #4 $display(assert);
        #2 func1 <= {I, O, I, I}; func2 <= {O, I, O, I}; wiring <= {O, b, a, I, a, O}; #4 $display(assert);
        #2 func1 <= {I, O, I, I}; func2 <= {O, I, I, O}; wiring <= {b, a, O, O, O, I}; #4 $display(assert);
        #2 func1 <= {I, O, I, I}; func2 <= {O, I, I, I}; wiring <= {b, a, O, O, a, I}; #4 $display(assert);
        #2 func1 <= {I, O, I, I}; func2 <= {I, O, O, O}; wiring <= {a, b, I, a, O, b}; #4 $display(assert);
        #2 func1 <= {I, O, I, I}; func2 <= {I, O, O, I}; wiring <= {O, I, a, b, O, O}; #4 $display(assert);
        #2 func1 <= {I, O, I, I}; func2 <= {I, O, I, O}; wiring <= {b, a, I, O, a, O}; #4 $display(assert);
        #2 func1 <= {I, O, I, I}; func2 <= {I, O, I, I}; wiring <= {b, a, I, O, O, O}; #4 $display(assert);
        #2 func1 <= {I, O, I, I}; func2 <= {I, I, O, O}; wiring <= {I, a, b, I, O, I}; #4 $display(assert);
        #2 func1 <= {I, O, I, I}; func2 <= {I, I, O, I}; wiring <= {b, a, O, O, I, I}; #4 $display(assert);
        #2 func1 <= {I, O, I, I}; func2 <= {I, I, I, O}; wiring <= {I, O, a, b, O, I}; #4 $display(assert);
        #2 func1 <= {I, O, I, I}; func2 <= {I, I, I, I}; wiring <= {I, a, a, b, b, I}; #4 $display(assert);
        #2 func1 <= {I, I, O, O}; func2 <= {O, O, O, O}; wiring <= {O, O, b, I, O, O}; #4 $display(assert);
        #2 func1 <= {I, I, O, O}; func2 <= {O, O, O, I}; wiring <= {b, a, b, I, b, O}; #4 $display(assert);
        #2 func1 <= {I, I, O, O}; func2 <= {O, O, I, O}; wiring <= {b, I, I, O, a, I}; #4 $display(assert);
        #2 func1 <= {I, I, O, O}; func2 <= {O, O, I, I}; wiring <= {b, I, O, I, O, O}; #4 $display(assert);
        #2 func1 <= {I, I, O, O}; func2 <= {O, I, O, O}; wiring <= {a, O, b, I, O, O}; #4 $display(assert);
        #2 func1 <= {I, I, O, O}; func2 <= {O, I, O, I}; wiring <= {b, I, a, I, b, O}; #4 $display(assert);
        #2 func1 <= {I, I, O, O}; func2 <= {O, I, I, O}; wiring <= {b, I, a, I, O, O}; #4 $display(assert);
        #2 func1 <= {I, I, O, O}; func2 <= {O, I, I, I}; wiring <= {b, I, a, I, a, O}; #4 $display(assert);
        #2 func1 <= {I, I, O, O}; func2 <= {I, O, O, O}; wiring <= {O, b, I, O, a, O}; #4 $display(assert);
        #2 func1 <= {I, I, O, O}; func2 <= {I, O, O, I}; wiring <= {b, I, O, a, O, O}; #4 $display(assert);
        #2 func1 <= {I, I, O, O}; func2 <= {I, O, I, O}; wiring <= {b, I, O, a, b, O}; #4 $display(assert);
        #2 func1 <= {I, I, O, O}; func2 <= {I, O, I, I}; wiring <= {I, a, b, O, O, I}; #4 $display(assert);
        #2 func1 <= {I, I, O, O}; func2 <= {I, I, O, O}; wiring <= {b, I, O, O, O, O}; #4 $display(assert);
        #2 func1 <= {I, I, O, O}; func2 <= {I, I, O, I}; wiring <= {b, I, O, O, a, O}; #4 $display(assert);
        #2 func1 <= {I, I, O, O}; func2 <= {I, I, I, O}; wiring <= {I, b, O, I, a, O}; #4 $display(assert);
        #2 func1 <= {I, I, O, O}; func2 <= {I, I, I, I}; wiring <= {I, b, O, I, O, O}; #4 $display(assert);
        #2 func1 <= {I, I, O, I}; func2 <= {O, O, O, O}; wiring <= {a, O, a, I, b, I}; #4 $display(assert);
        #2 func1 <= {I, I, O, I}; func2 <= {O, O, O, I}; wiring <= {O, a, b, I, O, O}; #4 $display(assert);
        #2 func1 <= {I, I, O, I}; func2 <= {O, O, I, O}; wiring <= {a, b, I, I, O, I}; #4 $display(assert);
        #2 func1 <= {I, I, O, I}; func2 <= {O, O, I, I}; wiring <= {O, a, b, I, b, O}; #4 $display(assert);
        #2 func1 <= {I, I, O, I}; func2 <= {O, I, O, O}; wiring <= {a, b, I, O, I, O}; #4 $display(assert);
        #2 func1 <= {I, I, O, I}; func2 <= {O, I, O, I}; wiring <= {a, O, O, I, b, O}; #4 $display(assert);
        #2 func1 <= {I, I, O, I}; func2 <= {O, I, I, O}; wiring <= {a, b, O, O, O, I}; #4 $display(assert);
        #2 func1 <= {I, I, O, I}; func2 <= {O, I, I, I}; wiring <= {b, b, a, I, a, I}; #4 $display(assert);
        #2 func1 <= {I, I, O, I}; func2 <= {I, O, O, O}; wiring <= {a, b, I, a, O, a}; #4 $display(assert);
        #2 func1 <= {I, I, O, I}; func2 <= {I, O, O, I}; wiring <= {O, I, b, a, O, O}; #4 $display(assert);
        #2 func1 <= {I, I, O, I}; func2 <= {I, O, I, O}; wiring <= {I, b, a, I, O, I}; #4 $display(assert);
        #2 func1 <= {I, I, O, I}; func2 <= {I, O, I, I}; wiring <= {a, b, O, O, I, I}; #4 $display(assert);
        #2 func1 <= {I, I, O, I}; func2 <= {I, I, O, O}; wiring <= {a, b, I, O, a, O}; #4 $display(assert);
        #2 func1 <= {I, I, O, I}; func2 <= {I, I, O, I}; wiring <= {a, b, I, O, O, O}; #4 $display(assert);
        #2 func1 <= {I, I, O, I}; func2 <= {I, I, I, O}; wiring <= {I, O, b, a, O, I}; #4 $display(assert);
        #2 func1 <= {I, I, O, I}; func2 <= {I, I, I, I}; wiring <= {I, b, b, a, a, I}; #4 $display(assert);
        #2 func1 <= {I, I, I, O}; func2 <= {O, O, O, O}; wiring <= {a, b, b, O, a, I}; #4 $display(assert);
        #2 func1 <= {I, I, I, O}; func2 <= {O, O, O, I}; wiring <= {O, b, a, I, O, I}; #4 $display(assert);
        #2 func1 <= {I, I, I, O}; func2 <= {O, O, I, O}; wiring <= {b, a, O, I, b, O}; #4 $display(assert);
        #2 func1 <= {I, I, I, O}; func2 <= {O, O, I, I}; wiring <= {b, a, O, I, O, O}; #4 $display(assert);
        #2 func1 <= {I, I, I, O}; func2 <= {O, I, O, O}; wiring <= {a, b, O, I, a, O}; #4 $display(assert);
        #2 func1 <= {I, I, I, O}; func2 <= {O, I, O, I}; wiring <= {a, b, O, I, O, O}; #4 $display(assert);
        #2 func1 <= {I, I, I, O}; func2 <= {O, I, I, O}; wiring <= {b, a, a, I, O, O}; #4 $display(assert);
        #2 func1 <= {I, I, I, O}; func2 <= {O, I, I, I}; wiring <= {b, a, I, a, I, O}; #4 $display(assert);
        #2 func1 <= {I, I, I, O}; func2 <= {I, O, O, O}; wiring <= {b, a, a, O, I, I}; #4 $display(assert);
        #2 func1 <= {I, I, I, O}; func2 <= {I, O, O, I}; wiring <= {a, I, a, b, a, O}; #4 $display(assert);
        #2 func1 <= {I, I, I, O}; func2 <= {I, O, I, O}; wiring <= {b, I, b, a, O, O}; #4 $display(assert);
        #2 func1 <= {I, I, I, O}; func2 <= {I, O, I, I}; wiring <= {I, a, O, b, O, I}; #4 $display(assert);
        #2 func1 <= {I, I, I, O}; func2 <= {I, I, O, O}; wiring <= {a, I, a, b, O, O}; #4 $display(assert);
        #2 func1 <= {I, I, I, O}; func2 <= {I, I, O, I}; wiring <= {I, b, O, a, O, I}; #4 $display(assert);
        #2 func1 <= {I, I, I, O}; func2 <= {I, I, I, O}; wiring <= {b, a, I, a, O, O}; #4 $display(assert);
        #2 func1 <= {I, I, I, O}; func2 <= {I, I, I, I}; wiring <= {b, a, I, a, a, O}; #4 $display(assert);
        #2 func1 <= {I, I, I, I}; func2 <= {O, O, O, O}; wiring <= {O, O, O, I, O, O}; #4 $display(assert);
        #2 func1 <= {I, I, I, I}; func2 <= {O, O, O, I}; wiring <= {I, b, I, I, a, I}; #4 $display(assert);
        #2 func1 <= {I, I, I, I}; func2 <= {O, O, I, O}; wiring <= {b, O, a, I, O, I}; #4 $display(assert);
        #2 func1 <= {I, I, I, I}; func2 <= {O, O, I, I}; wiring <= {b, O, O, I, O, O}; #4 $display(assert);
        #2 func1 <= {I, I, I, I}; func2 <= {O, I, O, O}; wiring <= {a, O, b, I, O, I}; #4 $display(assert);
        #2 func1 <= {I, I, I, I}; func2 <= {O, I, O, I}; wiring <= {a, O, O, I, O, O}; #4 $display(assert);
        #2 func1 <= {I, I, I, I}; func2 <= {O, I, I, O}; wiring <= {b, O, O, O, a, I}; #4 $display(assert);
        #2 func1 <= {I, I, I, I}; func2 <= {O, I, I, I}; wiring <= {b, O, O, b, a, I}; #4 $display(assert);
        #2 func1 <= {I, I, I, I}; func2 <= {I, O, O, O}; wiring <= {I, b, a, a, O, I}; #4 $display(assert);
        #2 func1 <= {I, I, I, I}; func2 <= {I, O, O, I}; wiring <= {I, b, O, O, a, I}; #4 $display(assert);
        #2 func1 <= {I, I, I, I}; func2 <= {I, O, I, O}; wiring <= {O, I, O, a, O, O}; #4 $display(assert);
        #2 func1 <= {I, I, I, I}; func2 <= {I, O, I, I}; wiring <= {b, O, I, O, a, O}; #4 $display(assert);
        #2 func1 <= {I, I, I, I}; func2 <= {I, I, O, O}; wiring <= {O, I, O, b, O, O}; #4 $display(assert);
        #2 func1 <= {I, I, I, I}; func2 <= {I, I, O, I}; wiring <= {a, O, I, O, b, O}; #4 $display(assert);
        #2 func1 <= {I, I, I, I}; func2 <= {I, I, I, O}; wiring <= {I, b, I, O, a, O}; #4 $display(assert);
        #2 func1 <= {I, I, I, I}; func2 <= {I, I, I, I}; wiring <= {O, I, O, O, O, O}; #4 $display(assert);
    end
    $finish;
end

endmodule
