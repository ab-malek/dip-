clc;
clear;
close all;

a = imread('image.jpg');

figure,imshow(a),title('Original image');

b = 0.3*a(:,:,1) + 0.59*a(:,:,2) + 0.11*a(:,:,3);

figure, imshow(b), title('Gray scale image');
