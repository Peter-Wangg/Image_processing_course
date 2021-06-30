function output=Power_law(img,gamma)
   f=im2double(img);
   [col,row,num] = size(f);
   c = 1;

   for x=1:col
      for y=1:row
          First(x, y) = real(f(x, y,1));
      end
   end
   
   for x=1:col
      for y=1:row
          Second(x, y) = real(c * f(x, y,2)^ gamma);
      end
   end
   
   for x=1:col
      for y=1:row
          Third(x, y) = real(c * f(x, y,3)^ gamma);
      end
   end
  
   output=cat(3,First,Second,Third);
end