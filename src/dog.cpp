#include "dog.h"
#include <iostream>
#include <hls_dsp.h>
#include "coeff.h"
#include <fstream>
using namespace std;


ofstream myfile;
void print_line(line_out in){
	for(int i=0; i<KERNEL_SIZE; i++){
		myfile << " " << hex << in.data[i].V << " ";
	}
	myfile << endl;
}
void print_window(window_st in){
	cout << in.data[2][2] << "," << in.data[2][1] << "," << in.data[2][0] << endl;
	cout << in.data[1][2] << "," << in.data[1][1] << "," << in.data[1][0] << endl;
	cout << in.data[0][2] << "," << in.data[0][1] << "," << in.data[0][0] << endl;
}
static void inline my_mac2(line_out in, dog_in &out, coeffs_st coeffs){
#pragma HLS INTERFACE ap_ctrl_none port=return
#pragma HLS PIPELINE II=10
#pragma HLS data_pack variable=in
#pragma HLS data_pack variable=coeffs
#pragma HLS allocation instances=mul limit=1 operation

//	print_line(in);
	cout << "mac2" << endl;
	ap_uint<4> k=0;
	ap_ufixed<40, 14> p = 0;
	for(k=0; k <= ((KERNEL_SIZE - 1)/2); k++){
		if(k == (KERNEL_SIZE - 1)/2)
			p += (in.data[k] + 0) * coeffs.data[k];
		else
			p += (in.data[k] + in.data[KERNEL_SIZE - 1 - k]) * coeffs.data[k];
	}
//	cout << hex << p << endl;
	out = p;
//	cout << out << endl;
}




void my_mac(line_out in, dog_in &out, coeffs_st coeffs){
#pragma HLS INTERFACE ap_ctrl_none port=return
#pragma HLS PIPELINE II=10
#pragma HLS data_pack variable=in
#pragma HLS data_pack variable=coeffs
#pragma HLS allocation instances=mul limit=1 operation

//#pragma HLS INTERFACE ap_none port=a
//#pragma HLS INTERFACE ap_none port=b
//#pragma HLS INTERFACE ap_none port=c
//#pragma HLS INTERFACE ap_none port=out
//#pragma HLS latency max=3 min=3

	ap_uint<47> p = 0;
	ap_uint<18> a,b,c;
	ap_uint<4> k=0;
	ap_uint<18> col_res;
	for(k=0; k <= ((KERNEL_SIZE - 1)/2); k++){
		a = in.data[k].V;
		if(k == (KERNEL_SIZE - 1)/2)
			 b = 0;
		else
			b = in.data[KERNEL_SIZE - 1 - k].V;
		c = coeffs.data[k].V;
//		cout << hex << a << " " << b << " " << c << endl;
		p += (a + b) * c;
//		cout << " p = " << p << endl;
	}
//	cout << hex << p << endl;
	col_res = p.range(16,16)? p.range(34,17) + 1 : p.range(34,17);
//	cout << hex << col_res << endl;
	out.V = col_res;
//	cout << out << endl;
}

