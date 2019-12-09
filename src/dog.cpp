#include "dog.h"
#include <iostream>
#include <hls_dsp.h>
#include "fxp_sqrt.h"
using namespace std;
//void image_filter(AXI_STREAM& INPUT_STREAM, AXI_STREAM& OUTPUT_STREAM) {


//#pragma HLS INTERFACE axis port=INPUT_STREAM bundle=VIDEO_IN
//#pragma HLS INTERFACE axis  port=OUTPUT_STREAM bundle=VIDEO_OUT
//
//
//
//
//	GRAY_IMAGE  img_0  (IMAGE_HEIGHT, IMAGE_WIDTH);
//	GRAY_IMAGE  img_1  (IMAGE_HEIGHT, IMAGE_WIDTH);
//
//
//	hls::AXIvideo2Mat(INPUT_STREAM, img_0);
//	hls::GaussianBlur<15,15>(img_0,img_1,3,3);
//	hls::Mat2AXIvideo(img_1,OUTPUT_STREAM);
//}
//typedef std::complex< ap_fixed<DATASIZE, BITS_ABOVE_DEC_PT, AP_RND >> in_atan_complex;
//void gradient(dog_out_type L1, dog_out_type L2,  dog_out_type L3, dog_out_type L4, dog_out_type *m, dog_out_type *theta)
//{
//#pragma HLS pipeline II=1
//	dog_out_type op1, op2;
//	ap_ufixed<36,16> m1, m2;
//	ap_ufixed<16,8> sqrt_input;
//	ap_ufixed<16,4> sqrt_output;
//
//
//
////	cout << "L1 = " << L1 << " L2 = " << L2 << " L3 = " << L3 << " L4 = " << L4 << endl;
//	op1 = (L1 - L2);
//	op2 = (L3 - L4);
//	m1 = op1*op1;
//	m2 = op2*op2;
//	sqrt_input = m1 + m2;
//	fxp_sqrt(sqrt_output, sqrt_input);
//
//
////	cout << "m1 = " << m1 << " m2 = " << m2 << endl;
//	*m = sqrt_output;
//	*theta = m2;
//
////	*out1 = a + b;
//
////	ap_fixed<DATASIZE, BITS_ABOVE_DEC_PT,AP_RND> sum_h = 7; //random x
////	ap_fixed<DATASIZE, BITS_ABOVE_DEC_PT,AP_RND> sum_v = -13.5; //random y
////	std::complex< ap_fixed<DATASIZE, BITS_ABOVE_DEC_PT, AP_RND >> in_atan_complex
////	in_atan.real(a);
////	in_atan.imag(b);
////	 hls::atan2_input<DATASIZE>::cartesian x;
////	 x = in_atan_complex;
////	 hls::atan2_output<DATASIZE>::phase output;
////
////	 hls::atan2< hls::CORDIC_FORMAT_RAD, DATASIZE, DATASIZE, hls::CORDIC_ROUND_NEAREST_EVEN> (x, output);
////	 *out1 = output;
//}
//template <int COLS, int DATA_SIZE>
delay::delay(){
		wp = 0;
		rp = -(IMAGE_WIDTH);
	}
void delay::func(ap_uint<8>  in,
			  ap_uint<8> *out){
	#pragma HLS INTERFACE ap_vld port=in
	#pragma HLS INTERFACE ap_vld port=out
	#pragma HLS INTERFACE ap_ctrl_none port=return
	#pragma HLS resource variable=buffer core=RAM_2P_BRAM
	#pragma HLS PIPELINE II=1
	#pragma AP dependence variable=buffer intra false
		buffer[wp] = in;
		*out = buffer[rp];
		wp++;
		rp++;
	}
