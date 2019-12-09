; ModuleID = '/home/amin/sarbazi/hlsprojs/sift_starter/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@dog_str = internal unnamed_addr constant [4 x i8] c"dog\00"
@p_str2075 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1
@p_str2074 = private unnamed_addr constant [12 x i8] c"RAM_2P_BRAM\00", align 1
@p_str2073 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1
@p_str2072 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str2071 = private unnamed_addr constant [7 x i8] c"ap_vld\00", align 1

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define internal fastcc { i8, i10, i10 } @dog_func.1(i10 %delay_wp_V_read, i10 %delay_rp_V_read, [3072 x i8]* %delay_buffer_V, i3 %tmp_5, i8 %in_V) {
  %in_V_read = call i8 @_ssdm_op_Read.ap_vld.i8(i8 %in_V)
  %tmp_5_read = call i3 @_ssdm_op_Read.ap_auto.i3(i3 %tmp_5)
  %delay_rp_V_read_1 = call i10 @_ssdm_op_Read.ap_auto.i10(i10 %delay_rp_V_read)
  %delay_wp_V_read_1 = call i10 @_ssdm_op_Read.ap_auto.i10(i10 %delay_wp_V_read)
  call void (...)* @_ssdm_op_SpecInterface(i8 %in_V, [7 x i8]* @p_str2071, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2072, [1 x i8]* @p_str2072, [1 x i8]* @p_str2072, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2072) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [7 x i8]* @p_str2071, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2072, [1 x i8]* @p_str2072, [1 x i8]* @p_str2072, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2072)
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str2073, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2072, [1 x i8]* @p_str2072, [1 x i8]* @p_str2072, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2072) nounwind
  call void (...)* @_ssdm_op_SpecMemCore([3072 x i8]* %delay_buffer_V, [1 x i8]* @p_str2072, [12 x i8]* @p_str2074, [1 x i8]* @p_str2072, i32 -1, [1 x i8]* @p_str2072, [1 x i8]* @p_str2072, [1 x i8]* @p_str2072, [1 x i8]* @p_str2072, [1 x i8]* @p_str2072)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2072) nounwind
  %tmp_2 = call i13 @_ssdm_op_BitConcatenate.i13.i3.i10(i3 %tmp_5_read, i10 %delay_wp_V_read_1)
  %tmp_3 = zext i13 %tmp_2 to i64
  %delay_buffer_V_addr = getelementptr [3072 x i8]* %delay_buffer_V, i64 0, i64 %tmp_3
  store i8 %in_V_read, i8* %delay_buffer_V_addr, align 1
  %tmp_4 = call i13 @_ssdm_op_BitConcatenate.i13.i3.i10(i3 %tmp_5_read, i10 %delay_rp_V_read_1)
  %tmp_6 = zext i13 %tmp_4 to i64
  %delay_buffer_V_addr_1 = getelementptr [3072 x i8]* %delay_buffer_V, i64 0, i64 %tmp_6
  %delay_buffer_V_load = load i8* %delay_buffer_V_addr_1, align 1
  %delay_wp_V_write_assign = add i10 %delay_wp_V_read_1, 1
  %delay_rp_V_write_assign = add i10 %delay_rp_V_read_1, 1
  %mrv = insertvalue { i8, i10, i10 } undef, i8 %delay_buffer_V_load, 0
  %mrv_1 = insertvalue { i8, i10, i10 } %mrv, i10 %delay_wp_V_write_assign, 1
  %mrv_2 = insertvalue { i8, i10, i10 } %mrv_1, i10 %delay_rp_V_write_assign, 2
  ret { i8, i10, i10 } %mrv_2
}

