
#include  "hls_video.h"
#include <ap_fixed.h>
#define IMAGE_WIDTH  8
#define IMAGE_HEIGHT 8
#define KERNEL_SIZE 3
#define PIXEL_SIZE 8
#define NUM_GFILTERS 2

//typedef hls::Mat<IMAGE_HEIGHT,   IMAGE_WIDTH,   HLS_8UC1> GRAY_IMAGE;


//////
typedef hls::stream<ap_axiu<PIXEL_SIZE,1,1,1> >           IMAGE_STREAM;
typedef hls::stream<ap_axiu<PIXEL_SIZE*KERNEL_SIZE,1,1,1> >           LINEOUT_STREAM;
//typedef hls::stream<ap_axiu<PIXEL_SIZE*KERNEL_SIZE,1,1,1> >           LINEBUFOUT_STREAM;;
//////



//void image_filter(AXI_STREAM& INPUT_STREAM, AXI_STREAM& OUTPUT_STREAM);


//void dog (hls::stream<ap_axiu<PIXEL_SIZE,1,1,1> >  &in, hls::stream<ap_axiu<PIXEL_SIZE*KERNEL_SIZE,1,1,1> >  &out);
//typedef ap_fixed<18, 8/*, AP_RND, AP_SAT*/> dog_out_type;
//void gradient(dog_out_type L1, dog_out_type L2,  dog_out_type L3, dog_out_type L4, dog_out_type *m, dog_out_type *theta);



struct line_out{
	ap_uint<8> data[KERNEL_SIZE];
};
class delay {
	ap_uint<10> wp;
	ap_uint<10> rp;
	ap_uint<8> buffer[1024];
public :
	delay();
	void func(ap_uint<8>  in, ap_uint<8> *out);

};

class line_buffer{
//	delay delays[KERNEL_SIZE];
	ap_uint<8>
	ap_uint<8> delay_outs[KERNEL_SIZE];
public:
	void func(ap_uint<8>  in,line_out &out);
};
void dog(ap_uint<8>  in, line_out& out);

