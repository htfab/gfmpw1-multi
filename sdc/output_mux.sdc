###############################################################################
# Created by write_sdc
# Tue Dec 12 03:50:52 2023
###############################################################################
current_design output_mux
###############################################################################
# Timing Constraints
###############################################################################
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
set_timing_derate -early 0.9500
set_timing_derate -late 1.0500
###############################################################################
# Design Rules
###############################################################################
set_max_transition 3.0000 [current_design]
set_max_fanout 4.0000 [current_design]
