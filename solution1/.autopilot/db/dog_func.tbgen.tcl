set moduleName dog_func
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set pipeII 6
set pipeLatency 6
set C_modelName {dog_func}
set C_modelType { int 84 }
set C_modelArgList {
	{ line_buffer_delays_0_wp_V_read int 10 regular  }
	{ line_buffer_delays_1_wp_V_read int 10 regular  }
	{ line_buffer_delays_2_wp_V_read int 10 regular  }
	{ line_buffer_delays_0_rp_V_read int 10 regular  }
	{ line_buffer_delays_1_rp_V_read int 10 regular  }
	{ line_buffer_delays_2_rp_V_read int 10 regular  }
	{ line_buffer_delays_buffer_V int 8 regular {array 3072 { 1 0 } 1 1 }  }
	{ line_buffer_delay_outs_V int 8 regular {array 3 { 2 2 } 1 1 }  }
	{ in_V int 8 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "line_buffer_delays_0_wp_V_read", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "line_buffer_delays_1_wp_V_read", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "line_buffer_delays_2_wp_V_read", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "line_buffer_delays_0_rp_V_read", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "line_buffer_delays_1_rp_V_read", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "line_buffer_delays_2_rp_V_read", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "line_buffer_delays_buffer_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "line_buffer_delay_outs_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "in_V", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 84} ]}
