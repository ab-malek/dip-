close all;
clear;
clc;

img = imread('pout.tif');

bit_plane = cell(1,8);
img = double(img);

bits = 8;
figure();
for i = 1:bits
    bit_plane{i} = img - 2*floor(img/2);
    img = floor(img/2);
    subplot(2,4,i);
    imshow(bit_plane{i});
    title(sprintf('Bit plane %d',i));
end


construct_img = zeros(size(img));

for i = 1:bits
    construct_img = construct_img + bit_plane{i} * 2^(i-1);
end

figure();
imshow(uint8(construct_img));




