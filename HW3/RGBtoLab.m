function Lab=RGBtoLab(img)
   f=im2double(img);
   [col,row,num] = size(f);
   Filter=[0.412453 0.357580 0.180423;0.212671 0.715160 0.072169;0.019334 0.119193 0.950227];
   Xn = 0.9515;
   Yn = 1;
   Zn = 1.0886;
   L = zeros(col,row);
   a = zeros(col,row);
   b = zeros(col,row);
   
   for x=1:col
      for y=1:row
           R = f(x,y,1)/255;
           G = f(x,y,2)/255;
           B = f(x,y,3)/255;
           X=Filter(1,:)*([R G B]');
           Y=Filter(2,:)*([R G B]');
           Z=Filter(3,:)*([R G B]');
           X = X/Xn;
           Y = Y/Yn;
           Z = Z/Zn;
           if(Y>0.008856)
            L(x,y)=116*Y^(1/3)-16;
           else
            L(x,y)=903.3*Y;
           end
           a(x,y)=500*(h(X)-h(Y));
           b(x,y)=200*(h(Y)-h(Z));
      end
   end
   Lab=cat(3, L, a, b);

end