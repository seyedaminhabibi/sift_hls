#include "dog.h"
#include <iostream>
#include <hls_dsp.h>
#include "coeff.h"
using namespace std;
//void my_mac(ap_fixed<17,8> a, ap_fixed<17,0> b, ap_fixed<17,8> c, ap_int<48> acc_in, ap_fixed<17,8, AP_RND> &out, ap_uint<1> zeroize){
//#pragma HLS INTERFACE ap_ctrl_none port=return
//#pragma HLS PIPELINE II=1
////#pragma HLS latency max=3 min=3
//	static ap_int<48> acc;
//	if(zeroize)
//		acc = acc_in + ((ap_int<17>)a + (ap_int<17>)b) * (ap_int<17>)c;
//	else
//		acc = 0;
//	out = acc;
//}

//void my_mac(ap_int<17> a, ap_int<17> b, ap_int<17> c, ap_int<17> out, ap_uint<1> rstP){
//#pragma HLS INTERFACE ap_ctrl_none port=return
//#pragma HLS PIPELINE II=1
////#pragma HLS latency max=3 min=3
//	static ap_int<48> acc;
//	static ap_int<17> a_reg, b_reg;
//	if(rstP){
//		acc = 0;
//		a_reg
//	}
//	else{
//		acc += (a + b) * c;
//	}
//	out = acc;
//}





//void my_mac(line_out a, dog_in &out){
//#pragma HLS INTERFACE ap_ctrl_none port=return
//#pragma HLS PIPELINE II=10
//#pragma HLS data_pack variable=a
//
////#pragma HLS INTERFACE ap_none port=a
////#pragma HLS INTERFACE ap_none port=b
////#pragma HLS INTERFACE ap_none port=c
////#pragma HLS INTERFACE ap_none port=out
////#pragma HLS latency max=3 min=3
//	ap_uint<3> k=0;
//	ap_int<48> p = 0;
//	for(k=0; k<7; k++){
//		p += (a.data[k] + a.data[14-k]) * coeff[k];
//	}
//	p += (a.data[k]) * coeff[k];
//	out = p;
//}

void dog (hls::stream<dog_in>  &in, hls::stream<line_out>  &out){
#pragma HLS INTERFACE axis port=in
#pragma HLS INTERFACE axis port=out
#pragma HLS data_pack variable=out
	dog_in buffer[KERNEL_SIZE][NEXT_POW2_IMAGEWIDTH];
#pragma HLS ARRAY_PARTITION variable buffer block factor=15  dim=1 partition
	ap_uint<NEXT_POW2_IMAGEWIDTH_BIT> wp, rp;
	ap_uint<NEXT_POW2_IMAGEWIDTH_BIT> i=0, j=0;
	ap_uint<4> k=0;
	dog_in tmp;
	line_out line_o;
	ap_ufixed<17, 8, AP_RND>  row_res,col_res;
	line_out col_outs;

	wp = 0;
	rp = wp - (IMAGE_WIDTH);
	for(i=0;i<IMAGE_HEIGHT + ((KERNEL_SIZE - 1) / 2);i++)
	{
		for(j=0;j<IMAGE_WIDTH;j++)
		{
//			cout << i << " , " << j << endl;
#pragma HLS PIPELINE II=10
			////////////////////////////////////////////////////////////////////////////////////////////////////
			if(i < IMAGE_HEIGHT)
				in >> tmp;
			/////////////////////////////////////////////////////////////////////////////////////////////////////
			buffer[0][wp] = tmp;
			line_o.data[0] = buffer[0][rp];
			for(k=1;k<KERNEL_SIZE;k++)
			{
#pragma HLS UNROLL
#pragma AP dependence variable=buffer intra false
#pragma AP dependence variable=buffer inter false
				buffer[k][wp] = buffer[k-1][rp];
				line_o.data[k] = buffer[k][rp];
			}
			wp++;
			rp++;
			//////////////////////////////////////////////////////////////////////////////////////////////////
//			if(i> KERNEL_SIZE -1)
			if(i== KERNEL_SIZE)
			{
				cout << line_o.data[0] << " " << line_o.data[1] << " " << line_o.data[2] << endl;
//				//coloumn filter
				ap_ufixed<48, 9> p1 = 0;
				for(k=0; k < ((KERNEL_SIZE - 1)/2); k++){
					p1 += (line_o.data[k] + line_o.data[KERNEL_SIZE - 1 - k]) * coeff[k];
//					cout << "p1 = " << p1 << " op1 = " << line_o.data[k] << " op2 = " << line_o.data[KERNEL_SIZE - 1 - k];
//					cout << " op3 = " << coeff[k] << endl;
				}
				p1 += ((ap_uint<17>)line_o.data[k]) * (ap_uint<17>)coeff[k];
				for(k = KERNEL_SIZE-1; k > 0; k--)
					col_outs.data[k] = col_outs.data[k-1];
				col_res = p1;
				col_outs.data[0] = col_res;
//				cout << col_outs.data[0] << endl;
//				cout << col_outs.data[0] << " " << col_outs.data[1] << " " << col_outs.data[2] << endl;
				// row filter
				ap_ufixed<48, 9> p2 = 0;
				for(k=0; k < ((KERNEL_SIZE - 1)/2); k++){
					p2 += (col_outs.data[k] + col_outs.data[KERNEL_SIZE - 1 - k]) * coeff[k];
				}
				p2 += (col_outs.data[k]) * coeff[k];
				row_res = p2;
//				cout << row_res << endl;
			}
			//////////////////////////////////////////////////////////////////////////////////////////////////
		}
	}
}

