clc;
clear;
close all;

a = imread('image.jpg');

a = 0.59 * a(:,:,1) + 0.3 * a(:,:,2) + 0.11 * a(:,:,3);


f = 3;

[n,m] = size(a);

for i=1:n/f
    for j=1:m/f
        for k =1:f
            p = (i*f);
            q = (j*f);
            b(i,j) = a(p,q);
        end
    end
end

figure, imshow(a);
figure, imshow(b);


