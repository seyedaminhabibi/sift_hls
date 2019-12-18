set C_TypeInfoList {{ 
"dog" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"in": [[], {"reference": "0"}] }, {"out": [[], {"reference": "1"}] }],[],""], 
"0": [ "stream<ap_ufixed<17, 8, 5, 3, 0> >", {"hls_type": {"stream": [[[[],"2"]],"3"]}}], 
"2": [ "ap_ufixed<17, 8, 5, 3, 0>", {"hls_type": {"ap_ufixed": [[[[], {"scalar": { "int": 17}}],[[], {"scalar": { "int": 8}}],[[], {"scalar": { "4": 5}}],[[], {"scalar": { "5": 3}}],[[], {"scalar": { "int": 0}}]],""]}}], 
"1": [ "stream<line_out>", {"hls_type": {"stream": [[[[],"6"]],"3"]}}], 
"6": [ "line_out", {"struct": [[],[],[{ "data": [[],  {"array": ["7", [15]]}]}],""]}], 
"7": [ "dog_in", {"typedef": [[[],"2"],""]}], 
"4": [ "ap_q_mode", {"enum": [[],[],[{"SC_RND":  {"scalar": "__integer__"}},{"SC_RND_ZERO":  {"scalar": "__integer__"}},{"SC_RND_MIN_INF":  {"scalar": "__integer__"}},{"SC_RND_INF":  {"scalar": "__integer__"}},{"SC_RND_CONV":  {"scalar": "__integer__"}},{"SC_TRN":  {"scalar": "__integer__"}},{"SC_TRN_ZERO":  {"scalar": "__integer__"}}],""]}], 
"5": [ "ap_o_mode", {"enum": [[],[],[{"SC_SAT":  {"scalar": "__integer__"}},{"SC_SAT_ZERO":  {"scalar": "__integer__"}},{"SC_SAT_SYM":  {"scalar": "__integer__"}},{"SC_WRAP":  {"scalar": "__integer__"}},{"SC_WRAP_SM":  {"scalar": "__integer__"}}],""]}],
"3": ["hls", ""]
}}
set moduleName dog
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {dog}
set C_modelType { void 0 }
set C_modelArgList {
	{ in_V_V int 24 regular {axi_s 0 volatile  { in_V_V data } }  }
	{ out_V_data_V int 256 unused {axi_s 0 ""  { out_V_data_V data } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_V_V", "interface" : "axis", "bitwidth" : 24, "direction" : "READONLY", "bitSlice":[{"low":0,"up":16,"cElement": [{"cName": "in.V.V","cData": "uint17","bit_use": { "low": 0,"up": 16},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "out_V_data_V", "interface" : "axis", "bitwidth" : 256, "direction" : "READONLY", "bitSlice":[{"low":0,"up":16,"cElement": [{"cName": "out.V.data.V","cData": "uint17","bit_use": { "low": 0,"up": 16},"cArray": [{"low" : 0,"up" : 0,"step" : 2}]}]},{"low":17,"up":33,"cElement": [{"cName": "out.V.data.V","cData": "uint17","bit_use": { "low": 0,"up": 16},"cArray": [{"low" : 1,"up" : 1,"step" : 2}]}]},{"low":34,"up":50,"cElement": [{"cName": "out.V.data.V","cData": "uint17","bit_use": { "low": 0,"up": 16},"cArray": [{"low" : 2,"up" : 2,"step" : 2}]}]},{"low":51,"up":67,"cElement": [{"cName": "out.V.data.V","cData": "uint17","bit_use": { "low": 0,"up": 16},"cArray": [{"low" : 3,"up" : 3,"step" : 2}]}]},{"low":68,"up":84,"cElement": [{"cName": "out.V.data.V","cData": "uint17","bit_use": { "low": 0,"up": 16},"cArray": [{"low" : 4,"up" : 4,"step" : 2}]}]},{"low":85,"up":101,"cElement": [{"cName": "out.V.data.V","cData": "uint17","bit_use": { "low": 0,"up": 16},"cArray": [{"low" : 5,"up" : 5,"step" : 2}]}]},{"low":102,"up":118,"cElement": [{"cName": "out.V.data.V","cData": "uint17","bit_use": { "low": 0,"up": 16},"cArray": [{"low" : 6,"up" : 6,"step" : 2}]}]},{"low":119,"up":135,"cElement": [{"cName": "out.V.data.V","cData": "uint17","bit_use": { "low": 0,"up": 16},"cArray": [{"low" : 7,"up" : 7,"step" : 2}]}]},{"low":136,"up":152,"cElement": [{"cName": "out.V.data.V","cData": "uint17","bit_use": { "low": 0,"up": 16},"cArray": [{"low" : 8,"up" : 8,"step" : 2}]}]},{"low":153,"up":169,"cElement": [{"cName": "out.V.data.V","cData": "uint17","bit_use": { "low": 0,"up": 16},"cArray": [{"low" : 9,"up" : 9,"step" : 2}]}]},{"low":170,"up":186,"cElement": [{"cName": "out.V.data.V","cData": "uint17","bit_use": { "low": 0,"up": 16},"cArray": [{"low" : 10,"up" : 10,"step" : 2}]}]},{"low":187,"up":203,"cElement": [{"cName": "out.V.data.V","cData": "uint17","bit_use": { "low": 0,"up": 16},"cArray": [{"low" : 11,"up" : 11,"step" : 2}]}]},{"low":204,"up":220,"cElement": [{"cName": "out.V.data.V","cData": "uint17","bit_use": { "low": 0,"up": 16},"cArray": [{"low" : 12,"up" : 12,"step" : 2}]}]},{"low":221,"up":237,"cElement": [{"cName": "out.V.data.V","cData": "uint17","bit_use": { "low": 0,"up": 16},"cArray": [{"low" : 13,"up" : 13,"step" : 2}]}]},{"low":238,"up":254,"cElement": [{"cName": "out.V.data.V","cData": "uint17","bit_use": { "low": 0,"up": 16},"cArray": [{"low" : 14,"up" : 14,"step" : 2}]}]}]} ]}
# RTL Port declarations: 
set portNum 12
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in_V_V_TDATA sc_in sc_lv 24 signal 0 } 
	{ in_V_V_TVALID sc_in sc_logic 1 invld 0 } 
	{ in_V_V_TREADY sc_out sc_logic 1 inacc 0 } 
	{ out_V_data_V_TDATA sc_in sc_lv 256 signal 1 } 
	{ out_V_data_V_TVALID sc_in sc_logic 1 invld 1 } 
	{ out_V_data_V_TREADY sc_out sc_logic 1 inacc 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "in_V_V", "role": "TDATA" }} , 
 	{ "name": "in_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_V_V", "role": "TVALID" }} , 
 	{ "name": "in_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_V_V", "role": "TREADY" }} , 
 	{ "name": "out_V_data_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "out_V_data_V", "role": "TDATA" }} , 
 	{ "name": "out_V_data_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "out_V_data_V", "role": "TVALID" }} , 
 	{ "name": "out_V_data_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "out_V_data_V", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14"], "CDFG" : "dog", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "in_V_V", "Type" : "Axis", "Direction" : "I", "BlockSignal" : [
			{"Name" : "in_V_V_TDATA_blk_n", "Type" : "RtlSignal"}], "SubConnect" : []}, 
		{"Name" : "out_V_data_V", "Type" : "Axis", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.buffer_0_V_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.buffer_1_V_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.buffer_2_V_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.buffer_3_V_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.buffer_4_V_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.buffer_5_V_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.buffer_6_V_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.buffer_7_V_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.buffer_8_V_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.buffer_9_V_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.buffer_10_V_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.buffer_11_V_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.buffer_12_V_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.buffer_13_V_U", "Parent" : "0", "Child" : []}]}

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1246722", "Max" : "1246722"}
	, {"Name" : "Interval", "Min" : "1246723", "Max" : "1246723"}
]}

set Spec2ImplPortList { 
	in_V_V { axis {  { in_V_V_TDATA in_data 0 24 }  { in_V_V_TVALID in_vld 0 1 }  { in_V_V_TREADY in_acc 1 1 } } }
	out_V_data_V { axis {  { out_V_data_V_TDATA in_data 0 256 }  { out_V_data_V_TVALID in_vld 0 1 }  { out_V_data_V_TREADY in_acc 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
