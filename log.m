clc;
clear;
close all;

image = imread('black.jpg');
c = 2;
image = im2double(image);
log_im = c*log(image + 1);

figure, imshow(image), title('Original');
figure, imshow(log_im), title('lgo');