void line_buffer::func(ap_uint<8>  in,
			line_out& out){
	#pragma HLS INTERFACE ap_vld port=in
	#pragma HLS INTERFACE ap_vld port=out
	#pragma HLS INTERFACE ap_ctrl_none port=return
	#pragma HLS data_pack variable=out
	#pragma HLS pipeline II=1
	line_out tmp;
		int i=0;
		for(i=0;i<KERNEL_SIZE;i++){
			tmp.data[i] = delay_outs[i];
		}
		out = tmp;
		for(i=KERNEL_SIZE-1;i>=1;i--){
#pragma AP dependence variable=delay_outs intra false
#pragma AP dependence variable=delay_outs intra false
	#pragma HLS UNROLL
			delays[i].func(delay_outs[i-1], &delay_outs[i]);
		}
		delays[0].func(in, &delay_outs[0]);
}
void dog(ap_uint<8>  in, line_out& out){

	line_buffer line;
	ap_uint<12> i=0, j=0;
	for(i=0;i<IMAGE_HEIGHT + 1;i++)
		for(j=0;j<IMAGE_WIDTH;j++){
			line.func(in, out);
		}

}
//void dog (hls::stream<ap_axiu<PIXEL_SIZE,1,1,1> >  &in,
//			hls::stream<ap_axiu<8*KERNEL_SIZE,1,1,1> >  &out){
//#pragma HLS INTERFACE axis port=in
//#pragma HLS INTERFACE axis port=out
//	ap_ufixed<17,8> buffer[KERNEL_SIZE][1024];
//	ap_ufixed<17,0> coeff[KERNEL_SIZE] = {0};
//#pragma HLS ARRAY_PARTITION variable buffer block factor=15  dim=1 partition
//	ap_uint<10> wp, rp;
//	ap_uint<12> i=0, j=0;
//	ap_uint<4> k=0;
//	ap_uint<4> g=0;
//	ap_axiu<PIXEL_SIZE,1,1,1> tmp;
//	ap_ufixed<17,8> col_out, row_out;
//
//	for(i=0;i<KERNEL_SIZE;i++)
//		for(j=0;j<16;j++)
//			buffer[i][j] = 0;
//	wp = 0;
//	rp = wp - (IMAGE_WIDTH);
//	for(i=0;i<IMAGE_HEIGHT + 1;i++)
//	{
//		for(j=0;j<IMAGE_WIDTH;j++)
//		{
//#pragma HLS PIPELINE II=1
//
//			if(i < IMAGE_HEIGHT)
//				in >> tmp;
//			////////////////////////////////////////////////////////////////////////////////////////////////
//			buffer[0][wp] = tmp.data;
//			for(k=1;k<KERNEL_SIZE;k++)
//			{
//#pragma HLS UNROLL
//#pragma AP dependence variable=buffer intra false
//#pragma AP dependence variable=buffer inter false
//				buffer[k][wp] = buffer[k-1][rp];
//			}
//			col_out = 0;
//			if(i >= KERNEL_SIZE){
//				for(k=0;k<(KERNEL_SIZE-1)/2;k++)
//					col_out += (buffer[14-k][rp]  + buffer[k][rp] ) * coeff[k];
//
//
//
//
//
////				cout << buffer[0][rp] << " " << buffer[1][rp] << " " << buffer[2][rp] << " " << buffer[3][rp] << " " << buffer[4][rp] << endl;
//
//			}
//			/////////////////////////////////////////////////////////////////////////////////////////////////
//			//gf
//
//			/////////////////////////////////////////////////////////////////////////////////////////////////
//
//			wp++;
//			rp++;
//		}
//	}
//}
//void gaussian(hls::stream<ap_axiu<PIXEL_SIZE*KERNEL_SIZE,1,1,1> >  &in, hls::stream<ap_axiu<PIXEL_SIZE,1,1,1> >  &out)
//{
//	ap_uint<8> data_in[15];
//	ap_uint<PIXEL_SIZE*KERNEL_SIZE> tmp_in;
//	ap_ufixed<17,8> inputs[15];
//	int i=0;
//
//
//	in >> tmp;
//	for(i=0; i<KERNEL_SIZE; i++)
//	{
//		data_in[i] =
//	}
//	inputs[0] =
//	int i=0;
//
//	for(i=0;i<8;i++){
//
//	}
//}

