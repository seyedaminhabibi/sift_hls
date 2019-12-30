############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
############################################################
open_project sift_starter
set_top kp_detection
add_files sift_starter/src/fxp_sqrt.h
add_files sift_starter/src/dog.h
add_files sift_starter/src/dog.cpp
add_files sift_starter/src/coeff.h
add_files -tb sift_starter/src/dog_test.cpp
open_solution "solution1"
set_part {xq7z020cl400-1q} -tool vivado
create_clock -period 5 -name default
#source "./sift_starter/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