define internal fastcc { i10, i10, i10, i10, i10, i10, i24 } @dog_func(i10 %line_buffer_delays_0_wp_V_read, i10 %line_buffer_delays_1_wp_V_read, i10 %line_buffer_delays_2_wp_V_read, i10 %line_buffer_delays_0_rp_V_read, i10 %line_buffer_delays_1_rp_V_read, i10 %line_buffer_delays_2_rp_V_read, [3072 x i8]* %line_buffer_delays_buffer_V, [3 x i8]* %line_buffer_delay_outs_V, i8 %in_V) {
.preheader.preheader:
  call void (...)* @_ssdm_op_SpecMemCore([3072 x i8]* %line_buffer_delays_buffer_V, [1 x i8]* @p_str2072, [12 x i8]* @p_str2074, [1 x i8]* @p_str2072, i32 -1, [1 x i8]* @p_str2072, [1 x i8]* @p_str2072, [1 x i8]* @p_str2072, [1 x i8]* @p_str2072, [1 x i8]* @p_str2072)
  %in_V_read = call i8 @_ssdm_op_Read.ap_vld.i8(i8 %in_V)
  %line_buffer_delays_2_rp_V_rea = call i10 @_ssdm_op_Read.ap_auto.i10(i10 %line_buffer_delays_2_rp_V_read)
  %line_buffer_delays_1_rp_V_rea = call i10 @_ssdm_op_Read.ap_auto.i10(i10 %line_buffer_delays_1_rp_V_read)
  %line_buffer_delays_0_rp_V_rea = call i10 @_ssdm_op_Read.ap_auto.i10(i10 %line_buffer_delays_0_rp_V_read)
  %line_buffer_delays_2_wp_V_rea = call i10 @_ssdm_op_Read.ap_auto.i10(i10 %line_buffer_delays_2_wp_V_read)
  %line_buffer_delays_1_wp_V_rea = call i10 @_ssdm_op_Read.ap_auto.i10(i10 %line_buffer_delays_1_wp_V_read)
  %line_buffer_delays_0_wp_V_rea = call i10 @_ssdm_op_Read.ap_auto.i10(i10 %line_buffer_delays_0_wp_V_read)
  call void (...)* @_ssdm_op_SpecInterface(i8 %in_V, [7 x i8]* @p_str2071, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2072, [1 x i8]* @p_str2072, [1 x i8]* @p_str2072, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2072) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [7 x i8]* @p_str2071, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2072, [1 x i8]* @p_str2072, [1 x i8]* @p_str2072, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2072)
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str2073, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2072, [1 x i8]* @p_str2072, [1 x i8]* @p_str2072, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2072) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2072) nounwind
  %line_buffer_delay_outs_V_addr = getelementptr [3 x i8]* %line_buffer_delay_outs_V, i64 0, i64 0
  %line_buffer_delay_outs_V_load = load i8* %line_buffer_delay_outs_V_addr, align 1
  %line_buffer_delay_outs_V_addr_1 = getelementptr [3 x i8]* %line_buffer_delay_outs_V, i64 0, i64 1
  %line_buffer_delay_outs_V_load_1 = load i8* %line_buffer_delay_outs_V_addr_1, align 1
  %line_buffer_delay_outs_V_addr_2 = getelementptr [3 x i8]* %line_buffer_delay_outs_V, i64 0, i64 2
  %line_buffer_delay_outs_V_load_2 = load i8* %line_buffer_delay_outs_V_addr_2, align 1
  %out_data_V_write_assign = call i24 @_ssdm_op_BitConcatenate.i24.i8.i8.i8(i8 %line_buffer_delay_outs_V_load_2, i8 %line_buffer_delay_outs_V_load_1, i8 %line_buffer_delay_outs_V_load)
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str2075)
  %tmp_s = call fastcc { i8, i10, i10 } @dog_func.1(i10 %line_buffer_delays_2_wp_V_rea, i10 %line_buffer_delays_2_rp_V_rea, [3072 x i8]* %line_buffer_delays_buffer_V, i3 2, i8 %line_buffer_delay_outs_V_load_1)
  %call_ret5 = extractvalue { i8, i10, i10 } %tmp_s, 0
  %line_buffer_delays_2_wp_V_wri = extractvalue { i8, i10, i10 } %tmp_s, 1
  %line_buffer_delays_2_rp_V_wri = extractvalue { i8, i10, i10 } %tmp_s, 2
  store i8 %call_ret5, i8* %line_buffer_delay_outs_V_addr_2, align 1
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str2075, i32 %tmp_1)
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str2075)
  %line_buffer_delay_outs_V_load_3 = load i8* %line_buffer_delay_outs_V_addr, align 1
  %tmp_2 = call fastcc { i8, i10, i10 } @dog_func.1(i10 %line_buffer_delays_1_wp_V_rea, i10 %line_buffer_delays_1_rp_V_rea, [3072 x i8]* %line_buffer_delays_buffer_V, i3 1, i8 %line_buffer_delay_outs_V_load_3)
  %call_ret5_1 = extractvalue { i8, i10, i10 } %tmp_2, 0
  %line_buffer_delays_1_wp_V_wri = extractvalue { i8, i10, i10 } %tmp_2, 1
  %line_buffer_delays_1_rp_V_wri = extractvalue { i8, i10, i10 } %tmp_2, 2
  store i8 %call_ret5_1, i8* %line_buffer_delay_outs_V_addr_1, align 1
  %empty_3 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str2075, i32 %tmp_3)
  %tmp_4 = call fastcc { i8, i10, i10 } @dog_func.1(i10 %line_buffer_delays_0_wp_V_rea, i10 %line_buffer_delays_0_rp_V_rea, [3072 x i8]* %line_buffer_delays_buffer_V, i3 0, i8 %in_V_read)
  %call_ret = extractvalue { i8, i10, i10 } %tmp_4, 0
  %line_buffer_delays_0_wp_V_wri = extractvalue { i8, i10, i10 } %tmp_4, 1
  %line_buffer_delays_0_rp_V_wri = extractvalue { i8, i10, i10 } %tmp_4, 2
  store i8 %call_ret, i8* %line_buffer_delay_outs_V_addr, align 1
  %mrv = insertvalue { i10, i10, i10, i10, i10, i10, i24 } undef, i10 %line_buffer_delays_0_wp_V_wri, 0
  %mrv_s = insertvalue { i10, i10, i10, i10, i10, i10, i24 } %mrv, i10 %line_buffer_delays_1_wp_V_wri, 1
  %mrv_1 = insertvalue { i10, i10, i10, i10, i10, i10, i24 } %mrv_s, i10 %line_buffer_delays_2_wp_V_wri, 2
  %mrv_2 = insertvalue { i10, i10, i10, i10, i10, i10, i24 } %mrv_1, i10 %line_buffer_delays_0_rp_V_wri, 3
  %mrv_3 = insertvalue { i10, i10, i10, i10, i10, i10, i24 } %mrv_2, i10 %line_buffer_delays_1_rp_V_wri, 4
  %mrv_4 = insertvalue { i10, i10, i10, i10, i10, i10, i24 } %mrv_3, i10 %line_buffer_delays_2_rp_V_wri, 5
  %mrv_6 = insertvalue { i10, i10, i10, i10, i10, i10, i24 } %mrv_4, i24 %out_data_V_write_assign, 6
  ret { i10, i10, i10, i10, i10, i10, i24 } %mrv_6
}

