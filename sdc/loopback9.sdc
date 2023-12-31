###############################################################################
# Created by write_sdc
# Wed Dec 13 03:50:09 2023
###############################################################################
current_design loopback9
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clk -period 24.0000 [get_ports {clk}]
set_clock_transition 0.1500 [get_clocks {clk}]
set_clock_uncertainty 0.2500 clk
set_propagated_clock [get_clocks {clk}]
set_clock_latency -source -min 4.6500 [get_clocks {clk}]
set_clock_latency -source -max 5.5700 [get_clocks {clk}]
set_input_delay 14.0000 -clock [get_clocks {clk}] -add_delay [get_ports {rst_n}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.1900 [get_ports {out[11]}]
set_load -pin_load 0.1900 [get_ports {out[10]}]
set_load -pin_load 0.1900 [get_ports {out[9]}]
set_load -pin_load 0.1900 [get_ports {out[8]}]
set_load -pin_load 0.1900 [get_ports {out[7]}]
set_load -pin_load 0.1900 [get_ports {out[6]}]
set_load -pin_load 0.1900 [get_ports {out[5]}]
set_load -pin_load 0.1900 [get_ports {out[4]}]
set_load -pin_load 0.1900 [get_ports {out[3]}]
set_load -pin_load 0.1900 [get_ports {out[2]}]
set_load -pin_load 0.1900 [get_ports {out[1]}]
set_load -pin_load 0.1900 [get_ports {out[0]}]
set_input_transition 0.6100 [get_ports {clk}]
set_input_transition -min 0.0500 [get_ports {in[17]}]
set_input_transition -max 0.3800 [get_ports {in[17]}]
set_input_transition -min 0.0500 [get_ports {in[16]}]
set_input_transition -max 0.3800 [get_ports {in[16]}]
set_input_transition -min 0.0500 [get_ports {in[15]}]
set_input_transition -max 0.3800 [get_ports {in[15]}]
set_input_transition -min 0.0500 [get_ports {in[14]}]
set_input_transition -max 0.3800 [get_ports {in[14]}]
set_input_transition -min 0.0500 [get_ports {in[13]}]
set_input_transition -max 0.3800 [get_ports {in[13]}]
set_input_transition -min 0.0500 [get_ports {in[12]}]
set_input_transition -max 0.3800 [get_ports {in[12]}]
set_input_transition -min 0.0500 [get_ports {in[11]}]
set_input_transition -max 0.3800 [get_ports {in[11]}]
set_input_transition -min 0.0500 [get_ports {in[10]}]
set_input_transition -max 0.3800 [get_ports {in[10]}]
set_input_transition -min 0.0500 [get_ports {in[9]}]
set_input_transition -max 0.3800 [get_ports {in[9]}]
set_input_transition -min 0.0500 [get_ports {in[8]}]
set_input_transition -max 0.3800 [get_ports {in[8]}]
set_input_transition -min 0.0500 [get_ports {in[7]}]
set_input_transition -max 0.3800 [get_ports {in[7]}]
set_input_transition -min 0.0500 [get_ports {in[6]}]
set_input_transition -max 0.3800 [get_ports {in[6]}]
set_input_transition -min 0.0500 [get_ports {in[5]}]
set_input_transition -max 0.3800 [get_ports {in[5]}]
set_input_transition -min 0.0500 [get_ports {in[4]}]
set_input_transition -max 0.3800 [get_ports {in[4]}]
set_input_transition -min 0.0500 [get_ports {in[3]}]
set_input_transition -max 0.3800 [get_ports {in[3]}]
set_input_transition -min 0.0500 [get_ports {in[2]}]
set_input_transition -max 0.3800 [get_ports {in[2]}]
set_input_transition -min 0.0500 [get_ports {in[1]}]
set_input_transition -max 0.3800 [get_ports {in[1]}]
set_input_transition -min 0.0500 [get_ports {in[0]}]
set_input_transition -max 0.3800 [get_ports {in[0]}]
set_timing_derate -early 0.9500
set_timing_derate -late 1.0500
###############################################################################
# Design Rules
###############################################################################
set_max_transition 3.0000 [current_design]
set_max_fanout 4.0000 [current_design]
