#ifndef DOG_H
#define DOG_H
#include  "hls_video.h"
#include "hls_stream.h"
#define IMAGE_WIDTH  640
#define IMAGE_HEIGHT 480
#define KERNEL_SIZE 15
#define NEXT_POW2_IMAGEWIDTH 1024
#define NEXT_POW2_IMAGEWIDTH_BIT 10
#define NUM_GFILTERS 6
//
//#define IMAGE_WIDTH  8
//#define IMAGE_HEIGHT 8
//#define KERNEL_SIZE 3
//#define NEXT_POW2_IMAGEWIDTH 16
//#define NEXT_POW2_IMAGEWIDTH_BIT 4
//#define NUM_GFILTERS 2

#define INITIAL_SIGMA 1.6


//#define KP_IMAGE_WIDTH	IMAGE_WIDTH - KERNEL_SIZE + 1
//#define KP_IMAGE_HEIGHT IMAGE_HEIGHT - KERNEL_SIZE + 1
#define KP_IMAGE_WIDTH 8
#define KP_IMAGE_HEIGHT 8







//typedef hls::Mat<IMAGE_HEIGHT,   IMAGE_WIDTH,   HLS_8UC1> GRAY_IMAGE;


//////
//typedef hls::stream<ap_axiu<PIXEL_SIZE,1,1,1> >           IMAGE_STREAM;
//typedef hls::stream<ap_axiu<PIXEL_SIZE*KERNEL_SIZE,1,1,1> >           LINEOUT_STREAM;
//typedef hls::stream<ap_axiu<PIXEL_SIZE*KERNEL_SIZE,1,1,1> >           LINEBUFOUT_STREAM;;
//////



//void image_filter(AXI_STREAM& INPUT_STREAM, AXI_STREAM& OUTPUT_STREAM);


//void dog (hls::stream<ap_axiu<PIXEL_SIZE,1,1,1> >  &in, hls::stream<ap_axiu<PIXEL_SIZE*KERNEL_SIZE,1,1,1> >  &out);
//typedef ap_fixed<18, 8/*, AP_RND, AP_SAT*/> dog_out_type;
//void gradient(dog_out_type L1, dog_out_type L2,  dog_out_type L3, dog_out_type L4, dog_out_type *m, dog_out_type *theta);

typedef ap_ufixed<18, 9, AP_RND> dog_in;
typedef ap_ufixed<18, 1, AP_RND> coeff_type;
typedef ap_fixed<18, 9, AP_RND> dog_out;
struct line_out{
	dog_in data[KERNEL_SIZE];
};
struct coeffs_st{
	coeff_type data[KERNEL_SIZE];

};
struct dog_out_st{
	dog_out data[NUM_GFILTERS-1];
};
struct kp_st{
	ap_uint<3> scale;
	ap_uint<10> x;
	ap_uint<10> y;
};
struct window_st{
	dog_out data[3][3];
};
void dog (hls::stream<dog_in>  &in, hls::stream<dog_out_st>  &out);
void kp_detection(hls::stream<dog_out>  &in, hls::stream<window_st>  &kp);
#endif