define void @dog(i8 %in_V, i24* %out_data_V) {
  %line_delays_rp_V = alloca i10
  %line_delays_rp_V_1 = alloca i10
  %line_delays_rp_V_2 = alloca i10
  %line_delays_wp_V = alloca i10
  %line_delays_wp_V_1 = alloca i10
  %line_delays_wp_V_2 = alloca i10
  call void (...)* @_ssdm_op_SpecBitsMap(i24* %out_data_V), !map !85
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %in_V), !map !101
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @dog_str) nounwind
  %in_V_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %in_V)
  %line_delays_buffer_V = alloca [3072 x i8], align 1
  %line_delay_outs_V = alloca [3 x i8], align 1
  call void (...)* @_ssdm_op_SpecMemCore([3072 x i8]* %line_delays_buffer_V, [1 x i8]* @p_str2072, [12 x i8]* @p_str2074, [1 x i8]* @p_str2072, i32 -1, [1 x i8]* @p_str2072, [1 x i8]* @p_str2072, [1 x i8]* @p_str2072, [1 x i8]* @p_str2072, [1 x i8]* @p_str2072)
  br label %arrayctor.loop.i.i

arrayctor.loop.i.i:                               ; preds = %arrayctor.loop.i.i5_ifconv, %0
  %tmp = phi i2 [ 0, %0 ], [ %tmp_9, %arrayctor.loop.i.i5_ifconv ]
  %tmp_9 = add i2 %tmp, 1
  switch i2 %tmp, label %branch2 [
    i2 0, label %arrayctor.loop.i.i5_ifconv.pre
    i2 1, label %branch1
  ]

