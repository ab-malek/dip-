clc;
clear;
close all;

a = imread('image.jpg');

figure,imshow(a),title('Original image');

b = 0.3*a(:,:,1) + 0.59*a(:,:,2) + 0.11*a(:,:,3);

figure, imshow(b), title('Gray scale image');


% Gray scal to monochrom

histogram = 1:256;

[n,m] = size(b);

for i=1:n
    for j=1:m
        if(b(i,j) < 128)
            g(i,j) = 0;
            histogram(1) = histogram(1) + 1;
        else
            g(i,j) = 255;
            histogram(255) = histogram(255) + 1;
        end
    end
end

figure, imshow(g),title('Monochrom image');
x = 1:256;
figure, stem(x,histogram),title('Histogram of monochrome');
