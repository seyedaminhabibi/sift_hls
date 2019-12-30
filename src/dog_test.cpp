#include <stdio.h>
#include <iostream>
#include <opencv2/opencv.hpp>
#include <opencv2/core/core.hpp>
#include <hls_opencv.h>
#include "dog.h"
using namespace cv;
using namespace std;

int dog_test(Mat Image){
	dog_out_st temp;
	Mat imagedst(IMAGE_HEIGHT - KERNEL_SIZE + 1, IMAGE_WIDTH - KERNEL_SIZE + 1, CV_8SC1, Scalar(0));
	int i=0, j=0;
	hls::stream<dog_in>  data_in;
	hls::stream<dog_out_st>  data_out;
	for(i=0;i<IMAGE_HEIGHT; i++)
		for(j=0; j<IMAGE_WIDTH; j++){
			data_in << Image.at<uint8_t>(i,j);
		}
	cout << "starting test ..." << endl;
	dog(data_in, data_out);
	i=0;j=0;
	while(!data_out.empty()){
		data_out >> temp;
//		cout << hex << temp.data[0].V << endl;
		*(imagedst.data + i) = temp.data[0];
		i++;
	}
//	cout << i << endl;
	cout << "dog test done!!!" << endl;
	normalize(imagedst, imagedst, 0, 255, NORM_MINMAX);
	imwrite( "/home/amin/sarbazi/hlsprojs/sift_starter/src/sample1_result.jpg", imagedst);
	return 0;
}
int kp_test(){

	int i=0, j=0;
	hls::stream<dog_out>  data_in;
	hls::stream<window_st>  data_out;
	window_st tmp;
	for(i=0; i<KP_IMAGE_HEIGHT; i++)
		for(j=0; j<KP_IMAGE_WIDTH; j++){
			data_in << i*KP_IMAGE_HEIGHT + j + 1;
		}
	kp_detection(data_in, data_out);
	while(!data_out.empty()){
		data_out >> tmp;
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

//	Mat coeff = getGaussianKernel(KERNEL_SIZE,1.6,CV_32F);
//	cout << "coeff : " << endl << coeff << endl;

//	double K = pow(2, (1/(NUM_GFILTERS - 3)));


	IplImage *imagesrc, *imagedst;
	double K = pow(2, 1.0/(NUM_GFILTERS - 3));
	double sigmas[NUM_GFILTERS] = {0};
	sigmas[0] = INITIAL_SIGMA;
	cout << "K = " << K << endl;
	for(int i=1; i<NUM_GFILTERS; i++)
	{
		sigmas[i] = sigmas[i-1]*K;
		cout << sigmas[i] << endl;
	}

	double coeffs[NUM_GFILTERS][KERNEL_SIZE];
	Mat coeff_mat;
	for(int i=0; i<NUM_GFILTERS; i++)
	{
		coeff_mat = getGaussianKernel(KERNEL_SIZE,sigmas[i],CV_64F);
		cout << i << " : " << coeff_mat << endl;
		for(int j=1; j<NUM_GFILTERS; j++){
			coeffs[i][j] = coeff_mat.at<double>(1,j);
		}
		coeff_mat.release();

	}
	    imagesrc=cvLoadImage("/home/amin/sarbazi/hlsprojs/sift_starter/src/sample1.jpg",CV_LOAD_IMAGE_GRAYSCALE);
	    cout << "width = " << imagesrc->width << " height = " << imagesrc->height << " depth = " << imagesrc->depth << " nchannels = " << imagesrc->nChannels << endl;
//	    imagedst = cvCreateImage(cvGetSize(imagesrc), imagesrc->depth, imagesrc->nChannels);
	    Mat image(imagesrc);

	///

//	dog_test(image);
	    kp_test();
	return 0;
}
