function HSI = RGBtoHSI(img)
  f=im2double(img);
  [col,row,num] = size(f);
  
  for x=1:col
      for y=1:row
          
       R=f(x,y,1);
       G=f(x,y,2);
       B=f(x,y,3);
  
       if((R==G)&&(G==B))
            theta = 90;
       else
            
       theta=acos((0.5*((R-G)+(R-B)))/(sqrt((R-G)^2+(R-B)*(G-B))));
       theta = abs(acos(theta)*180/pi);
       end
  
       if(B>G)
           H(x,y)=360-theta;
       else
           H(x,y)=theta;
       end
  
       S(x,y)=1-((3/(R+G+B))*min([R G B]));
       I(x,y)=(R+G+B)/3;
      end
  end
  
  HSI=cat(3,H,S,I);
  
end
  
  
  