I = imread('Cameraman.bmp');
J = histeq(I);
figure(1)
subplot(2,2,1);
imshow(I)
subplot(2,2,2);
imshow(J)
subplot(2,2,3);
imhist(I,64)
subplot(2,2,4);
imhist(J,64)

I = imread('Lena.bmp');
J = histeq(I);
figure(2)
subplot(2,2,1);
imshow(I)
subplot(2,2,2);
imshow(J)
subplot(2,2,3);
imhist(I,64)
subplot(2,2,4);
imhist(J,64)

I = imread('Peppers.bmp');
J = histeq(I);
figure(3)
subplot(2,2,1);
imshow(I)
subplot(2,2,2);
imshow(J)
subplot(2,2,3);
imhist(I,64)
subplot(2,2,4);
imhist(J,64)

