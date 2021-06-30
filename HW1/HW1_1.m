RGB=imread('Cameraman.bmp');
figure,imshow(RGB);
I=im2double(RGB);
[m n] = size(I);
c = 1;
g =[0.5 0.7 0.9 1 2];
for k=1:length(g)
 for i = 1 : m
    for j = 1 : n
        N(i, j) = c * I(i, j).^ g(k);
    end
 end
figure, imshow(N);
title('Power-law transformation');
xlabel('Gamma='),xlabel(g(k));
end

RGB=imread('Lena.bmp');
figure,imshow(RGB);
I=im2double(RGB);
[m n] = size(I);
c = 1;
g =[0.5 0.7 0.9 1 2];
for k=1:length(g)
 for i = 1 : m
    for j = 1 : n
        N(i, j) = c * I(i, j).^ g(k);
    end
 end
figure, imshow(N);
title('Power-law transformation');
xlabel('Gamma='),xlabel(g(k));
end


RGB=imread('Peppers.bmp');
figure,imshow(RGB);
I=im2double(RGB);
[m n] = size(I);
c = 1;
g =[0.5 0.7 0.9 1 2];
for k=1:length(g)
 for i = 1 : m
    for j = 1 : n
        N(i, j) = c * I(i, j).^ g(k);
    end
 end
figure, imshow(N);
title('Power-law transformation');
xlabel('Gamma='),xlabel(g(k));
end