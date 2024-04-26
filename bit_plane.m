clc;
clear;
close all;

image = imread('black.jpg');
image = rgb2gray(image);
image = double(image);
b = mod(image,2);

len = 8;
figure;
subplot(331);
imshow(uint8(image));
for i=1:len
    b = mod(image,2);
    subplot(3,3,i+1);
    imshow(b);
    title(sprintf('Bit plane %d', i))
    image = floor(image/2);
end

