clear all;
close all ;
clc;
%%  
A=imread('blurry_moon.tif');
figure(1)
subplot(2,3,1);
imshow(A)
title('Original Image');
I=A;
I1=zeros(size(A));
%Mask
mask1=[0 1 0;1 -4 1; 0 1 0];

%Padding
A=double(padarray(A,[1,1]));

%Implementate the formula
for i=1:size(A,1)-2
    for j=1:size(A,2)-2
        I1(i,j)=sum(sum(mask1.*A(i:i+2,j:j+2)));
    end
end

I1=uint8(I1);

subplot(2,3,2);
imshow(I1)
title('Laplacian Filtered Mask Image');

result1=I-I1;

subplot(2,3,3);
imshow(result1)
title('Laplacian Sharpened Mask Image');

%% 
A=imread('skeleton_orig.bmp');
figure(2)
subplot(2,3,1);
imshow(A)
title('Original Image');
I=A;
I1=zeros(size(A));
%Mask
mask1=[0 1 0;1 -4 1; 0 1 0];

%Padding
A=double(padarray(A,[1,1]));

%Implementate the formula
for i=1:size(A,1)-2
    for j=1:size(A,2)-2
        I1(i,j)=sum(sum(mask1.*A(i:i+2,j:j+2)));
    end
end

I1=uint8(I1);

subplot(2,3,2);
imshow(I1)
title('Laplacian Filtered Mask Image');

result1=I-I1;

subplot(2,3,3);
imshow(result1)
title('Laplacian Sharpened Mask Image');


%% 
I=imread('blurry_moon.tif');
A = im2double(I);
PQ = paddedsize(size(A));

h=[0,1,0;1,-4,1;0,1,0];
H=ifftshift(freqz2(h,PQ(1),PQ(2)));

F = fft2(A, size(H, 1), size(H, 2)); 
g = real(ifft2(H.*F)); 
g = g(1:size(A,1), 1:size(A,2));

figure(1)
subplot(2,3,5);
imshow(g)
title('Frequency Domain Laplacian Filtered');
g=uint8(g);
B=I-g;
subplot(2,3,6);
imshow(B)
title('Frequency Domain Laplacian Filtered Enhanced Result ');

%%  

I=imread('skeleton_orig.bmp');
I=rgb2gray(I);
A = im2double(I);
PQ = paddedsize(size(A));

h=[0,1,0;1,-4,1;0,1,0];
H=ifftshift(freqz2(h,PQ(1),PQ(2)));

F = fft2(A, size(H, 1), size(H, 2)); 
g = real(ifft2(H.*F)); 
g = g(1:size(A,1), 1:size(A,2));

figure(2)
subplot(2,3,5);
imshow(g)
title('Frequency Domain Laplacian Filtered');
g=uint8(g);
B=I-g;
subplot(2,3,6);
imshow(B)
title('Frequency Domain Laplacian Filtered Enhanced Result ');