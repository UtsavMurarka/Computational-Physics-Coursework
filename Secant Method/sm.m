function [count]  = sm( x0,x1,ep,f)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
count=0;
x2=0;
while abs(x1-x0)>ep 
   x2=x1-(f(x1)*(x1-x0)/(f(x1)-f(x0)));
   if abs(x2-x1) < abs(x2-x0)
       x0=x1;
       x1=x2;
   else
       x1=x0;
       x0=x2;
   end
count=count+1;   
end

if f(x1)<f(x0)
    x1
else
    x0
end
%eps(i)=ep
%steps(i)=count
end