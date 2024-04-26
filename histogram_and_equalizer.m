clc;
clear;
close all;

image = imread('black.jpg');
image = 0.3 * image(:,:,1) + 0.59 * image(:,:,2) + 0.11 * image(:,:,3);
figure(1);
imshow(image);
count = zeros(1,256);
[n,m] = size(image);
for i=1:n
    for j=1:m
        count(1,image(i,j)+1) = count(1,image(i,j)+1) + 1;
    end
end
x = 1:256;
figure;
stem(x,count);
%Cumulative distribution function
tot = sum(count);
pdf = count/tot;
cdf = cumsum(pdf);

cdf = uint8(cdf*255);

new_gray = zeros(n,m);

for i=1:n
    for j=1:m
        new_gray(i,j) = new_gray(i,j) + (cdf(image(i,j)+1));
    end
end

figure, imshow(uint8(new_gray));
gcount = zeros(1,256);
for i=1:n
    for j=1:m
        gcount(1,new_gray(i,j)+1) = gcount(1,new_gray(i,j)+1) + 1;
    end
end

figure, stem(x,gcount);




