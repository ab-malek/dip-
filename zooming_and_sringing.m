clc;
clear;
close all;

a = imread('image.jpg');

a = 0.59 * a(:,:,1) + 0.3 * a(:,:,2) + 0.11 * a(:,:,3);

figure,imshow(a),title('Original image');

f = 2;

[n,m] = size(a);


%Row wise replication
for i = 1:n
    for j = 1:m
        for k = 1:f
            b(i, (j-1) * f + k) = a(i,j);
        end
    end
end

% Column wise replication
c = b;
[n,m] = size(c);

for i =1:m
    for j = 1:n
        for k = 1:f
            b((j-1)*f + k, i) = c(j,i);
        end
    end
end

figure, imshow(b), title('Zoomed image');


% Shrinking an image

[n,m] = size(a);
f = 5;
for i = 1:n/f
    for j = 1:m/f
        for k = 1:f
            p = i*f;
            q = j*f;
            d(i,j) = a(p,q);
        end
    end
end

figure,imshow(d), title('Shrinking image');
