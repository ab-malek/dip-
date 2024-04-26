clc;
clear;
close all;

image = imread('black.jpg');
image = im2double(image);
figure,imshow(image);


% gamma < 1

c = 2;
g = .4;
gamma1 = c*image.^g;
figure, imshow(gamma1);

% gamma > 1;
g = 1.5;
gamma2 = c*image.^g;
figure, imshow(gamma2);

