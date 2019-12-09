set moduleName dog_func_1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set pipeII 1
set pipeLatency 1
set C_modelName {dog_func.1}
set C_modelType { int 28 }
set C_modelArgList {
	{ delay_wp_V_read int 10 regular  }
	{ delay_rp_V_read int 10 regular  }
	{ delay_buffer_V int 8 regular {array 3072 { 1 0 } 1 1 }  }
	{ tmp_5 int 3 regular  }
	{ in_V int 8 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "delay_wp_V_read", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "delay_rp_V_read", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "delay_buffer_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "tmp_5", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "in_V", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 28} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in_V_ap_vld sc_in sc_logic 1 invld 4 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
	{ delay_wp_V_read sc_in sc_lv 10 signal 0 } 
	{ delay_rp_V_read sc_in sc_lv 10 signal 1 } 
	{ delay_buffer_V_address0 sc_out sc_lv 12 signal 2 } 
	{ delay_buffer_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ delay_buffer_V_q0 sc_in sc_lv 8 signal 2 } 
	{ delay_buffer_V_address1 sc_out sc_lv 12 signal 2 } 
	{ delay_buffer_V_ce1 sc_out sc_logic 1 signal 2 } 
	{ delay_buffer_V_we1 sc_out sc_logic 1 signal 2 } 
	{ delay_buffer_V_d1 sc_out sc_lv 8 signal 2 } 
	{ tmp_5 sc_in sc_lv 3 signal 3 } 
	{ in_V sc_in sc_lv 8 signal 4 } 
	{ ap_return_0 sc_out sc_lv 8 signal -1 } 
	{ ap_return_1 sc_out sc_lv 10 signal -1 } 
	{ ap_return_2 sc_out sc_lv 10 signal -1 } 
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
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }} , 
 	{ "name": "delay_wp_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "delay_wp_V_read", "role": "default" }} , 
 	{ "name": "delay_rp_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "delay_rp_V_read", "role": "default" }} , 
 	{ "name": "delay_buffer_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "delay_buffer_V", "role": "address0" }} , 
 	{ "name": "delay_buffer_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "delay_buffer_V", "role": "ce0" }} , 
 	{ "name": "delay_buffer_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "delay_buffer_V", "role": "q0" }} , 
 	{ "name": "delay_buffer_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "delay_buffer_V", "role": "address1" }} , 
 	{ "name": "delay_buffer_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "delay_buffer_V", "role": "ce1" }} , 
 	{ "name": "delay_buffer_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "delay_buffer_V", "role": "we1" }} , 
 	{ "name": "delay_buffer_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "delay_buffer_V", "role": "d1" }} , 
 	{ "name": "tmp_5", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tmp_5", "role": "default" }} , 
 	{ "name": "in_V", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_V", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "in_V_blk_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_V_blk_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : [], "CDFG" : "dog_func_1", "VariableLatency" : "0", "AlignedPipeline" : "1", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
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
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set Spec2ImplPortList { 
	delay_wp_V_read { ap_none {  { delay_wp_V_read in_data 0 10 } } }
	delay_rp_V_read { ap_none {  { delay_rp_V_read in_data 0 10 } } }
	delay_buffer_V { ap_memory {  { delay_buffer_V_address0 mem_address 1 12 }  { delay_buffer_V_ce0 mem_ce 1 1 }  { delay_buffer_V_q0 mem_dout 0 8 }  { delay_buffer_V_address1 mem_address 1 12 }  { delay_buffer_V_ce1 mem_ce 1 1 }  { delay_buffer_V_we1 mem_we 1 1 }  { delay_buffer_V_d1 mem_din 1 8 } } }
	tmp_5 { ap_none {  { tmp_5 in_data 0 3 } } }
	in_V { ap_vld {  { in_V_ap_vld in_vld 0 1 }  { in_V in_data 0 8 } } }
}
