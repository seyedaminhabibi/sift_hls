; ModuleID = '/home/amin/sarbazi/hlsprojs/sift_starter/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@dog_str = internal unnamed_addr constant [4 x i8] c"dog\00"
@coeff_V = constant [15 x i17] [i17 1435, i17 5634, i17 1435, i17 0, i17 0, i17 0, i17 0, i17 0, i17 0, i17 0, i17 0, i17 0, i17 0, i17 0, i17 0]
@p_str2076 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1
@p_str2075 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1
@p_str2073 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str2072 = private unnamed_addr constant [5 x i8] c"axis\00", align 1

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define void @dog(i24* %in_V_V, i256* %out_V_data_V) {
  %tmp_V = alloca i17
  call void (...)* @_ssdm_op_SpecBitsMap(i256* %out_V_data_V), !map !159
  call void (...)* @_ssdm_op_SpecBitsMap(i24* %in_V_V), !map !235
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @dog_str) nounwind
  %buffer_0_V = alloca [1024 x i17], align 4
  %buffer_1_V = alloca [1024 x i17], align 4
  %buffer_2_V = alloca [1024 x i17], align 4
  %buffer_3_V = alloca [1024 x i17], align 4
  %buffer_4_V = alloca [1024 x i17], align 4
  %buffer_5_V = alloca [1024 x i17], align 4
  %buffer_6_V = alloca [1024 x i17], align 4
  %buffer_7_V = alloca [1024 x i17], align 4
  %buffer_8_V = alloca [1024 x i17], align 4
  %buffer_9_V = alloca [1024 x i17], align 4
  %buffer_10_V = alloca [1024 x i17], align 4
  %buffer_11_V = alloca [1024 x i17], align 4
  %buffer_12_V = alloca [1024 x i17], align 4
  %buffer_13_V = alloca [1024 x i17], align 4
  call void (...)* @_ssdm_op_SpecInterface(i24* %in_V_V, [5 x i8]* @p_str2072, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2073, [1 x i8]* @p_str2073, [1 x i8]* @p_str2073, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2073)
  call void (...)* @_ssdm_op_SpecInterface(i256* %out_V_data_V, [5 x i8]* @p_str2072, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2073, [1 x i8]* @p_str2073, [1 x i8]* @p_str2073, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2073)
  br label %1

; <label>:1                                       ; preds = %0, %._crit_edge
  %indvar_flatten = phi i19 [ 0, %0 ], [ %indvar_flatten_next, %._crit_edge ]
  %indvars_iv = phi i10 [ -384, %0 ], [ %indvars_iv_mid2, %._crit_edge ]
  %p_s = phi i10 [ 0, %0 ], [ %p_mid2, %._crit_edge ]
  %p_1 = phi i10 [ 384, %0 ], [ %p_1_mid2, %._crit_edge ]
  %p_2 = phi i9 [ 0, %0 ], [ %p_2_mid2, %._crit_edge ]
  %p_0178_1 = phi i10 [ 0, %0 ], [ %tmp_7, %._crit_edge ]
  %p_0279_1 = phi i10 [ 384, %0 ], [ %tmp_8, %._crit_edge ]
  %exitcond_flatten = icmp eq i19 %indvar_flatten, -212608
  %indvar_flatten_next = add i19 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %3, label %.reset

; <label>:2                                       ; preds = %.reset
  %in_V_V_read = call i24 @_ssdm_op_Read.axis.volatile.i24P(i24* %in_V_V)
  %tmp_V_1 = trunc i24 %in_V_V_read to i17
  store i17 %tmp_V_1, i17* %tmp_V
  br label %._crit_edge

