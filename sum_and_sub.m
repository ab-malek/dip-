clc;
clear;
close all;

a = imread('image.jpg');
b = imread('image2.jpg');

a = resize(a,[400,400]);
b = resize(b,[400,400]);

figure,imshow(a);
figure, imshow(b);

figure, imshow(a+b),title('Summation');
figure, imshow(b-a),title('Subtraction');
