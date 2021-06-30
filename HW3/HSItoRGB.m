function RGB = HSItoRGB(HSI)
   f=im2double(HSI);
   [col,row,num] = size(f);
  
    H = f(:,:,1);
    S = f(:,:,2);
    I = f(:,:,3);
    
  for x=1:col
      for y=1:row
          if(0<=H(x,y) && H(x,y)<120)
              B(x,y)=I(x,y)*(1-S(x,y));
              R(x,y)=I(x,y)*(1+(S(x,y)*cosd(H(x,y)))/cosd(60-H(x,y)));
              G(x,y)=3*I(x,y)-(R(x,y)+B(x,y));
          end
          
          if(120<=H(x,y) && H(x,y)<240)
             H(x,y)=H(x,y)-120;
             R(x,y)=I(x,y)*(1-S(x,y));
             G(x,y)=I(x,y)*(1+(S(x,y)*cosd(H(x,y)))/cosd(60-H(x,y)));
             B(x,y)=3*I(x,y)-(R(x,y)+G(x,y));
          end
          
          if(240<=H(x,y) && H(x,y)<=360)
              H(x,y)=H(x,y)-240;
         
             G(x,y)=I(x,y)*(1-S(x,y));
             B(x,y)=I(x,y)*(1+(S(x,y)*cosd(H(x,y)))/cosd(60-H(x,y)));
             R(x,y)=3*I(x,y)-(B(x,y)+G(x,y));
          end
      end
  end
     RGB=cat(3,R,G,B);
end