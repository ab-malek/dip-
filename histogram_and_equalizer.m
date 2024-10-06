close all;
clear;
clc;

image = imread("pout.tif");
image2 = imread("image2.jpg");

figure();

subplot(221);
imshow(image);

hist = zeros(1,256);

[n,m] = size(image);

for i = 1:n
    for j = 1:m
        hist(1,image(i,j) + 1) = hist(1,image(i,j) + 1) + 1;
    end
end

x = 0:255;
subplot(222), stem(x,hist);


pdf = hist/(n*m);
cdf = zeros(1,256);
cdf(1) = pdf(1);

for i=2:256
    cdf(i) = cdf(i-1) + pdf(i);
end

cdf = uint8(cdf*255);

new_image = zeros(n,m);

for i = 1:n
    for j = 1:m
        new_image(i,j) = new_image(i,j) + cdf(image(i,j) + 1);
    end
end

subplot(223), imshow(uint8(new_image));


new_hist = zeros(1,256);

for i = 1:n
    for j = 1:m
        new_hist(1,new_image(i,j) + 1) = new_hist(1,new_image(i,j) + 1) + 1;
    end
end


subplot(224), stem(x,new_hist);



