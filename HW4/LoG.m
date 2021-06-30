function output= LoG(input,sigma)
   C=im2double(input);
% 
%    for i=1:size(C,1)
%      for j=1:size(C,2)
%       
%         D(i,j)=exp(   -( (j^2 + i^2)/(2*sigma^2) )   );
%         %D(i,j)=(1/(2*pi*sigma^2))*exp( -((j-size(C,2)/2)^2 + (i-size(C,1)/2)^2)/(2*sigma^2) ) ;
%      end
%    end

   
for i=1:size(C,1)-4
   for j=1:size(C,2)-4

      output(i,j)=((16*C(i+2,j+2))-(C(i+2,j)+C(i+1,j+1)+2*C(i+2,j+1)+C(i+3,j+1)+C(i,j+2)+2*C(i+1,j+2)+2*C(i+3,j+2)+C(i+4,j+2)+C(i+1,j+3)+2*C(i+2,j+3)+C(i+3,j+3)+C(i+2,j+4)));
      %output(i,j)=8*D(i+1,j+1)-(D(i,j)+D(i+1,j)+D(i+2,j)+D(i,j+1)+D(i+2,j+1)+D(i,j+2)+D(i+1,j+2)+D(i+2,j+2));
   end
end

end