clear;
%% 
img1 = imread('image1.jpg');
img2 = imread('image2.jpg');
img3 = imread('image3.jpg');
sigma=1;
D1=Sobel(img1);
D2=Sobel(img2);
D3=Sobel(img3);
E1=LoG(img1,sigma);
E2=LoG(img2,sigma);
E3=LoG(img3,sigma);

figure(1)
subplot(3,3,1)
imshow(img1)
title('Original Image1');
subplot(3,3,2)
imshow(D1)
title('Sobel Image1');
subplot(3,3,3)
imshow(E1)
title('LoG Image1');
subplot(3,3,4)
imshow(img2)
title('Original Image2');
subplot(3,3,5)
imshow(D2)
title('Sobel Image2');
subplot(3,3,6)
imshow(E2)
title('LoG Image2');
subplot(3,3,7)
imshow(img3)
title('Original Image3');
subplot(3,3,8)
imshow(D3)
title('Sobel Image3');
subplot(3,3,9)
imshow(E3)
title('LoG Image3');