
%%  This Matlab file demomstrates an edge-preserving filter based on Yu Wang et al's paper:
% It is part module of our paper "High dynamic range infrared image enhancement via central linearity suppression 
% guided filter and local high radiation pass filter"
% E-mail: yurowang@163.com
%% Central linearity suppression guided filter 
clc
clear
In = im2double(imread('.\Input.bmp')); 

c=4;
r = 15;
r1=1;
epsilon = 0.16;
out1 = CLSGF(In, In, r,r1, epsilon,c);

c=4;
r = 15;
r1=2;
epsilon = 0.16;
out2 = CLSGF(In, In, r,r1, epsilon,c);
% a

figure
subplot(1, 3, 1); imshow(In) ;title('Input')
subplot(1, 3, 2) ;imshow(out1);title('Output1')
subplot(1, 3, 3); imshow(out2);title('Output2')


