close all;
clear;
clc;

image1 = imread("image1.jpg");
image2 = imread("image2.jpg");

figure();

subplot(221),imshow(image1);

g_image = 0.3*image1(:,:,1) + 0.59*image1(:,:,2) + image1(:,:,3);

subplot(222), imshow(g_image);

histogram = zeros(1,256);

[n,m] = size(g_image);

mono = zeros(n,m);

for i = 1:n
    for j = 1:m
        if(g_image(i,j) < 128)
            mono(i,j) = 0;
            histogram(1) = histogram(1) + 1;
        else
            mono(i,j) = 255;
            histogram(256) = histogram(256) + 1;
        end
    end
end

subplot(223), imshow(mono);

x = 1:256;

subplot(224), stem(x,histogram);
