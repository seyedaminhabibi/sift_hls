#include <stdio.h>
#include <iostream>
#include <opencv2/opencv.hpp>
#include <opencv2/core/core.hpp>
#include <hls_opencv.h>
#include "dog.h"
using namespace cv;
using namespace std;


int delay_test(){
	ap_uint<8> delay_out;
	delay dl;
	int i=0, j =0;
	for(i=0;i<IMAGE_HEIGHT; i++)
		for(j=0; j<IMAGE_WIDTH; j++){
			dl.func(i*IMAGE_WIDTH + j + 1, &delay_out);
			cout << " delay out : " << delay_out << endl;
		}
	return 0;
}
int line_test(){
	struct line_out lout;
	line_buffer line;
	int i=0, j =0, k=0;
	for(i=0;i<IMAGE_HEIGHT; i++)
		for(j=0; j<IMAGE_WIDTH; j++){
			line.func(i*IMAGE_WIDTH + j + 1, lout);
			cout << " line out : ";
			for(k=0;k<KERNEL_SIZE;k++){
				cout << lout.data[k] << " ";
			}
			cout << endl;
		}
	return 0;

}
int main(){
//// int row, col;
//    IMAGE_STREAM inputStream;
//    LINEOUT_STREAM outputStream;
//    IplImage* imagesrc, *imagedst;
////    Mat input_image;
////    Mat filter_image;
////    Mat YUV;
////    Mat RGB;
//////    input_image = imread("image0.png", CV_LOAD_IMAGE_COLOR);
//////    cvtColor(input_image, YUV, CV_RGB2YCrCb);
//////    imwrite("D:/PANA_HLS/image_filter/YUV.png", YUV);
//    imagesrc=cvLoadImage("/home/amin/sarbazi/hlsprojs/sift_starter/src/sample1.jpg",CV_LOAD_IMAGE_GRAYSCALE);
//    cout << "width = " << imagesrc->width << " height = " << imagesrc->height << " depth = " << imagesrc->depth << " nchannels = " << imagesrc->nChannels << endl;
//    imagedst = cvCreateImage(cvGetSize(imagesrc), imagesrc->depth, imagesrc->nChannels);
//////    row = imageSrc->height;
//////    col = imageSrc->width;
//    IplImage2AXIvideo(imagesrc, inputStream);
//    line_buffer(inputStream, outputStream);
////    AXIvideo2IplImage(outputStream, imagedst);
////    cvSaveImage( "/home/amin/sarbazi/hlsprojs/sift_starter/src/sample1_result.jpg", imagedst, 0);
//
//
//
//////    gaussian_filter(inputStream, outputStream, row, col);
//////    AXIvideo2IplImage(outputStream, imgdst);
//////    cvSaveImage("D:/PANA_HLS/image_filter/filterYCbCr.png",imgdst);
//////    filter_image = imread("D:/PANA_HLS/image_filter/filterYCbCr.png", CV_LOAD_IMAGE_COLOR);
//////    cvtColor(filter_image, RGB, CV_YCrCb2RGB);
//////    imwrite("D:/PANA_HLS/image_filter/result.png", RGB);
////	dog_out_type m,theta;
//
//
//
//
////	ap_ufixed<OUT_BW,OUT_IW,AP_RND> sw_outval = sqrt(test_val.to_double());
//
////	gradient(1.1,3.2,4.5,5.1,&m, &theta);
////	cout << " m = " << m << endl;
// return 0;


//	IMAGE_STREAM inputStream;
//	LINEOUT_STREAM outputStream;
//	ap_axiu<PIXEL_SIZE,1,1,1> tmp;
//	int i=0, j=0;
//	for(i=0; i<IMAGE_HEIGHT; i++)
//		for(j=0; j<IMAGE_WIDTH; j++)
//		{
//			tmp.data = i*IMAGE_WIDTH + j + 1;
//			inputStream << tmp;
//		}
//	dog(inputStream, outputStream);
}
