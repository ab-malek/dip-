clc;
clear;
close all;

a = imread('image.jpg');

figure,imshow(a),title('Original image');

b = 255 - a;

figure, imshow(b), title('Negative image');