arrayctor.loop.i.i5_ifconv.pre:                   ; preds = %arrayctor.loop.i.i
  store i10 0, i10* %line_delays_wp_V
  br label %arrayctor.loop.i.i5_ifconv

arrayctor.loop.i.i5_ifconv:                       ; preds = %arrayctor.loop.i.i5_ifconv.pre, %branch2, %branch1
  %line_delays_rp_V_load = load i10* %line_delays_rp_V
  %line_delays_rp_V_1_load = load i10* %line_delays_rp_V_1
  %line_delays_rp_V_2_load = load i10* %line_delays_rp_V_2
  %line_delays_wp_V_load = load i10* %line_delays_wp_V
  %line_delays_wp_V_1_load = load i10* %line_delays_wp_V_1
  %line_delays_wp_V_2_load = load i10* %line_delays_wp_V_2
  %sel_tmp = icmp eq i2 %tmp, 1
  %sel_tmp1 = select i1 %sel_tmp, i10 %line_delays_rp_V_2_load, i10 -8
  %sel_tmp2 = icmp eq i2 %tmp, 0
  %line_delays_rp_V_2_1 = select i1 %sel_tmp2, i10 %line_delays_rp_V_2_load, i10 %sel_tmp1
  %sel_tmp5 = select i1 %sel_tmp, i10 -8, i10 %line_delays_rp_V_1_load
  %line_delays_rp_V_1_1 = select i1 %sel_tmp2, i10 %line_delays_rp_V_1_load, i10 %sel_tmp5
  %line_delays_rp_V_0_1 = select i1 %sel_tmp2, i10 -8, i10 %line_delays_rp_V_load
  %tmp_1 = icmp eq i2 %tmp, -2
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3)
  store i10 %line_delays_rp_V_2_1, i10* %line_delays_rp_V_2
  store i10 %line_delays_rp_V_1_1, i10* %line_delays_rp_V_1
  store i10 %line_delays_rp_V_0_1, i10* %line_delays_rp_V
  br i1 %tmp_1, label %line_buffer.exit.preheader, label %arrayctor.loop.i.i

line_buffer.exit.preheader:                       ; preds = %arrayctor.loop.i.i5_ifconv
  %line_delays_0_wp_V_1 = alloca i10
  %line_delays_1_wp_V_1 = alloca i10
  %line_delays_2_wp_V_1 = alloca i10
  %line_delays_0_rp_V_1 = alloca i10
  %line_delays_1_rp_V_1 = alloca i10
  %line_delays_2_rp_V_1 = alloca i10
  store i10 %line_delays_rp_V_2_1, i10* %line_delays_2_rp_V_1
  store i10 %line_delays_rp_V_1_1, i10* %line_delays_1_rp_V_1
  store i10 %line_delays_rp_V_0_1, i10* %line_delays_0_rp_V_1
  store i10 %line_delays_wp_V_2_load, i10* %line_delays_2_wp_V_1
  store i10 %line_delays_wp_V_1_load, i10* %line_delays_1_wp_V_1
  store i10 %line_delays_wp_V_load, i10* %line_delays_0_wp_V_1
  br label %line_buffer.exit

line_buffer.exit:                                 ; preds = %.preheader, %line_buffer.exit.preheader
  %p_s = phi i4 [ 0, %line_buffer.exit.preheader ], [ %i_V, %.preheader ]
  %exitcond1 = icmp eq i4 %p_s, -7
  %empty_4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 9, i64 9, i64 9)
  %i_V = add i4 %p_s, 1
  br i1 %exitcond1, label %2, label %.preheader

.preheader:                                       ; preds = %line_buffer.exit, %1
  %p_1 = phi i4 [ %j_V, %1 ], [ 0, %line_buffer.exit ]
  %exitcond = icmp eq i4 %p_1, -8
  %empty_5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  %j_V = add i4 %p_1, 1
  br i1 %exitcond, label %line_buffer.exit, label %1