._crit_edge:                                      ; preds = %2, %.reset
  %tmp_V_load = load i17* %tmp_V
  %tmp_4 = zext i10 %p_0178_1_mid2 to i64
  %buffer_0_V_addr = getelementptr [1024 x i17]* %buffer_0_V, i64 0, i64 %tmp_4
  store i17 %tmp_V_load, i17* %buffer_0_V_addr, align 4
  %tmp_5 = zext i10 %p_0279_1_mid2 to i64
  %buffer_0_V_addr_1 = getelementptr [1024 x i17]* %buffer_0_V, i64 0, i64 %tmp_5
  %buffer_0_V_load = load i17* %buffer_0_V_addr_1, align 4
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str2076)
  %buffer_1_V_addr = getelementptr [1024 x i17]* %buffer_1_V, i64 0, i64 %tmp_4
  store i17 %buffer_0_V_load, i17* %buffer_1_V_addr, align 4
  %buffer_1_V_addr_1 = getelementptr [1024 x i17]* %buffer_1_V, i64 0, i64 %tmp_5
  %buffer_1_V_load = load i17* %buffer_1_V_addr_1, align 4
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str2076, i32 %tmp_3)
  %tmp_6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str2076)
  %buffer_2_V_addr = getelementptr [1024 x i17]* %buffer_2_V, i64 0, i64 %tmp_4
  store i17 %buffer_1_V_load, i17* %buffer_2_V_addr, align 4
  %buffer_2_V_addr_1 = getelementptr [1024 x i17]* %buffer_2_V, i64 0, i64 %tmp_5
  %buffer_2_V_load = load i17* %buffer_2_V_addr_1, align 4
  %empty_3 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str2076, i32 %tmp_6)
  %tmp_9 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str2076)
  %buffer_3_V_addr = getelementptr [1024 x i17]* %buffer_3_V, i64 0, i64 %tmp_4
  store i17 %buffer_2_V_load, i17* %buffer_3_V_addr, align 4
  %buffer_3_V_addr_1 = getelementptr [1024 x i17]* %buffer_3_V, i64 0, i64 %tmp_5
  %buffer_3_V_load = load i17* %buffer_3_V_addr_1, align 4
  %empty_4 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str2076, i32 %tmp_9)
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str2076)
  %buffer_4_V_addr = getelementptr [1024 x i17]* %buffer_4_V, i64 0, i64 %tmp_4
  store i17 %buffer_3_V_load, i17* %buffer_4_V_addr, align 4
  %buffer_4_V_addr_1 = getelementptr [1024 x i17]* %buffer_4_V, i64 0, i64 %tmp_5
  %buffer_4_V_load = load i17* %buffer_4_V_addr_1, align 4
  %empty_5 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str2076, i32 %tmp_s)
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str2076)
  %buffer_5_V_addr = getelementptr [1024 x i17]* %buffer_5_V, i64 0, i64 %tmp_4
  store i17 %buffer_4_V_load, i17* %buffer_5_V_addr, align 4
  %buffer_5_V_addr_1 = getelementptr [1024 x i17]* %buffer_5_V, i64 0, i64 %tmp_5
  %buffer_5_V_load = load i17* %buffer_5_V_addr_1, align 4
  %empty_6 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str2076, i32 %tmp_1)
  %tmp_10 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str2076)
  %buffer_6_V_addr = getelementptr [1024 x i17]* %buffer_6_V, i64 0, i64 %tmp_4
  store i17 %buffer_5_V_load, i17* %buffer_6_V_addr, align 4
  %buffer_6_V_addr_1 = getelementptr [1024 x i17]* %buffer_6_V, i64 0, i64 %tmp_5
  %buffer_6_V_load = load i17* %buffer_6_V_addr_1, align 4
  %empty_7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str2076, i32 %tmp_10)
  %tmp_11 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str2076)
  %buffer_7_V_addr = getelementptr [1024 x i17]* %buffer_7_V, i64 0, i64 %tmp_4
  store i17 %buffer_6_V_load, i17* %buffer_7_V_addr, align 4
  %buffer_7_V_addr_1 = getelementptr [1024 x i17]* %buffer_7_V, i64 0, i64 %tmp_5
  %p_Val2_s = load i17* %buffer_7_V_addr_1, align 4
  %empty_8 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str2076, i32 %tmp_11)
  %tmp_12 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str2076)
  %buffer_8_V_addr = getelementptr [1024 x i17]* %buffer_8_V, i64 0, i64 %tmp_4
  store i17 %p_Val2_s, i17* %buffer_8_V_addr, align 4
  %buffer_8_V_addr_1 = getelementptr [1024 x i17]* %buffer_8_V, i64 0, i64 %tmp_5
  %buffer_8_V_load = load i17* %buffer_8_V_addr_1, align 4
  %empty_9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str2076, i32 %tmp_12)
  %tmp_13 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str2076)
  %buffer_9_V_addr = getelementptr [1024 x i17]* %buffer_9_V, i64 0, i64 %tmp_4
  store i17 %buffer_8_V_load, i17* %buffer_9_V_addr, align 4
  %buffer_9_V_addr_1 = getelementptr [1024 x i17]* %buffer_9_V, i64 0, i64 %tmp_5
  %buffer_9_V_load = load i17* %buffer_9_V_addr_1, align 4
  %empty_10 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str2076, i32 %tmp_13)
  %tmp_14 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str2076)
  %buffer_10_V_addr = getelementptr [1024 x i17]* %buffer_10_V, i64 0, i64 %tmp_4
  store i17 %buffer_9_V_load, i17* %buffer_10_V_addr, align 4
  %buffer_10_V_addr_1 = getelementptr [1024 x i17]* %buffer_10_V, i64 0, i64 %tmp_5
  %buffer_10_V_load = load i17* %buffer_10_V_addr_1, align 4
  %empty_11 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str2076, i32 %tmp_14)
  %tmp_15 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str2076)
  %buffer_11_V_addr = getelementptr [1024 x i17]* %buffer_11_V, i64 0, i64 %tmp_4
  store i17 %buffer_10_V_load, i17* %buffer_11_V_addr, align 4
  %buffer_11_V_addr_1 = getelementptr [1024 x i17]* %buffer_11_V, i64 0, i64 %tmp_5
  %buffer_11_V_load = load i17* %buffer_11_V_addr_1, align 4
  %empty_12 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str2076, i32 %tmp_15)
  %tmp_16 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str2076)
  %buffer_12_V_addr = getelementptr [1024 x i17]* %buffer_12_V, i64 0, i64 %tmp_4
  store i17 %buffer_11_V_load, i17* %buffer_12_V_addr, align 4
  %buffer_12_V_addr_1 = getelementptr [1024 x i17]* %buffer_12_V, i64 0, i64 %tmp_5
  %buffer_12_V_load = load i17* %buffer_12_V_addr_1, align 4
  %empty_13 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str2076, i32 %tmp_16)
  %tmp_17 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str2076)
  %buffer_13_V_addr = getelementptr [1024 x i17]* %buffer_13_V, i64 0, i64 %tmp_4
  store i17 %buffer_12_V_load, i17* %buffer_13_V_addr, align 4
  %empty_14 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str2076, i32 %tmp_17)
  %tmp_18 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str2076)
  %empty_15 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str2076, i32 %tmp_18)
  %tmp_7 = add i10 %p_0178_1_mid2, 1
  %tmp_8 = add i10 %p_0279_1_mid2, 1
  %empty_16 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str2075, i32 %tmp_2)
  br label %1

