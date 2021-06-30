function D= Sobel(input)
   C=im2double(input);

for i=1:size(C,1)-2
   for j=1:size(C,2)-2
       
      Gx=((2*C(i+2,j+1)+C(i+2,j)+C(i+2,j+2))-(2*C(i,j+1)+C(i,j)+C(i,j+2)));
      Gy=((2*C(i+1,j+2)+C(i,j+2)+C(i+2,j+2))-(2*C(i+1,j)+C(i,j)+C(i+2,j)));
      D(i,j)=sqrt(Gx.^2+Gy.^2);
      %D(i,j)=abs(Gx)+abs(Gy);
      
   end
end

end