# RTL Port declarations: 
set portNum 39
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in_V_ap_vld sc_in sc_logic 1 invld 8 } 
	{ line_buffer_delays_0_wp_V_read sc_in sc_lv 10 signal 0 } 
	{ line_buffer_delays_1_wp_V_read sc_in sc_lv 10 signal 1 } 
	{ line_buffer_delays_2_wp_V_read sc_in sc_lv 10 signal 2 } 
	{ line_buffer_delays_0_rp_V_read sc_in sc_lv 10 signal 3 } 
	{ line_buffer_delays_1_rp_V_read sc_in sc_lv 10 signal 4 } 
	{ line_buffer_delays_2_rp_V_read sc_in sc_lv 10 signal 5 } 
	{ line_buffer_delays_buffer_V_address0 sc_out sc_lv 12 signal 6 } 
	{ line_buffer_delays_buffer_V_ce0 sc_out sc_logic 1 signal 6 } 
	{ line_buffer_delays_buffer_V_q0 sc_in sc_lv 8 signal 6 } 
	{ line_buffer_delays_buffer_V_address1 sc_out sc_lv 12 signal 6 } 
	{ line_buffer_delays_buffer_V_ce1 sc_out sc_logic 1 signal 6 } 
	{ line_buffer_delays_buffer_V_we1 sc_out sc_logic 1 signal 6 } 
	{ line_buffer_delays_buffer_V_d1 sc_out sc_lv 8 signal 6 } 
	{ line_buffer_delay_outs_V_address0 sc_out sc_lv 2 signal 7 } 
	{ line_buffer_delay_outs_V_ce0 sc_out sc_logic 1 signal 7 } 
	{ line_buffer_delay_outs_V_we0 sc_out sc_logic 1 signal 7 } 
	{ line_buffer_delay_outs_V_d0 sc_out sc_lv 8 signal 7 } 
	{ line_buffer_delay_outs_V_q0 sc_in sc_lv 8 signal 7 } 
	{ line_buffer_delay_outs_V_address1 sc_out sc_lv 2 signal 7 } 
	{ line_buffer_delay_outs_V_ce1 sc_out sc_logic 1 signal 7 } 
	{ line_buffer_delay_outs_V_we1 sc_out sc_logic 1 signal 7 } 
	{ line_buffer_delay_outs_V_d1 sc_out sc_lv 8 signal 7 } 
	{ line_buffer_delay_outs_V_q1 sc_in sc_lv 8 signal 7 } 
	{ in_V sc_in sc_lv 8 signal 8 } 
	{ ap_return_0 sc_out sc_lv 10 signal -1 } 
	{ ap_return_1 sc_out sc_lv 10 signal -1 } 
	{ ap_return_2 sc_out sc_lv 10 signal -1 } 
	{ ap_return_3 sc_out sc_lv 10 signal -1 } 
	{ ap_return_4 sc_out sc_lv 10 signal -1 } 
	{ ap_return_5 sc_out sc_lv 10 signal -1 } 
	{ ap_return_6 sc_out sc_lv 24 signal -1 } 
	{ in_V_blk_n sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in_V_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_V", "role": "ap_vld" }} , 
 	{ "name": "line_buffer_delays_0_wp_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "line_buffer_delays_0_wp_V_read", "role": "default" }} , 
 	{ "name": "line_buffer_delays_1_wp_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "line_buffer_delays_1_wp_V_read", "role": "default" }} , 
 	{ "name": "line_buffer_delays_2_wp_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "line_buffer_delays_2_wp_V_read", "role": "default" }} , 
 	{ "name": "line_buffer_delays_0_rp_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "line_buffer_delays_0_rp_V_read", "role": "default" }} , 
 	{ "name": "line_buffer_delays_1_rp_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "line_buffer_delays_1_rp_V_read", "role": "default" }} , 
 	{ "name": "line_buffer_delays_2_rp_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "line_buffer_delays_2_rp_V_read", "role": "default" }} , 
 	{ "name": "line_buffer_delays_buffer_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "line_buffer_delays_buffer_V", "role": "address0" }} , 
 	{ "name": "line_buffer_delays_buffer_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "line_buffer_delays_buffer_V", "role": "ce0" }} , 
 	{ "name": "line_buffer_delays_buffer_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "line_buffer_delays_buffer_V", "role": "q0" }} , 
 	{ "name": "line_buffer_delays_buffer_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "line_buffer_delays_buffer_V", "role": "address1" }} , 
 	{ "name": "line_buffer_delays_buffer_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "line_buffer_delays_buffer_V", "role": "ce1" }} , 
 	{ "name": "line_buffer_delays_buffer_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "line_buffer_delays_buffer_V", "role": "we1" }} , 
 	{ "name": "line_buffer_delays_buffer_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "line_buffer_delays_buffer_V", "role": "d1" }} , 
 	{ "name": "line_buffer_delay_outs_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "line_buffer_delay_outs_V", "role": "address0" }} , 
 	{ "name": "line_buffer_delay_outs_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "line_buffer_delay_outs_V", "role": "ce0" }} , 
 	{ "name": "line_buffer_delay_outs_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "line_buffer_delay_outs_V", "role": "we0" }} , 
 	{ "name": "line_buffer_delay_outs_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "line_buffer_delay_outs_V", "role": "d0" }} , 
 	{ "name": "line_buffer_delay_outs_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "line_buffer_delay_outs_V", "role": "q0" }} , 
 	{ "name": "line_buffer_delay_outs_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "line_buffer_delay_outs_V", "role": "address1" }} , 
 	{ "name": "line_buffer_delay_outs_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "line_buffer_delay_outs_V", "role": "ce1" }} , 
 	{ "name": "line_buffer_delay_outs_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "line_buffer_delay_outs_V", "role": "we1" }} , 
 	{ "name": "line_buffer_delay_outs_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "line_buffer_delay_outs_V", "role": "d1" }} , 
 	{ "name": "line_buffer_delay_outs_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "line_buffer_delay_outs_V", "role": "q1" }} , 
 	{ "name": "in_V", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_V", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }} , 
 	{ "name": "ap_return_4", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_4", "role": "default" }} , 
 	{ "name": "ap_return_5", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_5", "role": "default" }} , 
 	{ "name": "ap_return_6", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "ap_return_6", "role": "default" }} , 
 	{ "name": "in_V_blk_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_V_blk_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"], "CDFG" : "dog_func", "VariableLatency" : "0", "AlignedPipeline" : "1", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "line_buffer_delays_0_wp_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "line_buffer_delays_1_wp_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "line_buffer_delays_2_wp_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "line_buffer_delays_0_rp_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "line_buffer_delays_1_rp_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "line_buffer_delays_2_rp_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "line_buffer_delays_buffer_V", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dog_func_1_fu_142", "Port" : "delay_buffer_V"}]}, 
		{"Name" : "line_buffer_delay_outs_V", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "in_V", "Type" : "Vld", "Direction" : "I", "BlockSignal" : [
			{"Name" : "in_V_blk_n", "Type" : "RtlPort"}], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : [
		{"SubInst" : "grp_dog_func_1_fu_142", "BlockRtlPort" : ["in_V_blk_n"]}]},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dog_func_1_fu_142", "Parent" : "0", "Child" : [], "CDFG" : "dog_func_1", "VariableLatency" : "0", "AlignedPipeline" : "1", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "delay_wp_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "delay_rp_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "delay_buffer_V", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "tmp_5", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "in_V", "Type" : "Vld", "Direction" : "I", "BlockSignal" : [
			{"Name" : "in_V_blk_n", "Type" : "RtlPort"}], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []}]}

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6", "Max" : "6"}
	, {"Name" : "Interval", "Min" : "6", "Max" : "6"}
]}

set Spec2ImplPortList { 
	line_buffer_delays_0_wp_V_read { ap_none {  { line_buffer_delays_0_wp_V_read in_data 0 10 } } }
	line_buffer_delays_1_wp_V_read { ap_none {  { line_buffer_delays_1_wp_V_read in_data 0 10 } } }
	line_buffer_delays_2_wp_V_read { ap_none {  { line_buffer_delays_2_wp_V_read in_data 0 10 } } }
	line_buffer_delays_0_rp_V_read { ap_none {  { line_buffer_delays_0_rp_V_read in_data 0 10 } } }
	line_buffer_delays_1_rp_V_read { ap_none {  { line_buffer_delays_1_rp_V_read in_data 0 10 } } }
	line_buffer_delays_2_rp_V_read { ap_none {  { line_buffer_delays_2_rp_V_read in_data 0 10 } } }
	line_buffer_delays_buffer_V { ap_memory {  { line_buffer_delays_buffer_V_address0 mem_address 1 12 }  { line_buffer_delays_buffer_V_ce0 mem_ce 1 1 }  { line_buffer_delays_buffer_V_q0 mem_dout 0 8 }  { line_buffer_delays_buffer_V_address1 mem_address 1 12 }  { line_buffer_delays_buffer_V_ce1 mem_ce 1 1 }  { line_buffer_delays_buffer_V_we1 mem_we 1 1 }  { line_buffer_delays_buffer_V_d1 mem_din 1 8 } } }
	line_buffer_delay_outs_V { ap_memory {  { line_buffer_delay_outs_V_address0 mem_address 1 2 }  { line_buffer_delay_outs_V_ce0 mem_ce 1 1 }  { line_buffer_delay_outs_V_we0 mem_we 1 1 }  { line_buffer_delay_outs_V_d0 mem_din 1 8 }  { line_buffer_delay_outs_V_q0 mem_dout 0 8 }  { line_buffer_delay_outs_V_address1 mem_address 1 2 }  { line_buffer_delay_outs_V_ce1 mem_ce 1 1 }  { line_buffer_delay_outs_V_we1 mem_we 1 1 }  { line_buffer_delay_outs_V_d1 mem_din 1 8 }  { line_buffer_delay_outs_V_q1 mem_dout 0 8 } } }
	in_V { ap_vld {  { in_V_ap_vld in_vld 0 1 }  { in_V in_data 0 8 } } }
}
