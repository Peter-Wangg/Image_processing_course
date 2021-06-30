clear all; 
close all ;
clc;
%% 
A=imread('blurry_moon.tif');
figure(1)
subplot(1,3,1);
imshow(A)
title('Original Image');
B = imsharpen(A);
subplot(1,3,2);
imshow(B)
title('Unsharp Masking Sharpened Image');

%% 
I=imread('blurry_moon.tif');
A = im2double(I);
PQ = paddedsize(size(A));

h=[0,1,0;1,-4,1;0,1,0];
H=ifftshift(freqz2(h,PQ(1),PQ(2)));

F = fft2(A, size(H, 1), size(H, 2)); 
Flp=H.*F;
unsharp=F-Flp;% Fhp(u, v) = F(u, v) ¡V Flp(u, v). Unsharp Masking Frequency Domain

g = real(ifft2(unsharp)); 
g = g(1:size(A,1), 1:size(A,2));
subplot(1,3,3);
imshow(g)
title('Unsharp Masking Frequency Domain Enhanced Result ');

%% 
A=imread('skeleton_orig.bmp');
figure(2)
subplot(1,3,1);
imshow(A)
title('Original Image');
B = imsharpen(A);
subplot(1,3,2);
imshow(B)
title('Unsharp Masking Sharpened Image');

%% 
I=imread('skeleton_orig.bmp');
I=rgb2gray(I);
A = im2double(I);
PQ = paddedsize(size(A));

h=[0,1,0;1,-4,1;0,1,0];
H=ifftshift(freqz2(h,PQ(1),PQ(2)));

F = fft2(A, size(H, 1), size(H, 2)); 

Flp=H.*F;
unsharp=F-Flp;% Fhp(u, v) = F(u, v) ¡V Flp(u, v). Unsharp Masking Frequency Domain

g = real(ifft2(unsharp)); 
g = g(1:size(A,1), 1:size(A,2));
subplot(1,3,3);
imshow(g)
title('Unsharp Masking Frequency Domain Enhanced Result ');
