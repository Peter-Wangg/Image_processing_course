A=imread('Cameraman.bmp');
figure(1)
subplot(2,3,1);
imshow(A)
title('Original Image');
I=A;
I1=zeros(size(A));
I2=zeros(size(A));
%Mask
mask1=[0 1 0;1 -4 1; 0 1 0];
mask2=[1 1 1;1 -8 1; 1 1 1];

%Padding
A=double(padarray(A,[1,1]));

%Implementate the formula
for i=1:size(A,1)-2
    for j=1:size(A,2)-2
        I1(i,j)=sum(sum(mask1.*A(i:i+2,j:j+2)));
        I2(i,j)=sum(sum(mask2.*A(i:i+2,j:j+2)));
    end
end

I1=uint8(I1);
I2=uint8(I2);

subplot(2,3,2);
imshow(I1)
title('Filtered Mask1 Image');
subplot(2,3,3);
imshow(I2)
title('Filtered Mask2 Image');

result1=I-I1;
result2=I-I2;

subplot(2,3,5);
imshow(result1)
title('Sharpened Mask1 Image');
subplot(2,3,6);
imshow(result2)
title('Sharpened Mask2 Image');

A=imread('Lena.bmp');
figure(2)
subplot(2,3,1);
imshow(A)
title('Original Image');
I=A;
I1=zeros(size(A));
I2=zeros(size(A));
%Mask
mask1=[0 1 0;1 -4 1; 0 1 0];
mask2=[1 1 1;1 -8 1; 1 1 1];

%Padding
A=double(padarray(A,[1,1]));

%Implementate the formula
for i=1:size(A,1)-2
    for j=1:size(A,2)-2
        I1(i,j)=sum(sum(mask1.*A(i:i+2,j:j+2)));
        I2(i,j)=sum(sum(mask2.*A(i:i+2,j:j+2)));
    end
end

I1=uint8(I1);
I2=uint8(I2);

subplot(2,3,2);
imshow(I1)
title('Filtered Mask1 Image');
subplot(2,3,3);
imshow(I2)
title('Filtered Mask2 Image');

result1=I-I1;
result2=I-I2;

subplot(2,3,5);
imshow(result1)
title('Sharpened Mask1 Image');
subplot(2,3,6);
imshow(result2)
title('Sharpened Mask2 Image');

A=imread('Peppers.bmp');
figure(3)
subplot(2,3,1);
imshow(A)
title('Original Image');
I=A;
I1=zeros(size(A));
I2=zeros(size(A));
%Mask
mask1=[0 1 0;1 -4 1; 0 1 0];
mask2=[1 1 1;1 -8 1; 1 1 1];

%Padding
A=double(padarray(A,[1,1]));

%Implementate the formula
for i=1:size(A,1)-2
    for j=1:size(A,2)-2
        I1(i,j)=sum(sum(mask1.*A(i:i+2,j:j+2)));
        I2(i,j)=sum(sum(mask2.*A(i:i+2,j:j+2)));
    end
end

I1=uint8(I1);
I2=uint8(I2);

subplot(2,3,2);
imshow(I1)
title('Filtered Mask1 Image');
subplot(2,3,3);
imshow(I2)
title('Filtered Mask2 Image');

result1=I-I1;
result2=I-I2;

subplot(2,3,5);
imshow(result1)
title('Sharpened Mask1 Image');
subplot(2,3,6);
imshow(result2)
title('Sharpened Mask2 Image');