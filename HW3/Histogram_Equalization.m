function output=Histogram_Equalization(img)
   f=im2double(img);
   a=f(:,:,1);
   a= histeq(a);
   b=f(:,:,2);
   b= histeq(b);
   c=f(:,:,3);
   c= histeq(c);
   output=cat(3,a,b,c);
  
end