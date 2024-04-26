clc;
clear;
close all;

a = imread('image.jpg');

a = 0.59 * a(:,:,1) + 0.3 * a(:,:,2) + 0.11 * a(:,:,3);


f = 2;

[n,m] = size(a);
%Row wise replication
for i=1:n
    for j=1:m
        for k =1:f
            b(i,(j-1)*f + k) = a(i,j);
        end
    end
end

c = b;
[n,m] = size(c);
% Column wise replication
for i=1:m
    for j=1:n
        for k=1:f
            b((j-1)*f+k,i) = c(j,i);
        end
    end
end

figure, imshow(a);
figure, imshow(b);


