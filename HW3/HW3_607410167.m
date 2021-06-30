clear
clc
%% aloe
img = imread('aloe.jpg');
%img = im2double(img);

figure(1)
subplot(3,4,1)
imshow(img); title('aloe');

Original=Histogram_Equalization(img);
subplot(3,4,4)
imshow(Original);title('Histogram_Equalization');

subplot(3,4,5)
imshow(img); title('aloe');

HSI=RGBtoHSI(img);
subplot(3,4,6)
imshow(HSI); title('aloe RGBtoHSI');

c2=histeq(HSI(:,:,2));
c3=histeq(HSI(:,:,3));
HSI=cat(3,HSI(:,:,1),c2,c3);
subplot(3,4,7)
imshow(HSI);title('Histogram_Equalization');
   
RGB=HSItoRGB(HSI);
subplot(3,4,8)
imshow(RGB); title('aloe HSItoRGB');

subplot(3,4,9)
imshow(img); title('aloe');

Lab=RGBtoLab(img);
subplot(3,4,10)
imshow(Lab); title('aloe RGBtoLab');

d3=histeq(Lab(:,:,3));
Lab=cat(3,Lab(:,:,1),Lab(:,:,2),d3);

subplot(3,4,11)
imshow(Lab);title('Histogram_Equalization');

RGB=LabtoRGB(Lab);
subplot(3,4,12)
imshow(RGB); title('aloe LabtoRGB');
%%
% church
clear;
img = imread('church.jpg');

figure(2)
subplot(3,4,1)
imshow(img); title('church');

Original=Power_law(img,0.8);
subplot(3,4,4)
imshow(Original);title('Power-law transformation');

subplot(3,4,5)
imshow(img); title('church');

HSI=RGBtoHSI(img);
subplot(3,4,6)
imshow(HSI); title('church RGBtoHSI');

HSI=Power_law(HSI,0.755);
subplot(3,4,7)
imshow(HSI);title('Power-law transformation');
   
RGB=HSItoRGB(HSI);
subplot(3,4,8)
imshow(RGB); title('church HSItoRGB');

subplot(3,4,9)
imshow(img); title('church');

Lab=RGBtoLab(img);
subplot(3,4,10)
imshow(Lab); title('church RGBtoLab');

Lab=Power_law(Lab,0.5);
subplot(3,4,11)
imshow(Lab);title('Power-law transformation');

RGB=LabtoRGB(Lab);
subplot(3,4,12)
imshow(RGB); title('church LabtoRGB');

%% house
clear;
img = imread('house.jpg');

figure(3)
subplot(3,4,1)
imshow(img); title('house');

Original=Power_law(img,2.1);
subplot(3,4,4)
imshow(Original);title('Power-law transformation');

subplot(3,4,5)
imshow(img); title('house');

HSI=RGBtoHSI(img);
subplot(3,4,6)
imshow(HSI); title('house RGBtoHSI');

HSI=Power_law(HSI,0.9);
subplot(3,4,7)
imshow(HSI);title('Power-law transformation');
   
RGB=HSItoRGB(HSI);
subplot(3,4,8)
imshow(RGB); title('house HSItoRGB');

subplot(3,4,9)
imshow(img); title('house');

Lab=RGBtoLab(img);
subplot(3,4,10)
imshow(Lab); title('house RGBtoLab');

Lab=Power_law(Lab,0.7);
subplot(3,4,11)
imshow(Lab);title('Power-law transformation');

RGB=LabtoRGB(Lab);
subplot(3,4,12)
imshow(RGB); title('house LabtoRGB');

%% kitchen
clear;
img = imread('kitchen.jpg');

figure(4)
subplot(3,4,1)
imshow(img); title('kitchen');

Original=Power_law(img,1.5);
subplot(3,4,4)
imshow(Original);title('Power-law transformation');

subplot(3,4,5)
imshow(img); title('kitchen');

HSI=RGBtoHSI(img);
subplot(3,4,6)
imshow(HSI); title('kitchen RGBtoHSI');

HSI=Power_law(HSI,0.8);
subplot(3,4,7)
imshow(HSI);title('Power-law transformation');
   
RGB=HSItoRGB(HSI);
subplot(3,4,8)
imshow(RGB); title('kitchen HSItoRGB');

subplot(3,4,9)
imshow(img); title('kitchen');

Lab=RGBtoLab(img);
subplot(3,4,10)
imshow(Lab); title('kitchen RGBtoLab');

Lab=Power_law(Lab,0.7);
subplot(3,4,11)
imshow(Lab);title('Power-law transformation');

RGB=LabtoRGB(Lab);
subplot(3,4,12)
imshow(RGB); title('kitchen LabtoRGB');

%% img69
clear;
img = imread('img69.jpg');

figure(5)
subplot(3,4,1)
imshow(img); title('img69');

im1 = medfilt2(img(:,:,1));
im2 = medfilt2(img(:,:,2));
im3 = medfilt2(img(:,:,3));
im=cat(3,im1,im2,im3);

subplot(3,4,4)
Original=Power_law(im,0.9);
imshow(Original);title('Remove noise and Power-law transformation');

subplot(3,4,5)
imshow(img); title('img69');

HSI=RGBtoHSI(im);
subplot(3,4,6)
imshow(HSI); title('img69 RGBtoHSI');

im2 = medfilt2(HSI(:,:,2));
im3 = medfilt2(HSI(:,:,3));
HSI=cat(3,HSI(:,:,1),im2,im3);
subplot(3,4,7)
imshow(HSI);title('Remove noise');

RGB=HSItoRGB(HSI);
subplot(3,4,8)
imshow(RGB); title('img69 HSItoRGB');

subplot(3,4,9)
imshow(img); title('img69');

Lab=RGBtoLab(img);
subplot(3,4,10)
imshow(Lab); title('img69 RGBtoLab');

im1 = medfilt2(Lab(:,:,1));
im2 = medfilt2(Lab(:,:,2));
im3 = medfilt2(Lab(:,:,3));
Lab=cat(3,im1,im2,im3);
subplot(3,4,11)
imshow(Lab);title('Remove noise');

RGB=LabtoRGB(Lab);
subplot(3,4,12)
imshow(RGB); title('img69 LabtoRGB');