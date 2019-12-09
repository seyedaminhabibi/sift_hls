# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 12 \
    name line_buffer_delays_buffer_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename line_buffer_delays_buffer_V \
    op interface \
    ports { line_buffer_delays_buffer_V_address0 { O 12 vector } line_buffer_delays_buffer_V_ce0 { O 1 bit } line_buffer_delays_buffer_V_q0 { I 8 vector } line_buffer_delays_buffer_V_address1 { O 12 vector } line_buffer_delays_buffer_V_ce1 { O 1 bit } line_buffer_delays_buffer_V_we1 { O 1 bit } line_buffer_delays_buffer_V_d1 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'line_buffer_delays_buffer_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 13 \
    name line_buffer_delay_outs_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename line_buffer_delay_outs_V \
    op interface \
    ports { line_buffer_delay_outs_V_address0 { O 2 vector } line_buffer_delay_outs_V_ce0 { O 1 bit } line_buffer_delay_outs_V_we0 { O 1 bit } line_buffer_delay_outs_V_d0 { O 8 vector } line_buffer_delay_outs_V_q0 { I 8 vector } line_buffer_delay_outs_V_address1 { O 2 vector } line_buffer_delay_outs_V_ce1 { O 1 bit } line_buffer_delay_outs_V_we1 { O 1 bit } line_buffer_delay_outs_V_d1 { O 8 vector } line_buffer_delay_outs_V_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'line_buffer_delay_outs_V'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name line_buffer_delays_0_wp_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_line_buffer_delays_0_wp_V_read \
    op interface \
    ports { line_buffer_delays_0_wp_V_read { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name line_buffer_delays_1_wp_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_line_buffer_delays_1_wp_V_read \
    op interface \
    ports { line_buffer_delays_1_wp_V_read { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name line_buffer_delays_2_wp_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_line_buffer_delays_2_wp_V_read \
    op interface \
    ports { line_buffer_delays_2_wp_V_read { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name line_buffer_delays_0_rp_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_line_buffer_delays_0_rp_V_read \
    op interface \
    ports { line_buffer_delays_0_rp_V_read { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name line_buffer_delays_1_rp_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_line_buffer_delays_1_rp_V_read \
    op interface \
    ports { line_buffer_delays_1_rp_V_read { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name line_buffer_delays_2_rp_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_line_buffer_delays_2_rp_V_read \
    op interface \
    ports { line_buffer_delays_2_rp_V_read { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name in_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_V \
    op interface \
    ports { in_V_ap_vld { I 1 bit } in_V { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -2 \
    name ap_return \
    type ap_return \
    reset_level 1 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 1 vector } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -4 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