void dog (hls::stream<dog_in>  &in, hls::stream<dog_out_st>  &out){
#pragma HLS INTERFACE axis port=in
#pragma HLS INTERFACE axis port=out
#pragma HLS data_pack variable=out
	static dog_in buffer[KERNEL_SIZE][NEXT_POW2_IMAGEWIDTH] = {0};
#pragma HLS ARRAY_PARTITION variable buffer block factor=15  dim=1 partition
	static coeff_type coeff[NUM_GFILTERS][KERNEL_SIZE] = {1.73963049200329e-05,	0.000220372726189638,	0.00188891491238175,	0.0109552089217401,	0.0429915052464070,	0.114155898373357,	0.205101000621768,	0.249339405786472,	0.205101000621768,	0.114155898373357,	0.0429915052464070,	0.0109552089217401,	0.00188891491238175,	0.000220372726189638,	1.73963049200234e-05,
			0.000476644685482609,	0.00235967803891504,	0.00913356419160075,	0.0276412296540795,	0.0654039491580573,	0.120998538433745,	0.175019248893223,	0.197934293889794,	0.175019248893223,	0.120998538433745,	0.0654039491580573,	0.0276412296540795,	0.00913356419160075,	0.00235967803891504,	0.000476644685482486,
			0.00353140748402664,	0.00967286103715680,	0.0226901774625456,	0.0455823451074818,	0.0784207994901624,	0.115542482564184,	0.145790072544890,	0.157539708619105,	0.145790072544890,	0.115542482564184,	0.0784207994901624,	0.0455823451074818,	0.0226901774625456,	0.00967286103715680,	0.00353140748402664,
			0.0116100307509314,	0.0219032509139538,	0.0374776383469851,	0.0581599846539086,	0.0818586880649393,	0.104494565928162,	0.120979298522075,	0.127033085638091,	0.120979298522075,	0.104494565928162,	0.0818586880649393,	0.0581599846539086,	0.0374776383469851,	0.0219032509139538,	0.0116100307509315,
			0.0233730273607023,	0.0348641809017102,	0.0489019694538865,	0.0644993916590879,	0.0799958158087624,	0.0932956317354588,	0.102314628719837,	0.105510708721110,	0.102314628719837,	0.0932956317354588,	0.0799958158087624,	0.0644993916590879,	0.0489019694538865,	0.0348641809017102,	0.0233730273607023,
			0.0353019993355434,	0.0454151843399230,	0.0562045943006261,	0.0669131554238112,	0.0766337645917983,	0.0844301902378273,	0.0894837822207258,	0.0912346590994900,	0.0894837822207258,	0.0844301902378273,	0.0766337645917983,	0.0669131554238112,	0.0562045943006261,	0.0454151843399230, 0.0353019993355434};
	coeffs_st coeffs[NUM_GFILTERS];


	ap_uint<NEXT_POW2_IMAGEWIDTH_BIT> wp, rp;
	ap_uint<NEXT_POW2_IMAGEWIDTH_BIT> i=0, j=0;
	ap_uint<4> k=0;
	ap_uint<3> g=0;
	dog_in tmp;
	dog_out_st out_tmp;
	line_out line_o;
	dog_in gf_outs[NUM_GFILTERS];

	line_out col_outs[NUM_GFILTERS];
	dog_in row_res[NUM_GFILTERS], col_res[NUM_GFILTERS];


	for(i=0; i<NUM_GFILTERS; i++)
		for(k=0; k<KERNEL_SIZE; k++)
			coeffs[i].data[k] = coeff[i][k];

	myfile.open("/home/amin/sarbazi/hlsprojs/sift_starter/src/result.txt");


	wp = 0;
	rp = wp - (IMAGE_WIDTH);
	for(i=0; i<IMAGE_HEIGHT + 1; i++)
	{
		for(j=0;j<IMAGE_WIDTH;j++)
		{
#pragma HLS PIPELINE II=10
			////////////////////////////////////////////////////////////////////////////////////////////////////
			if(i < IMAGE_HEIGHT)
				in >> tmp;
			/////////////////////////////////////////////////////////////////////////////////////////////////////
			buffer[0][wp] = tmp;
			line_o.data[0] = buffer[0][rp];
			for(k=1; k<KERNEL_SIZE; k++)
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
			for(g=0; g<NUM_GFILTERS; g++){
				//coloumn filter
				my_mac(line_o, col_res[g], coeffs[g]);
				for(k = KERNEL_SIZE-1; k > 0; k--)
					col_outs[g].data[k] = col_outs[g].data[k-1];
				col_outs[g].data[0] = col_res[g];
				//row filter
				my_mac(col_outs[g], row_res[g], coeffs[g]);
				gf_outs[g] = row_res[g];
			}
			for(g=0; g<NUM_GFILTERS-1; g++){
				out_tmp.data[g] = gf_outs[g+1] - gf_outs[g];
			}
			if(i > KERNEL_SIZE -1 && j >= KERNEL_SIZE -1)
			{
//				myfile << hex << out_tmp.data[0].V << endl;
				out << out_tmp;
			}
			//////////////////////////////////////////////////////////////////////////////////////////////////
		}
	}
	myfile.close();
}
void kp_detection(hls::stream<dog_out>  &in, hls::stream<window_st>  &out){
	static dog_out bufffer0;
	static dog_out buffer[2][NEXT_POW2_IMAGEWIDTH];
	static dog_out window[3][3];
	ap_uint<NEXT_POW2_IMAGEWIDTH_BIT> wp, rp;
	ap_uint<NEXT_POW2_IMAGEWIDTH_BIT> i=0, j=0;
	window_st out_tmp;

#pragma HLS ARRAY_PARTITION variable buffer block factor=2  dim=1 partition
#pragma HLS data_pack variable=out

	wp = 0;
	rp = wp - (KP_IMAGE_WIDTH-3);
	for(i=0; i < KP_IMAGE_HEIGHT; i++)
	{
		for(j=0; j < KP_IMAGE_WIDTH; j++)
		{
#pragma HLS PIPELINE II=1
#pragma AP dependence variable=buffer intra false
			in >> bufffer0;
			cout << bufffer0 << endl;

			window[0][0] = window[0][1];
			window[0][1] = window[0][2];
			window[0][2] = buffer[1][rp];
			buffer[1][wp] = window[1][0];

			window[1][0] = window[1][1];
			window[1][1] = window[1][2];
			window[1][2] = buffer[0][rp];
			buffer[0][wp] = window[2][0];

			window[2][0] = window[2][1];
			window[2][1] = window[2][2];
			window[2][2] = bufffer0;

			out_tmp.data[0][0] = window[0][0]; out_tmp.data[1][0] = window[1][0]; out_tmp.data[2][0] = window[2][0];
			out_tmp.data[0][1] = window[0][1]; out_tmp.data[1][1] = window[1][1]; out_tmp.data[2][1] = window[2][1];
			out_tmp.data[0][2] = window[0][2]; out_tmp.data[1][2] = window[1][2]; out_tmp.data[2][2] = window[2][2];

			wp++;
			rp++;
			if(i >= 2 && j >= 2)
			{
//				print_window(out_tmp);
				out << out_tmp;
			}
		}
	}
}