.reset:                                           ; preds = %1
  %empty_17 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 311680, i64 311680, i64 311680)
  %exitcond = icmp eq i10 %p_0178_1, %indvars_iv
  %wp_V = add i10 %p_s, -384
  %p_0178_1_mid2 = select i1 %exitcond, i10 %wp_V, i10 %p_0178_1
  %rp_V = add i10 %p_1, -384
  %p_0279_1_mid2 = select i1 %exitcond, i10 %rp_V, i10 %p_0279_1
  %i_V = add i9 %p_2, 1
  %tmp_mid1 = icmp ult i9 %i_V, -32
  %tmp = icmp ult i9 %p_2, -32
  %tmp_mid2 = select i1 %exitcond, i1 %tmp_mid1, i1 %tmp
  %indvars_iv_next_dup2 = add i10 %indvars_iv, -384
  %indvars_iv_mid2 = select i1 %exitcond, i10 %indvars_iv_next_dup2, i10 %indvars_iv
  %p_mid2 = select i1 %exitcond, i10 %wp_V, i10 %p_s
  %p_1_mid2 = select i1 %exitcond, i10 %rp_V, i10 %p_1
  %p_2_mid2 = select i1 %exitcond, i9 %i_V, i9 %p_2
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str2075)
  call void (...)* @_ssdm_op_SpecPipeline(i32 10, i32 1, i32 1, i32 0, [1 x i8]* @p_str2073) nounwind
  br i1 %tmp_mid2, label %2, label %._crit_edge

