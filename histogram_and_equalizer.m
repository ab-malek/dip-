clc;
clear;
close all;

image = imread('black.jpg');
image = 0.59 * image(:,:,1) + 0.3 * image(:,:,2) + 0.11 * image(:,:,3);
figure(1), imshow(image), title('Original gray image');

histo = zeros(1,256);
[n,m] = size(image);

for i = 1:n
    for j = 1:m
        histo(1,image(i,j)+1) = histo(1,image(i,j) + 1) + 1;
    end
end
x = 1:256;
figure, stem(x,histo),title('Histogram of original gray image');


pdf = histo/(n*m);
cdf = cumsum(pdf);

cdf = uint8(cdf*255);
new_image = zeros(n,m);
for i = 1:n
    for j = 1:m
        new_image(i,j) = new_image(i,j) + cdf(image(i,j) + 1);
    end
end

new_histo = zeros(1,256);

for i = 1:n
    for j = 1:m
        new_histo(1, new_image(i,j) + 1) = new_histo(1, new_image(i,j) + 1) + 1;
    end
end

figure, imshow(uint8(new_image)),title('Equalize image');
figure, stem(x,new_histo),title('Equalize image histogram');