; <label>:1                                       ; preds = %.preheader
  %line_delays_0_wp_V_1_load = load i10* %line_delays_0_wp_V_1
  %line_delays_1_wp_V_1_load = load i10* %line_delays_1_wp_V_1
  %line_delays_2_wp_V_1_load = load i10* %line_delays_2_wp_V_1
  %line_delays_0_rp_V_1_load = load i10* %line_delays_0_rp_V_1
  %line_delays_1_rp_V_1_load = load i10* %line_delays_1_rp_V_1
  %line_delays_2_rp_V_1_load = load i10* %line_delays_2_rp_V_1
  %call_ret1 = call fastcc { i10, i10, i10, i10, i10, i10, i24 } @dog_func(i10 %line_delays_0_wp_V_1_load, i10 %line_delays_1_wp_V_1_load, i10 %line_delays_2_wp_V_1_load, i10 %line_delays_0_rp_V_1_load, i10 %line_delays_1_rp_V_1_load, i10 %line_delays_2_rp_V_1_load, [3072 x i8]* %line_delays_buffer_V, [3 x i8]* %line_delay_outs_V, i8 %in_V_read)
  %line_delays_2_rp_V = extractvalue { i10, i10, i10, i10, i10, i10, i24 } %call_ret1, 5
  %line_delays_1_rp_V = extractvalue { i10, i10, i10, i10, i10, i10, i24 } %call_ret1, 4
  %line_delays_0_rp_V = extractvalue { i10, i10, i10, i10, i10, i10, i24 } %call_ret1, 3
  %line_delays_2_wp_V = extractvalue { i10, i10, i10, i10, i10, i10, i24 } %call_ret1, 2
  %line_delays_1_wp_V = extractvalue { i10, i10, i10, i10, i10, i10, i24 } %call_ret1, 1
  %line_delays_0_wp_V = extractvalue { i10, i10, i10, i10, i10, i10, i24 } %call_ret1, 0
  %out_data_V_ret = extractvalue { i10, i10, i10, i10, i10, i10, i24 } %call_ret1, 6
  call void @_ssdm_op_Write.ap_auto.i24P(i24* %out_data_V, i24 %out_data_V_ret)
  store i10 %line_delays_2_rp_V, i10* %line_delays_2_rp_V_1
  store i10 %line_delays_1_rp_V, i10* %line_delays_1_rp_V_1
  store i10 %line_delays_0_rp_V, i10* %line_delays_0_rp_V_1
  store i10 %line_delays_2_wp_V, i10* %line_delays_2_wp_V_1
  store i10 %line_delays_1_wp_V, i10* %line_delays_1_wp_V_1
  store i10 %line_delays_0_wp_V, i10* %line_delays_0_wp_V_1
  br label %.preheader

; <label>:2                                       ; preds = %line_buffer.exit
  ret void

branch1:                                          ; preds = %arrayctor.loop.i.i
  store i10 0, i10* %line_delays_wp_V_1
  br label %arrayctor.loop.i.i5_ifconv

branch2:                                          ; preds = %arrayctor.loop.i.i
  store i10 0, i10* %line_delays_wp_V_2
  br label %arrayctor.loop.i.i5_ifconv
}

