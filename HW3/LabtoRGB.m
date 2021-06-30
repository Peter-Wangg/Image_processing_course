function RGB=LabtoRGB(Lab)
   f=im2double(Lab);
   [col,row,num] = size(Lab);
   L = f(:,:,1);
   a = f(:,:,2);
   b = f(:,:,3);
   Xn = 0.9515;
   Yn = 1;
   Zn = 1.0886;
   Filter=[0.412453 0.357580 0.180423;0.212671 0.715160 0.072169;0.019334 0.119193 0.950227];
   Filter=inv(Filter);
   K=903.3;
   E=0.008856;

   for x=1:col
      for y=1:row
          fy=(L(x,y)+16)/116;
          fx=fy+a(x,y)/500;
          fz=fy-b(x,y)/200;
          if(L(x,y)>K*E)
              Y(x,y)=Yn*((L(x,y)+16)/116)^3;
          else
              Y(x,y)=Yn*L(x,y)/K;
          end
          
          if(fx^3>E)
              X(x,y)=Xn*fx^3;
          else
              X(x,y)=Xn*(fx*116-16)/K;
          end
          
          if(fz^3>E)
              Z(x,y)=Zn*fz^3;
          else
              Z(x,y)=Zn*(fz*116-16)/K;
          end
      end
   end

   XYZ_space=cat(3,X,Y,Z);
   
   for x = 1:col
        for y = 1:row
            X = XYZ_space(x,y,1);
            Y = XYZ_space(x,y,2);
            Z = XYZ_space(x,y,3);
            RGB(x,y,1) = Filter(1,:)*([X Y Z]')*255;
            RGB(x,y,2) = Filter(2,:)*([X Y Z]')*255;
            RGB(x,y,3) = Filter(3,:)*([X Y Z]')*255;
        end
   end
end