; <label>:3                                       ; preds = %1
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i24 @_ssdm_op_Read.axis.volatile.i24P(i24*) {
entry:
  %empty = load i24* %0
  ret i24 %empty
}

declare i17 @_ssdm_op_PartSelect.i17.i24.i32.i32(i24, i32, i32) nounwind readnone

declare void @_ssdm_SpecDependence(...) nounwind

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

!opencl.kernels = !{!0, !7, !7, !13, !13, !15, !21, !21, !15, !15, !23, !23, !15, !21, !25, !15, !15, !15, !15, !15, !27, !27, !29, !15, !31, !31, !21, !33, !27, !39, !42, !42, !15, !43, !45, !42, !42, !15, !48, !50, !53, !53, !55, !15, !15, !57, !57, !55, !55, !15, !21, !21, !15, !15, !58, !58, !60, !62, !62, !64, !64, !66, !67, !70, !70, !72, !67, !42, !42, !15, !74, !74, !76, !76, !25, !15, !15, !15, !15, !15, !77, !72, !72, !15, !15, !15, !78, !81, !15, !15, !15, !83, !83, !85, !85, !86, !86, !88, !90, !90, !92, !92, !94, !97, !48, !99, !100, !39, !43, !45, !48, !70, !15, !102, !105, !39, !43, !97, !48, !107, !107, !15, !15, !109, !110, !112, !112, !114, !15, !15, !15, !116, !116, !15, !15, !116, !116, !15, !15, !15, !15, !15, !15, !15, !15, !118, !118, !120, !15, !122, !15, !15, !15, !124, !124, !126, !126, !127, !15, !15, !15, !129, !131, !133, !133, !135, !15, !15, !15, !15, !15, !15, !136, !15, !15, !15, !138, !138, !15, !15, !140, !140, !140, !15, !140, !140, !140, !145, !15, !118, !118, !120, !136, !15, !118, !118, !120, !136, !15, !118, !118, !120, !136, !15, !147, !147, !147, !15, !147, !147, !147, !15, !147, !147, !147, !15, !147, !147, !147, !147, !147, !147, !147, !147, !147, !15, !147, !147, !147, !15, !147, !147, !147, !15, !147, !147, !147, !15, !147, !147, !147, !15, !147, !147, !147, !147, !147, !147, !140, !140, !140, !15, !147, !147, !147, !15, !147, !147, !147, !15, !147, !147, !147, !15, !140, !140, !140, !15, !140, !140, !140, !15, !15, !15, !15, !15, !15, !15, !15}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!152}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<dog_in> &", metadata !"hls::stream<line_out> &"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"in", metadata !"out"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<34, 8, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!13 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !14, metadata !6}
!14 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!15 = metadata !{null, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !6}
!16 = metadata !{metadata !"kernel_arg_addr_space"}
!17 = metadata !{metadata !"kernel_arg_access_qual"}
!18 = metadata !{metadata !"kernel_arg_type"}
!19 = metadata !{metadata !"kernel_arg_type_qual"}
!20 = metadata !{metadata !"kernel_arg_name"}
!21 = metadata !{null, metadata !8, metadata !9, metadata !22, metadata !11, metadata !14, metadata !6}
!22 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<48, 9, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!23 = metadata !{null, metadata !8, metadata !9, metadata !24, metadata !11, metadata !14, metadata !6}
!24 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<49, 10, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!25 = metadata !{null, metadata !8, metadata !9, metadata !26, metadata !11, metadata !12, metadata !6}
!26 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<17, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!27 = metadata !{null, metadata !8, metadata !9, metadata !28, metadata !11, metadata !14, metadata !6}
!28 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<17, 8, (enum ap_q_mode)0, (enum ap_o_mode)3, 0> &"}
!29 = metadata !{null, metadata !8, metadata !9, metadata !30, metadata !11, metadata !14, metadata !6}
!30 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<17, 8, false, (enum ap_q_mode)0, (enum ap_o_mode)3, 0> &"}
!31 = metadata !{null, metadata !8, metadata !9, metadata !32, metadata !11, metadata !14, metadata !6}
!32 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<48, 9, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!33 = metadata !{null, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !6}
!34 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0}
!35 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!36 = metadata !{metadata !"kernel_arg_type", metadata !"_Bool", metadata !"_Bool", metadata !"_Bool"}
!37 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!38 = metadata !{metadata !"kernel_arg_name", metadata !"qb", metadata !"r", metadata !"s"}
!39 = metadata !{null, metadata !8, metadata !9, metadata !40, metadata !11, metadata !41, metadata !6}
!40 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!41 = metadata !{metadata !"kernel_arg_name", metadata !""}
!42 = metadata !{null, metadata !8, metadata !9, metadata !40, metadata !11, metadata !14, metadata !6}
!43 = metadata !{null, metadata !8, metadata !9, metadata !44, metadata !11, metadata !12, metadata !6}
!44 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &"}
!45 = metadata !{null, metadata !1, metadata !2, metadata !46, metadata !4, metadata !47, metadata !6}
!46 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<4, false> &", metadata !"int"}
!47 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!48 = metadata !{null, metadata !8, metadata !9, metadata !49, metadata !11, metadata !12, metadata !6}
!49 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!50 = metadata !{null, metadata !1, metadata !2, metadata !51, metadata !4, metadata !52, metadata !6}
!51 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<48, 9, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &", metadata !"const ap_int_base<34, false> &"}
!52 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!53 = metadata !{null, metadata !8, metadata !9, metadata !54, metadata !11, metadata !14, metadata !6}
!54 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<34, false> &"}
!55 = metadata !{null, metadata !8, metadata !9, metadata !56, metadata !11, metadata !14, metadata !6}
!56 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<34, 34, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!57 = metadata !{null, metadata !8, metadata !9, metadata !56, metadata !11, metadata !12, metadata !6}
!58 = metadata !{null, metadata !8, metadata !9, metadata !59, metadata !11, metadata !14, metadata !6}
!59 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<74, 35, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!60 = metadata !{null, metadata !1, metadata !2, metadata !61, metadata !4, metadata !47, metadata !6}
!61 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<17, false> &", metadata !"const ap_int_base<17, false> &"}
!62 = metadata !{null, metadata !8, metadata !9, metadata !63, metadata !11, metadata !14, metadata !6}
!63 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<17, false> &"}
!64 = metadata !{null, metadata !8, metadata !9, metadata !65, metadata !11, metadata !14, metadata !6}
!65 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<17, 0, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!66 = metadata !{null, metadata !8, metadata !9, metadata !26, metadata !11, metadata !14, metadata !6}
!67 = metadata !{null, metadata !8, metadata !9, metadata !68, metadata !11, metadata !69, metadata !6}
!68 = metadata !{metadata !"kernel_arg_type", metadata !"_Bool"}
!69 = metadata !{metadata !"kernel_arg_name", metadata !"Cnative"}
!70 = metadata !{null, metadata !8, metadata !9, metadata !71, metadata !11, metadata !14, metadata !6}
!71 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<17, 8, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!72 = metadata !{null, metadata !8, metadata !9, metadata !73, metadata !11, metadata !14, metadata !6}
!73 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<17, 8, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!74 = metadata !{null, metadata !8, metadata !9, metadata !75, metadata !11, metadata !12, metadata !6}
!75 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<35, 9, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!76 = metadata !{null, metadata !8, metadata !9, metadata !75, metadata !11, metadata !14, metadata !6}
!77 = metadata !{null, metadata !8, metadata !9, metadata !73, metadata !11, metadata !12, metadata !6}
!78 = metadata !{null, metadata !1, metadata !2, metadata !79, metadata !4, metadata !80, metadata !6}
!79 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"const ap_int_base<4, false> &"}
!80 = metadata !{metadata !"kernel_arg_name", metadata !"i_op", metadata !"op"}
!81 = metadata !{null, metadata !1, metadata !2, metadata !82, metadata !4, metadata !47, metadata !6}
!82 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &", metadata !"const ap_int_base<4, false> &"}
!83 = metadata !{null, metadata !8, metadata !9, metadata !84, metadata !11, metadata !14, metadata !6}
!84 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<4, false> &"}
!85 = metadata !{null, metadata !8, metadata !9, metadata !49, metadata !11, metadata !14, metadata !6}
!86 = metadata !{null, metadata !8, metadata !9, metadata !40, metadata !11, metadata !87, metadata !6}
!87 = metadata !{metadata !"kernel_arg_name", metadata !"v"}
!88 = metadata !{null, metadata !8, metadata !9, metadata !40, metadata !11, metadata !89, metadata !6}
!89 = metadata !{metadata !"kernel_arg_name", metadata !"b"}
!90 = metadata !{null, metadata !8, metadata !9, metadata !40, metadata !11, metadata !91, metadata !6}
!91 = metadata !{metadata !"kernel_arg_name", metadata !"i_op"}
!92 = metadata !{null, metadata !8, metadata !9, metadata !93, metadata !11, metadata !14, metadata !6}
!93 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 32, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!94 = metadata !{null, metadata !1, metadata !2, metadata !95, metadata !4, metadata !96, metadata !6}
!95 = metadata !{metadata !"kernel_arg_type", metadata !"std::ostream &", metadata !"const ap_fixed_base<17, 8, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!96 = metadata !{metadata !"kernel_arg_name", metadata !"os", metadata !"x"}
!97 = metadata !{null, metadata !1, metadata !2, metadata !98, metadata !4, metadata !47, metadata !6}
!98 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<10, false> &", metadata !"int"}
!99 = metadata !{null, metadata !1, metadata !2, metadata !46, metadata !4, metadata !52, metadata !6}
!100 = metadata !{null, metadata !1, metadata !2, metadata !101, metadata !4, metadata !47, metadata !6}
!101 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<4, false> &", metadata !"const ap_int_base<32, true> &"}
!102 = metadata !{null, metadata !8, metadata !9, metadata !103, metadata !11, metadata !104, metadata !6}
!103 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_ufixed<17, 8, 5, 3, 0> &"}
!104 = metadata !{metadata !"kernel_arg_name", metadata !"rdata"}
!105 = metadata !{null, metadata !8, metadata !9, metadata !103, metadata !11, metadata !106, metadata !6}
!106 = metadata !{metadata !"kernel_arg_name", metadata !"dout"}
!107 = metadata !{null, metadata !8, metadata !9, metadata !108, metadata !11, metadata !14, metadata !6}
!108 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &"}
!109 = metadata !{null, metadata !1, metadata !2, metadata !98, metadata !4, metadata !52, metadata !6}
!110 = metadata !{null, metadata !1, metadata !2, metadata !111, metadata !4, metadata !47, metadata !6}
!111 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<10, false> &", metadata !"const ap_int_base<32, true> &"}
!112 = metadata !{null, metadata !8, metadata !9, metadata !113, metadata !11, metadata !14, metadata !6}
!113 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<10, false> &"}
!114 = metadata !{null, metadata !8, metadata !9, metadata !115, metadata !11, metadata !12, metadata !6}
!115 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<10> &"}
!116 = metadata !{null, metadata !8, metadata !9, metadata !40, metadata !11, metadata !117, metadata !6}
!117 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!118 = metadata !{null, metadata !8, metadata !9, metadata !119, metadata !11, metadata !87, metadata !6}
!119 = metadata !{metadata !"kernel_arg_type", metadata !"double"}
!120 = metadata !{null, metadata !8, metadata !9, metadata !119, metadata !11, metadata !121, metadata !6}
!121 = metadata !{metadata !"kernel_arg_name", metadata !"d"}
!122 = metadata !{null, metadata !1, metadata !2, metadata !123, metadata !4, metadata !47, metadata !6}
!123 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"const ap_int_base<54, true> &"}
!124 = metadata !{null, metadata !8, metadata !9, metadata !125, metadata !11, metadata !14, metadata !6}
!125 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<54, true> &"}
!126 = metadata !{null, metadata !8, metadata !9, metadata !44, metadata !11, metadata !14, metadata !6}
!127 = metadata !{null, metadata !8, metadata !9, metadata !128, metadata !11, metadata !12, metadata !6}
!128 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, true> &"}
!129 = metadata !{null, metadata !1, metadata !2, metadata !130, metadata !4, metadata !52, metadata !6}
!130 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &", metadata !"int"}
!131 = metadata !{null, metadata !1, metadata !2, metadata !132, metadata !4, metadata !47, metadata !6}
!132 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &", metadata !"const ap_int_base<32, true> &"}
!133 = metadata !{null, metadata !8, metadata !9, metadata !134, metadata !11, metadata !14, metadata !6}
!134 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &"}
!135 = metadata !{null, metadata !8, metadata !9, metadata !108, metadata !11, metadata !12, metadata !6}
!136 = metadata !{null, metadata !8, metadata !9, metadata !119, metadata !11, metadata !137, metadata !6}
!137 = metadata !{metadata !"kernel_arg_name", metadata !"pf"}
!138 = metadata !{null, metadata !8, metadata !9, metadata !139, metadata !11, metadata !14, metadata !6}
!139 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<72> &"}
!140 = metadata !{null, metadata !141, metadata !2, metadata !142, metadata !143, metadata !144, metadata !6}
!141 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0}
!142 = metadata !{metadata !"kernel_arg_type", metadata !"char*", metadata !"signed char"}
!143 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const", metadata !""}
!144 = metadata !{metadata !"kernel_arg_name", metadata !"str", metadata !"radix"}
!145 = metadata !{null, metadata !8, metadata !9, metadata !146, metadata !11, metadata !12, metadata !6}
!146 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<4> &"}
!147 = metadata !{null, metadata !148, metadata !9, metadata !149, metadata !150, metadata !151, metadata !6}
!148 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!149 = metadata !{metadata !"kernel_arg_type", metadata !"char*"}
!150 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const"}
!151 = metadata !{metadata !"kernel_arg_name", metadata !"str"}
!152 = metadata !{metadata !153, [1 x i32]* @llvm_global_ctors_0}
!153 = metadata !{metadata !154}
!154 = metadata !{i32 0, i32 31, metadata !155}
!155 = metadata !{metadata !156}
!156 = metadata !{metadata !"llvm.global_ctors.0", metadata !157, metadata !"", i32 0, i32 31}
!157 = metadata !{metadata !158}
!158 = metadata !{i32 0, i32 0, i32 1}
!159 = metadata !{metadata !160, metadata !165, metadata !170, metadata !175, metadata !180, metadata !185, metadata !190, metadata !195, metadata !200, metadata !205, metadata !210, metadata !215, metadata !220, metadata !225, metadata !230}
!160 = metadata !{i32 0, i32 16, metadata !161}
!161 = metadata !{metadata !162}
!162 = metadata !{metadata !"out.V.data.V", metadata !163, metadata !"uint17", i32 0, i32 16}
!163 = metadata !{metadata !164}
!164 = metadata !{i32 0, i32 0, i32 2}
!165 = metadata !{i32 17, i32 33, metadata !166}
!166 = metadata !{metadata !167}
!167 = metadata !{metadata !"out.V.data.V", metadata !168, metadata !"uint17", i32 0, i32 16}
!168 = metadata !{metadata !169}
!169 = metadata !{i32 1, i32 1, i32 2}
!170 = metadata !{i32 34, i32 50, metadata !171}
!171 = metadata !{metadata !172}
!172 = metadata !{metadata !"out.V.data.V", metadata !173, metadata !"uint17", i32 0, i32 16}
!173 = metadata !{metadata !174}
!174 = metadata !{i32 2, i32 2, i32 2}
!175 = metadata !{i32 51, i32 67, metadata !176}
!176 = metadata !{metadata !177}
!177 = metadata !{metadata !"out.V.data.V", metadata !178, metadata !"uint17", i32 0, i32 16}
!178 = metadata !{metadata !179}
!179 = metadata !{i32 3, i32 3, i32 2}
!180 = metadata !{i32 68, i32 84, metadata !181}
!181 = metadata !{metadata !182}
!182 = metadata !{metadata !"out.V.data.V", metadata !183, metadata !"uint17", i32 0, i32 16}
!183 = metadata !{metadata !184}
!184 = metadata !{i32 4, i32 4, i32 2}
!185 = metadata !{i32 85, i32 101, metadata !186}
!186 = metadata !{metadata !187}
!187 = metadata !{metadata !"out.V.data.V", metadata !188, metadata !"uint17", i32 0, i32 16}
!188 = metadata !{metadata !189}
!189 = metadata !{i32 5, i32 5, i32 2}
!190 = metadata !{i32 102, i32 118, metadata !191}
!191 = metadata !{metadata !192}
!192 = metadata !{metadata !"out.V.data.V", metadata !193, metadata !"uint17", i32 0, i32 16}
!193 = metadata !{metadata !194}
!194 = metadata !{i32 6, i32 6, i32 2}
!195 = metadata !{i32 119, i32 135, metadata !196}
!196 = metadata !{metadata !197}
!197 = metadata !{metadata !"out.V.data.V", metadata !198, metadata !"uint17", i32 0, i32 16}
!198 = metadata !{metadata !199}
!199 = metadata !{i32 7, i32 7, i32 2}
!200 = metadata !{i32 136, i32 152, metadata !201}
!201 = metadata !{metadata !202}
!202 = metadata !{metadata !"out.V.data.V", metadata !203, metadata !"uint17", i32 0, i32 16}
!203 = metadata !{metadata !204}
!204 = metadata !{i32 8, i32 8, i32 2}
!205 = metadata !{i32 153, i32 169, metadata !206}
!206 = metadata !{metadata !207}
!207 = metadata !{metadata !"out.V.data.V", metadata !208, metadata !"uint17", i32 0, i32 16}
!208 = metadata !{metadata !209}
!209 = metadata !{i32 9, i32 9, i32 2}
!210 = metadata !{i32 170, i32 186, metadata !211}
!211 = metadata !{metadata !212}
!212 = metadata !{metadata !"out.V.data.V", metadata !213, metadata !"uint17", i32 0, i32 16}
!213 = metadata !{metadata !214}
!214 = metadata !{i32 10, i32 10, i32 2}
!215 = metadata !{i32 187, i32 203, metadata !216}
!216 = metadata !{metadata !217}
!217 = metadata !{metadata !"out.V.data.V", metadata !218, metadata !"uint17", i32 0, i32 16}
!218 = metadata !{metadata !219}
!219 = metadata !{i32 11, i32 11, i32 2}
!220 = metadata !{i32 204, i32 220, metadata !221}
!221 = metadata !{metadata !222}
!222 = metadata !{metadata !"out.V.data.V", metadata !223, metadata !"uint17", i32 0, i32 16}
!223 = metadata !{metadata !224}
!224 = metadata !{i32 12, i32 12, i32 2}
!225 = metadata !{i32 221, i32 237, metadata !226}
!226 = metadata !{metadata !227}
!227 = metadata !{metadata !"out.V.data.V", metadata !228, metadata !"uint17", i32 0, i32 16}
!228 = metadata !{metadata !229}
!229 = metadata !{i32 13, i32 13, i32 2}
!230 = metadata !{i32 238, i32 254, metadata !231}
!231 = metadata !{metadata !232}
!232 = metadata !{metadata !"out.V.data.V", metadata !233, metadata !"uint17", i32 0, i32 16}
!233 = metadata !{metadata !234}
!234 = metadata !{i32 14, i32 14, i32 2}
!235 = metadata !{metadata !236}
!236 = metadata !{i32 0, i32 16, metadata !237}
!237 = metadata !{metadata !238}
!238 = metadata !{metadata !"in.V.V", metadata !157, metadata !"uint17", i32 0, i32 16}