define weak void @_ssdm_op_Write.ap_auto.i24P(i24*, i24) {
entry:
  store i24 %1, i24* %0
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

define weak void @_ssdm_op_SpecMemCore(...) {
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

define weak i8 @_ssdm_op_Read.ap_vld.i8(i8) {
entry:
  ret i8 %0
}

define weak i8 @_ssdm_op_Read.ap_auto.i8(i8) {
entry:
  ret i8 %0
}

define weak i3 @_ssdm_op_Read.ap_auto.i3(i3) {
entry:
  ret i3 %0
}

define weak i10 @_ssdm_op_Read.ap_auto.i10(i10) {
entry:
  ret i10 %0
}

define weak i24 @_ssdm_op_BitConcatenate.i24.i8.i8.i8(i8, i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %1 to i16
  %empty_6 = zext i8 %2 to i16
  %empty_7 = shl i16 %empty, 8
  %empty_8 = or i16 %empty_7, %empty_6
  %empty_9 = zext i8 %0 to i24
  %empty_10 = zext i16 %empty_8 to i24
  %empty_11 = shl i24 %empty_9, 16
  %empty_12 = or i24 %empty_11, %empty_10
  ret i24 %empty_12
}

define weak i13 @_ssdm_op_BitConcatenate.i13.i3.i10(i3, i10) nounwind readnone {
entry:
  %empty = zext i3 %0 to i13
  %empty_13 = zext i10 %1 to i13
  %empty_14 = shl i13 %empty, 10
  %empty_15 = or i13 %empty_14, %empty_13
  ret i13 %empty_15
}

declare void @_ssdm_SpecDependence(...) nounwind

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

!opencl.kernels = !{!0, !7, !13, !13, !16, !22, !22, !0, !24, !27, !22, !22, !0, !30, !32, !34, !34, !0, !0, !16, !24, !0, !34, !34, !0, !0, !36, !0, !0, !38, !38, !0, !0, !40, !40, !40, !0, !40, !40, !40, !45, !45, !48, !0, !50, !0, !0, !0, !52, !52, !54, !54, !55, !0, !0, !0, !57, !60, !0, !0, !0, !62, !62, !63, !63, !65, !0, !0, !0, !0, !0, !0, !67, !0, !0, !0, !0, !45, !45, !48, !67, !0, !45, !45, !48, !67, !0, !69, !69, !69, !0, !69, !69, !69, !0, !69, !69, !69, !0, !69, !69, !69, !69, !69, !69, !69, !69, !69, !0, !69, !69, !69, !0, !69, !69, !69, !0, !69, !69, !69, !0, !69, !69, !69, !0, !69, !69, !69, !69, !69, !69, !40, !40, !40, !0, !69, !69, !69, !0, !69, !69, !69, !0, !69, !69, !69, !0, !40, !40, !40, !0, !40, !40, !40, !74, !0, !0, !0, !0, !0, !0, !0, !0, !76, !0, !0}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!78}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space"}
!2 = metadata !{metadata !"kernel_arg_access_qual"}
!3 = metadata !{metadata !"kernel_arg_type"}
!4 = metadata !{metadata !"kernel_arg_type_qual"}
!5 = metadata !{metadata !"kernel_arg_name"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<8>", metadata !"ap_uint<8>*"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"in", metadata !"out"}
!13 = metadata !{null, metadata !14, metadata !9, metadata !15, metadata !11, metadata !12, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!15 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<8>", metadata !"struct line_out &"}
!16 = metadata !{null, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !6}
!17 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!18 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!19 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!20 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!21 = metadata !{metadata !"kernel_arg_name", metadata !""}
!22 = metadata !{null, metadata !17, metadata !18, metadata !19, metadata !20, metadata !23, metadata !6}
!23 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!24 = metadata !{null, metadata !17, metadata !18, metadata !25, metadata !20, metadata !26, metadata !6}
!25 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &"}
!26 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!27 = metadata !{null, metadata !14, metadata !9, metadata !28, metadata !11, metadata !29, metadata !6}
!28 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<12, false> &", metadata !"int"}
!29 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!30 = metadata !{null, metadata !17, metadata !18, metadata !31, metadata !20, metadata !26, metadata !6}
!31 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!32 = metadata !{null, metadata !17, metadata !18, metadata !33, metadata !20, metadata !26, metadata !6}
!33 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<12> &"}
!34 = metadata !{null, metadata !17, metadata !18, metadata !19, metadata !20, metadata !35, metadata !6}
!35 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!36 = metadata !{null, metadata !17, metadata !18, metadata !37, metadata !20, metadata !26, metadata !6}
!37 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<10> &"}
!38 = metadata !{null, metadata !17, metadata !18, metadata !39, metadata !20, metadata !23, metadata !6}
!39 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<72> &"}
!40 = metadata !{null, metadata !41, metadata !9, metadata !42, metadata !43, metadata !44, metadata !6}
!41 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0}
!42 = metadata !{metadata !"kernel_arg_type", metadata !"char*", metadata !"signed char"}
!43 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const", metadata !""}
!44 = metadata !{metadata !"kernel_arg_name", metadata !"str", metadata !"radix"}
!45 = metadata !{null, metadata !17, metadata !18, metadata !46, metadata !20, metadata !47, metadata !6}
!46 = metadata !{metadata !"kernel_arg_type", metadata !"double"}
!47 = metadata !{metadata !"kernel_arg_name", metadata !"v"}
!48 = metadata !{null, metadata !17, metadata !18, metadata !46, metadata !20, metadata !49, metadata !6}
!49 = metadata !{metadata !"kernel_arg_name", metadata !"d"}
!50 = metadata !{null, metadata !14, metadata !9, metadata !51, metadata !11, metadata !29, metadata !6}
!51 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"const ap_int_base<54, true> &"}
!52 = metadata !{null, metadata !17, metadata !18, metadata !53, metadata !20, metadata !23, metadata !6}
!53 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<54, true> &"}
!54 = metadata !{null, metadata !17, metadata !18, metadata !25, metadata !20, metadata !23, metadata !6}
!55 = metadata !{null, metadata !17, metadata !18, metadata !56, metadata !20, metadata !26, metadata !6}
!56 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, true> &"}
!57 = metadata !{null, metadata !14, metadata !9, metadata !58, metadata !11, metadata !59, metadata !6}
!58 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &", metadata !"int"}
!59 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!60 = metadata !{null, metadata !14, metadata !9, metadata !61, metadata !11, metadata !29, metadata !6}
!61 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &", metadata !"const ap_int_base<32, true> &"}
!62 = metadata !{null, metadata !17, metadata !18, metadata !31, metadata !20, metadata !23, metadata !6}
!63 = metadata !{null, metadata !17, metadata !18, metadata !64, metadata !20, metadata !23, metadata !6}
!64 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &"}
!65 = metadata !{null, metadata !17, metadata !18, metadata !66, metadata !20, metadata !26, metadata !6}
!66 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &"}
!67 = metadata !{null, metadata !17, metadata !18, metadata !46, metadata !20, metadata !68, metadata !6}
!68 = metadata !{metadata !"kernel_arg_name", metadata !"pf"}
!69 = metadata !{null, metadata !70, metadata !18, metadata !71, metadata !72, metadata !73, metadata !6}
!70 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!71 = metadata !{metadata !"kernel_arg_type", metadata !"char*"}
!72 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const"}
!73 = metadata !{metadata !"kernel_arg_name", metadata !"str"}
!74 = metadata !{null, metadata !17, metadata !18, metadata !75, metadata !20, metadata !26, metadata !6}
!75 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<8> &"}
!76 = metadata !{null, metadata !17, metadata !18, metadata !77, metadata !20, metadata !21, metadata !6}
!77 = metadata !{metadata !"kernel_arg_type", metadata !"const struct line_out &"}
!78 = metadata !{metadata !79, [1 x i32]* @llvm_global_ctors_0}
!79 = metadata !{metadata !80}
!80 = metadata !{i32 0, i32 31, metadata !81}
!81 = metadata !{metadata !82}
!82 = metadata !{metadata !"llvm.global_ctors.0", metadata !83, metadata !"", i32 0, i32 31}
!83 = metadata !{metadata !84}
!84 = metadata !{i32 0, i32 0, i32 1}
!85 = metadata !{metadata !86, metadata !91, metadata !96}
!86 = metadata !{i32 0, i32 7, metadata !87}
!87 = metadata !{metadata !88}
!88 = metadata !{metadata !"out.data.V", metadata !89, metadata !"uint8", i32 0, i32 7}
!89 = metadata !{metadata !90}
!90 = metadata !{i32 0, i32 0, i32 2}
!91 = metadata !{i32 8, i32 15, metadata !92}
!92 = metadata !{metadata !93}
!93 = metadata !{metadata !"out.data.V", metadata !94, metadata !"uint8", i32 0, i32 7}
!94 = metadata !{metadata !95}
!95 = metadata !{i32 1, i32 1, i32 2}
!96 = metadata !{i32 16, i32 23, metadata !97}
!97 = metadata !{metadata !98}
!98 = metadata !{metadata !"out.data.V", metadata !99, metadata !"uint8", i32 0, i32 7}
!99 = metadata !{metadata !100}
!100 = metadata !{i32 2, i32 2, i32 2}
!101 = metadata !{metadata !102}
!102 = metadata !{i32 0, i32 7, metadata !103}
!103 = metadata !{metadata !104}
!104 = metadata !{metadata !"in.V", metadata !105, metadata !"uint8", i32 0, i32 7}
!105 = metadata !{metadata !106}
!106 = metadata !{i32 0, i32 0, i32 0}
