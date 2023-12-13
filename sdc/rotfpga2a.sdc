###############################################################################
# Created by write_sdc
# Wed Dec 13 04:41:27 2023
###############################################################################
current_design rotfpga2a
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
set_false_path -setup\
    -through [list [get_nets {g.g_y[0].g_x[0].t.in_lb}]\
           [get_nets {g.g_y[0].g_x[0].t.out_sc}]\
           [get_nets {g.g_y[0].g_x[0].t.r_d}]\
           [get_nets {g.g_y[0].g_x[0].t.r_h}]\
           [get_nets {g.g_y[0].g_x[0].t.r_v}]\
           [get_nets {g.g_y[0].g_x[0].t.w_dh}]\
           [get_nets {g.g_y[0].g_x[0].t.w_na}]\
           [get_nets {g.g_y[0].g_x[0].t.w_si}]\
           [get_nets {g.g_y[0].g_x[1].t.out_sc}]\
           [get_nets {g.g_y[0].g_x[1].t.r_d}]\
           [get_nets {g.g_y[0].g_x[1].t.r_h}]\
           [get_nets {g.g_y[0].g_x[1].t.r_v}]\
           [get_nets {g.g_y[0].g_x[1].t.w_si}]\
           [get_nets {g.g_y[0].g_x[2].t.in_lb}]\
           [get_nets {g.g_y[0].g_x[2].t.out_sc}]\
           [get_nets {g.g_y[0].g_x[2].t.r_d}]\
           [get_nets {g.g_y[0].g_x[2].t.r_h}]\
           [get_nets {g.g_y[0].g_x[2].t.r_v}]\
           [get_nets {g.g_y[0].g_x[2].t.w_dh}]\
           [get_nets {g.g_y[0].g_x[2].t.w_na}]\
           [get_nets {g.g_y[0].g_x[2].t.w_si}]\
           [get_nets {g.g_y[0].g_x[3].t.out_sc}]\
           [get_nets {g.g_y[0].g_x[3].t.r_d}]\
           [get_nets {g.g_y[0].g_x[3].t.r_h}]\
           [get_nets {g.g_y[0].g_x[3].t.r_v}]\
           [get_nets {g.g_y[0].g_x[3].t.w_si}]\
           [get_nets {g.g_y[0].g_x[4].t.out_sc}]\
           [get_nets {g.g_y[0].g_x[4].t.r_d}]\
           [get_nets {g.g_y[0].g_x[4].t.r_h}]\
           [get_nets {g.g_y[0].g_x[4].t.r_v}]\
           [get_nets {g.g_y[0].g_x[4].t.w_dh}]\
           [get_nets {g.g_y[0].g_x[4].t.w_na}]\
           [get_nets {g.g_y[0].g_x[4].t.w_si}]\
           [get_nets {g.g_y[0].g_x[5].t.out_sc}]\
           [get_nets {g.g_y[0].g_x[5].t.r_d}]\
           [get_nets {g.g_y[0].g_x[5].t.r_h}]\
           [get_nets {g.g_y[0].g_x[5].t.r_v}]\
           [get_nets {g.g_y[0].g_x[5].t.w_si}]\
           [get_nets {g.g_y[0].g_x[6].t.out_sc}]\
           [get_nets {g.g_y[0].g_x[6].t.r_d}]\
           [get_nets {g.g_y[0].g_x[6].t.r_h}]\
           [get_nets {g.g_y[0].g_x[6].t.r_v}]\
           [get_nets {g.g_y[0].g_x[6].t.w_dh}]\
           [get_nets {g.g_y[0].g_x[6].t.w_na}]\
           [get_nets {g.g_y[0].g_x[6].t.w_si}]\
           [get_nets {g.g_y[0].g_x[7].t.out_sc}]\
           [get_nets {g.g_y[0].g_x[7].t.r_d}]\
           [get_nets {g.g_y[0].g_x[7].t.r_h}]\
           [get_nets {g.g_y[0].g_x[7].t.r_v}]\
           [get_nets {g.g_y[0].g_x[7].t.w_si}]\
           [get_nets {g.g_y[1].g_x[0].t.out_sc}]\
           [get_nets {g.g_y[1].g_x[0].t.r_d}]\
           [get_nets {g.g_y[1].g_x[0].t.r_h}]\
           [get_nets {g.g_y[1].g_x[0].t.r_v}]\
           [get_nets {g.g_y[1].g_x[0].t.w_si}]\
           [get_nets {g.g_y[1].g_x[1].t.in_lb}]\
           [get_nets {g.g_y[1].g_x[1].t.out_sc}]\
           [get_nets {g.g_y[1].g_x[1].t.r_d}]\
           [get_nets {g.g_y[1].g_x[1].t.r_h}]\
           [get_nets {g.g_y[1].g_x[1].t.r_v}]\
           [get_nets {g.g_y[1].g_x[1].t.w_dh}]\
           [get_nets {g.g_y[1].g_x[1].t.w_na}]\
           [get_nets {g.g_y[1].g_x[1].t.w_si}]\
           [get_nets {g.g_y[1].g_x[2].t.out_sc}]\
           [get_nets {g.g_y[1].g_x[2].t.r_d}]\
           [get_nets {g.g_y[1].g_x[2].t.r_h}]\
           [get_nets {g.g_y[1].g_x[2].t.r_v}]\
           [get_nets {g.g_y[1].g_x[2].t.w_si}]\
           [get_nets {g.g_y[1].g_x[3].t.in_lb}]\
           [get_nets {g.g_y[1].g_x[3].t.out_sc}]\
           [get_nets {g.g_y[1].g_x[3].t.r_d}]\
           [get_nets {g.g_y[1].g_x[3].t.r_h}]\
           [get_nets {g.g_y[1].g_x[3].t.r_v}]\
           [get_nets {g.g_y[1].g_x[3].t.w_dh}]\
           [get_nets {g.g_y[1].g_x[3].t.w_na}]\
           [get_nets {g.g_y[1].g_x[3].t.w_si}]\
           [get_nets {g.g_y[1].g_x[4].t.out_sc}]\
           [get_nets {g.g_y[1].g_x[4].t.r_d}]\
           [get_nets {g.g_y[1].g_x[4].t.r_h}]\
           [get_nets {g.g_y[1].g_x[4].t.r_v}]\
           [get_nets {g.g_y[1].g_x[4].t.w_si}]\
           [get_nets {g.g_y[1].g_x[5].t.out_sc}]\
           [get_nets {g.g_y[1].g_x[5].t.r_d}]\
           [get_nets {g.g_y[1].g_x[5].t.r_h}]\
           [get_nets {g.g_y[1].g_x[5].t.r_v}]\
           [get_nets {g.g_y[1].g_x[5].t.w_dh}]\
           [get_nets {g.g_y[1].g_x[5].t.w_na}]\
           [get_nets {g.g_y[1].g_x[5].t.w_si}]\
           [get_nets {g.g_y[1].g_x[6].t.out_sc}]\
           [get_nets {g.g_y[1].g_x[6].t.r_d}]\
           [get_nets {g.g_y[1].g_x[6].t.r_h}]\
           [get_nets {g.g_y[1].g_x[6].t.r_v}]\
           [get_nets {g.g_y[1].g_x[6].t.w_si}]\
           [get_nets {g.g_y[1].g_x[7].t.out_sc}]\
           [get_nets {g.g_y[1].g_x[7].t.r_d}]\
           [get_nets {g.g_y[1].g_x[7].t.r_h}]\
           [get_nets {g.g_y[1].g_x[7].t.r_v}]\
           [get_nets {g.g_y[1].g_x[7].t.w_dh}]\
           [get_nets {g.g_y[1].g_x[7].t.w_na}]\
           [get_nets {g.g_y[1].g_x[7].t.w_si}]\
           [get_nets {g.g_y[2].g_x[0].t.out_sc}]\
           [get_nets {g.g_y[2].g_x[0].t.r_d}]\
           [get_nets {g.g_y[2].g_x[0].t.r_h}]\
           [get_nets {g.g_y[2].g_x[0].t.r_v}]\
           [get_nets {g.g_y[2].g_x[0].t.w_dh}]\
           [get_nets {g.g_y[2].g_x[0].t.w_na}]\
           [get_nets {g.g_y[2].g_x[0].t.w_si}]\
           [get_nets {g.g_y[2].g_x[1].t.out_sc}]\
           [get_nets {g.g_y[2].g_x[1].t.r_d}]\
           [get_nets {g.g_y[2].g_x[1].t.r_h}]\
           [get_nets {g.g_y[2].g_x[1].t.r_v}]\
           [get_nets {g.g_y[2].g_x[1].t.w_si}]\
           [get_nets {g.g_y[2].g_x[2].t.out_sc}]\
           [get_nets {g.g_y[2].g_x[2].t.r_d}]\
           [get_nets {g.g_y[2].g_x[2].t.r_h}]\
           [get_nets {g.g_y[2].g_x[2].t.r_v}]\
           [get_nets {g.g_y[2].g_x[2].t.w_dh}]\
           [get_nets {g.g_y[2].g_x[2].t.w_na}]\
           [get_nets {g.g_y[2].g_x[2].t.w_si}]\
           [get_nets {g.g_y[2].g_x[3].t.out_sc}]\
           [get_nets {g.g_y[2].g_x[3].t.r_d}]\
           [get_nets {g.g_y[2].g_x[3].t.r_h}]\
           [get_nets {g.g_y[2].g_x[3].t.r_v}]\
           [get_nets {g.g_y[2].g_x[3].t.w_si}]\
           [get_nets {g.g_y[2].g_x[4].t.out_sc}]\
           [get_nets {g.g_y[2].g_x[4].t.r_d}]\
           [get_nets {g.g_y[2].g_x[4].t.r_h}]\
           [get_nets {g.g_y[2].g_x[4].t.r_v}]\
           [get_nets {g.g_y[2].g_x[4].t.w_dh}]\
           [get_nets {g.g_y[2].g_x[4].t.w_na}]\
           [get_nets {g.g_y[2].g_x[4].t.w_si}]\
           [get_nets {g.g_y[2].g_x[5].t.out_sc}]\
           [get_nets {g.g_y[2].g_x[5].t.r_d}]\
           [get_nets {g.g_y[2].g_x[5].t.r_h}]\
           [get_nets {g.g_y[2].g_x[5].t.r_v}]\
           [get_nets {g.g_y[2].g_x[5].t.w_si}]\
           [get_nets {g.g_y[2].g_x[6].t.out_sc}]\
           [get_nets {g.g_y[2].g_x[6].t.r_d}]\
           [get_nets {g.g_y[2].g_x[6].t.r_h}]\
           [get_nets {g.g_y[2].g_x[6].t.r_v}]\
           [get_nets {g.g_y[2].g_x[6].t.w_dh}]\
           [get_nets {g.g_y[2].g_x[6].t.w_na}]\
           [get_nets {g.g_y[2].g_x[6].t.w_si}]\
           [get_nets {g.g_y[2].g_x[7].t.out_sc}]\
           [get_nets {g.g_y[2].g_x[7].t.r_d}]\
           [get_nets {g.g_y[2].g_x[7].t.r_h}]\
           [get_nets {g.g_y[2].g_x[7].t.r_v}]\
           [get_nets {g.g_y[2].g_x[7].t.w_si}]\
           [get_nets {g.g_y[3].g_x[0].t.out_sc}]\
           [get_nets {g.g_y[3].g_x[0].t.r_d}]\
           [get_nets {g.g_y[3].g_x[0].t.r_h}]\
           [get_nets {g.g_y[3].g_x[0].t.r_v}]\
           [get_nets {g.g_y[3].g_x[0].t.w_si}]\
           [get_nets {g.g_y[3].g_x[1].t.out_sc}]\
           [get_nets {g.g_y[3].g_x[1].t.r_d}]\
           [get_nets {g.g_y[3].g_x[1].t.r_h}]\
           [get_nets {g.g_y[3].g_x[1].t.r_v}]\
           [get_nets {g.g_y[3].g_x[1].t.w_dh}]\
           [get_nets {g.g_y[3].g_x[1].t.w_na}]\
           [get_nets {g.g_y[3].g_x[1].t.w_si}]\
           [get_nets {g.g_y[3].g_x[2].t.out_sc}]\
           [get_nets {g.g_y[3].g_x[2].t.r_d}]\
           [get_nets {g.g_y[3].g_x[2].t.r_h}]\
           [get_nets {g.g_y[3].g_x[2].t.r_v}]\
           [get_nets {g.g_y[3].g_x[2].t.w_si}]\
           [get_nets {g.g_y[3].g_x[3].t.out_sc}]\
           [get_nets {g.g_y[3].g_x[3].t.r_d}]\
           [get_nets {g.g_y[3].g_x[3].t.r_h}]\
           [get_nets {g.g_y[3].g_x[3].t.r_v}]\
           [get_nets {g.g_y[3].g_x[3].t.w_dh}]\
           [get_nets {g.g_y[3].g_x[3].t.w_na}]\
           [get_nets {g.g_y[3].g_x[3].t.w_si}]\
           [get_nets {g.g_y[3].g_x[4].t.out_sc}]\
           [get_nets {g.g_y[3].g_x[4].t.r_d}]\
           [get_nets {g.g_y[3].g_x[4].t.r_h}]\
           [get_nets {g.g_y[3].g_x[4].t.r_v}]\
           [get_nets {g.g_y[3].g_x[4].t.w_si}]\
           [get_nets {g.g_y[3].g_x[5].t.out_sc}]\
           [get_nets {g.g_y[3].g_x[5].t.r_d}]\
           [get_nets {g.g_y[3].g_x[5].t.r_h}]\
           [get_nets {g.g_y[3].g_x[5].t.r_v}]\
           [get_nets {g.g_y[3].g_x[5].t.w_dh}]\
           [get_nets {g.g_y[3].g_x[5].t.w_na}]\
           [get_nets {g.g_y[3].g_x[5].t.w_si}]\
           [get_nets {g.g_y[3].g_x[6].t.out_sc}]\
           [get_nets {g.g_y[3].g_x[6].t.r_d}]\
           [get_nets {g.g_y[3].g_x[6].t.r_h}]\
           [get_nets {g.g_y[3].g_x[6].t.r_v}]\
           [get_nets {g.g_y[3].g_x[6].t.w_si}]\
           [get_nets {g.g_y[3].g_x[7].t.out_sc}]\
           [get_nets {g.g_y[3].g_x[7].t.r_d}]\
           [get_nets {g.g_y[3].g_x[7].t.r_h}]\
           [get_nets {g.g_y[3].g_x[7].t.r_v}]\
           [get_nets {g.g_y[3].g_x[7].t.w_dh}]\
           [get_nets {g.g_y[3].g_x[7].t.w_na}]\
           [get_nets {g.g_y[3].g_x[7].t.w_si}]\
           [get_nets {g.g_y[4].g_x[0].t.out_sc}]\
           [get_nets {g.g_y[4].g_x[0].t.r_d}]\
           [get_nets {g.g_y[4].g_x[0].t.r_h}]\
           [get_nets {g.g_y[4].g_x[0].t.r_v}]\
           [get_nets {g.g_y[4].g_x[0].t.w_dh}]\
           [get_nets {g.g_y[4].g_x[0].t.w_na}]\
           [get_nets {g.g_y[4].g_x[0].t.w_si}]\
           [get_nets {g.g_y[4].g_x[1].t.out_sc}]\
           [get_nets {g.g_y[4].g_x[1].t.r_d}]\
           [get_nets {g.g_y[4].g_x[1].t.r_h}]\
           [get_nets {g.g_y[4].g_x[1].t.r_v}]\
           [get_nets {g.g_y[4].g_x[1].t.w_si}]\
           [get_nets {g.g_y[4].g_x[2].t.out_sc}]\
           [get_nets {g.g_y[4].g_x[2].t.r_d}]\
           [get_nets {g.g_y[4].g_x[2].t.r_h}]\
           [get_nets {g.g_y[4].g_x[2].t.r_v}]\
           [get_nets {g.g_y[4].g_x[2].t.w_dh}]\
           [get_nets {g.g_y[4].g_x[2].t.w_na}]\
           [get_nets {g.g_y[4].g_x[2].t.w_si}]\
           [get_nets {g.g_y[4].g_x[3].t.out_sc}]\
           [get_nets {g.g_y[4].g_x[3].t.r_d}]\
           [get_nets {g.g_y[4].g_x[3].t.r_h}]\
           [get_nets {g.g_y[4].g_x[3].t.r_v}]\
           [get_nets {g.g_y[4].g_x[3].t.w_si}]\
           [get_nets {g.g_y[4].g_x[4].t.out_sc}]\
           [get_nets {g.g_y[4].g_x[4].t.r_d}]\
           [get_nets {g.g_y[4].g_x[4].t.r_h}]\
           [get_nets {g.g_y[4].g_x[4].t.r_v}]\
           [get_nets {g.g_y[4].g_x[4].t.w_dh}]\
           [get_nets {g.g_y[4].g_x[4].t.w_na}]\
           [get_nets {g.g_y[4].g_x[4].t.w_si}]\
           [get_nets {g.g_y[4].g_x[5].t.out_sc}]\
           [get_nets {g.g_y[4].g_x[5].t.r_d}]\
           [get_nets {g.g_y[4].g_x[5].t.r_h}]\
           [get_nets {g.g_y[4].g_x[5].t.r_v}]\
           [get_nets {g.g_y[4].g_x[5].t.w_si}]\
           [get_nets {g.g_y[4].g_x[6].t.out_sc}]\
           [get_nets {g.g_y[4].g_x[6].t.r_d}]\
           [get_nets {g.g_y[4].g_x[6].t.r_h}]\
           [get_nets {g.g_y[4].g_x[6].t.r_v}]\
           [get_nets {g.g_y[4].g_x[6].t.w_dh}]\
           [get_nets {g.g_y[4].g_x[6].t.w_na}]\
           [get_nets {g.g_y[4].g_x[6].t.w_si}]\
           [get_nets {g.g_y[4].g_x[7].t.out_sc}]\
           [get_nets {g.g_y[4].g_x[7].t.r_d}]\
           [get_nets {g.g_y[4].g_x[7].t.r_h}]\
           [get_nets {g.g_y[4].g_x[7].t.r_v}]\
           [get_nets {g.g_y[4].g_x[7].t.w_si}]\
           [get_nets {g.g_y[5].g_x[0].t.out_sc}]\
           [get_nets {g.g_y[5].g_x[0].t.r_d}]\
           [get_nets {g.g_y[5].g_x[0].t.r_h}]\
           [get_nets {g.g_y[5].g_x[0].t.r_v}]\
           [get_nets {g.g_y[5].g_x[0].t.w_si}]\
           [get_nets {g.g_y[5].g_x[1].t.out_sc}]\
           [get_nets {g.g_y[5].g_x[1].t.r_d}]\
           [get_nets {g.g_y[5].g_x[1].t.r_h}]\
           [get_nets {g.g_y[5].g_x[1].t.r_v}]\
           [get_nets {g.g_y[5].g_x[1].t.w_dh}]\
           [get_nets {g.g_y[5].g_x[1].t.w_na}]\
           [get_nets {g.g_y[5].g_x[1].t.w_si}]\
           [get_nets {g.g_y[5].g_x[2].t.out_sc}]\
           [get_nets {g.g_y[5].g_x[2].t.r_d}]\
           [get_nets {g.g_y[5].g_x[2].t.r_h}]\
           [get_nets {g.g_y[5].g_x[2].t.r_v}]\
           [get_nets {g.g_y[5].g_x[2].t.w_si}]\
           [get_nets {g.g_y[5].g_x[3].t.out_sc}]\
           [get_nets {g.g_y[5].g_x[3].t.r_d}]\
           [get_nets {g.g_y[5].g_x[3].t.r_h}]\
           [get_nets {g.g_y[5].g_x[3].t.r_v}]\
           [get_nets {g.g_y[5].g_x[3].t.w_dh}]\
           [get_nets {g.g_y[5].g_x[3].t.w_na}]\
           [get_nets {g.g_y[5].g_x[3].t.w_si}]\
           [get_nets {g.g_y[5].g_x[4].t.out_sc}]\
           [get_nets {g.g_y[5].g_x[4].t.r_d}]\
           [get_nets {g.g_y[5].g_x[4].t.r_h}]\
           [get_nets {g.g_y[5].g_x[4].t.r_v}]\
           [get_nets {g.g_y[5].g_x[4].t.w_si}]\
           [get_nets {g.g_y[5].g_x[5].t.out_sc}]\
           [get_nets {g.g_y[5].g_x[5].t.r_d}]\
           [get_nets {g.g_y[5].g_x[5].t.r_h}]\
           [get_nets {g.g_y[5].g_x[5].t.r_v}]\
           [get_nets {g.g_y[5].g_x[5].t.w_dh}]\
           [get_nets {g.g_y[5].g_x[5].t.w_na}]\
           [get_nets {g.g_y[5].g_x[5].t.w_si}]\
           [get_nets {g.g_y[5].g_x[6].t.out_sc}]\
           [get_nets {g.g_y[5].g_x[6].t.r_d}]\
           [get_nets {g.g_y[5].g_x[6].t.r_h}]\
           [get_nets {g.g_y[5].g_x[6].t.r_v}]\
           [get_nets {g.g_y[5].g_x[6].t.w_si}]\
           [get_nets {g.g_y[5].g_x[7].t.out_sc}]\
           [get_nets {g.g_y[5].g_x[7].t.r_d}]\
           [get_nets {g.g_y[5].g_x[7].t.r_h}]\
           [get_nets {g.g_y[5].g_x[7].t.r_v}]\
           [get_nets {g.g_y[5].g_x[7].t.w_dh}]\
           [get_nets {g.g_y[5].g_x[7].t.w_na}]\
           [get_nets {g.g_y[5].g_x[7].t.w_si}]\
           [get_nets {g.g_y[6].g_x[0].t.out_sc}]\
           [get_nets {g.g_y[6].g_x[0].t.r_d}]\
           [get_nets {g.g_y[6].g_x[0].t.r_h}]\
           [get_nets {g.g_y[6].g_x[0].t.r_v}]\
           [get_nets {g.g_y[6].g_x[0].t.w_dh}]\
           [get_nets {g.g_y[6].g_x[0].t.w_na}]\
           [get_nets {g.g_y[6].g_x[0].t.w_si}]\
           [get_nets {g.g_y[6].g_x[1].t.out_sc}]\
           [get_nets {g.g_y[6].g_x[1].t.r_d}]\
           [get_nets {g.g_y[6].g_x[1].t.r_h}]\
           [get_nets {g.g_y[6].g_x[1].t.r_v}]\
           [get_nets {g.g_y[6].g_x[1].t.w_si}]\
           [get_nets {g.g_y[6].g_x[2].t.out_sc}]\
           [get_nets {g.g_y[6].g_x[2].t.r_d}]\
           [get_nets {g.g_y[6].g_x[2].t.r_h}]\
           [get_nets {g.g_y[6].g_x[2].t.r_v}]\
           [get_nets {g.g_y[6].g_x[2].t.w_dh}]\
           [get_nets {g.g_y[6].g_x[2].t.w_na}]\
           [get_nets {g.g_y[6].g_x[2].t.w_si}]\
           [get_nets {g.g_y[6].g_x[3].t.out_sc}]\
           [get_nets {g.g_y[6].g_x[3].t.r_d}]\
           [get_nets {g.g_y[6].g_x[3].t.r_h}]\
           [get_nets {g.g_y[6].g_x[3].t.r_v}]\
           [get_nets {g.g_y[6].g_x[3].t.w_si}]\
           [get_nets {g.g_y[6].g_x[4].t.out_sc}]\
           [get_nets {g.g_y[6].g_x[4].t.r_d}]\
           [get_nets {g.g_y[6].g_x[4].t.r_h}]\
           [get_nets {g.g_y[6].g_x[4].t.r_v}]\
           [get_nets {g.g_y[6].g_x[4].t.w_dh}]\
           [get_nets {g.g_y[6].g_x[4].t.w_na}]\
           [get_nets {g.g_y[6].g_x[4].t.w_si}]\
           [get_nets {g.g_y[6].g_x[5].t.out_sc}]\
           [get_nets {g.g_y[6].g_x[5].t.r_d}]\
           [get_nets {g.g_y[6].g_x[5].t.r_h}]\
           [get_nets {g.g_y[6].g_x[5].t.r_v}]\
           [get_nets {g.g_y[6].g_x[5].t.w_si}]\
           [get_nets {g.g_y[6].g_x[6].t.out_sc}]\
           [get_nets {g.g_y[6].g_x[6].t.r_d}]\
           [get_nets {g.g_y[6].g_x[6].t.r_h}]\
           [get_nets {g.g_y[6].g_x[6].t.r_v}]\
           [get_nets {g.g_y[6].g_x[6].t.w_dh}]\
           [get_nets {g.g_y[6].g_x[6].t.w_na}]\
           [get_nets {g.g_y[6].g_x[6].t.w_si}]\
           [get_nets {g.g_y[6].g_x[7].t.out_sc}]\
           [get_nets {g.g_y[6].g_x[7].t.r_d}]\
           [get_nets {g.g_y[6].g_x[7].t.r_h}]\
           [get_nets {g.g_y[6].g_x[7].t.r_v}]\
           [get_nets {g.g_y[6].g_x[7].t.w_si}]\
           [get_nets {g.g_y[7].g_x[0].t.out_sc}]\
           [get_nets {g.g_y[7].g_x[0].t.r_d}]\
           [get_nets {g.g_y[7].g_x[0].t.r_h}]\
           [get_nets {g.g_y[7].g_x[0].t.r_v}]\
           [get_nets {g.g_y[7].g_x[0].t.w_si}]\
           [get_nets {g.g_y[7].g_x[1].t.out_sc}]\
           [get_nets {g.g_y[7].g_x[1].t.r_d}]\
           [get_nets {g.g_y[7].g_x[1].t.r_h}]\
           [get_nets {g.g_y[7].g_x[1].t.r_v}]\
           [get_nets {g.g_y[7].g_x[1].t.w_dh}]\
           [get_nets {g.g_y[7].g_x[1].t.w_na}]\
           [get_nets {g.g_y[7].g_x[1].t.w_si}]\
           [get_nets {g.g_y[7].g_x[2].t.out_sc}]\
           [get_nets {g.g_y[7].g_x[2].t.r_d}]\
           [get_nets {g.g_y[7].g_x[2].t.r_h}]\
           [get_nets {g.g_y[7].g_x[2].t.r_v}]\
           [get_nets {g.g_y[7].g_x[2].t.w_si}]\
           [get_nets {g.g_y[7].g_x[3].t.out_sc}]\
           [get_nets {g.g_y[7].g_x[3].t.r_d}]\
           [get_nets {g.g_y[7].g_x[3].t.r_h}]\
           [get_nets {g.g_y[7].g_x[3].t.r_v}]\
           [get_nets {g.g_y[7].g_x[3].t.w_dh}]\
           [get_nets {g.g_y[7].g_x[3].t.w_na}]\
           [get_nets {g.g_y[7].g_x[3].t.w_si}]\
           [get_nets {g.g_y[7].g_x[4].t.out_sc}]\
           [get_nets {g.g_y[7].g_x[4].t.r_d}]\
           [get_nets {g.g_y[7].g_x[4].t.r_h}]\
           [get_nets {g.g_y[7].g_x[4].t.r_v}]\
           [get_nets {g.g_y[7].g_x[4].t.w_si}]\
           [get_nets {g.g_y[7].g_x[5].t.out_sc}]\
           [get_nets {g.g_y[7].g_x[5].t.r_d}]\
           [get_nets {g.g_y[7].g_x[5].t.r_h}]\
           [get_nets {g.g_y[7].g_x[5].t.r_v}]\
           [get_nets {g.g_y[7].g_x[5].t.w_dh}]\
           [get_nets {g.g_y[7].g_x[5].t.w_na}]\
           [get_nets {g.g_y[7].g_x[5].t.w_si}]\
           [get_nets {g.g_y[7].g_x[6].t.out_sc}]\
           [get_nets {g.g_y[7].g_x[6].t.r_d}]\
           [get_nets {g.g_y[7].g_x[6].t.r_h}]\
           [get_nets {g.g_y[7].g_x[6].t.r_v}]\
           [get_nets {g.g_y[7].g_x[6].t.w_si}]\
           [get_nets {g.g_y[7].g_x[7].t.r_d}]\
           [get_nets {g.g_y[7].g_x[7].t.r_h}]\
           [get_nets {g.g_y[7].g_x[7].t.r_v}]\
           [get_nets {g.g_y[7].g_x[7].t.w_dh}]\
           [get_nets {g.g_y[7].g_x[7].t.w_na}]\
           [get_nets {g.g_y[7].g_x[7].t.w_si}]]
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
