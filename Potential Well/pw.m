function [count]  = pw( x0,x1,ep)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
W = 5;
D = 0.5;
v=50;
Fa = @(x) [ cos(W*sqrt(x)*sqrt(2)*3.58) ((10^(-9))/(sqrt(x)*sqrt(2)*3.58))*sin(sqrt(x)*sqrt(2)*3.58*W) ; -1*((10^(9))*(sqrt(x)*sqrt(2)*3.58))*sin(sqrt(x)*sqrt(2)*3.58*W) cos(sqrt(x)*sqrt(2)*3.58*W)]; 
Ff = @(x) [ cosh(D*sqrt(v-x)*sqrt(2)*3.58) ((10^(-9))/(sqrt(v-x)*sqrt(2)*3.58))*sinh(sqrt(v-x)*sqrt(2)*3.58*D) ; ((10^(9))*(sqrt(v-x)*sqrt(2)*3.58))*sinh(sqrt(v-x)*sqrt(2)*3.58*D) cosh(sqrt(v-x)*sqrt(2)*3.58*D)]; 
M = @(x) [ 1 ; sqrt(v-x)*sqrt(2)*3.58];

count=0;
x2=0;
while abs(x1-x0)>ep 
    
   F0=Fa(x0)*Ff(x0)*Fa(x0)*M(x0);
   F1=Fa(x1)*Ff(x1)*Fa(x1)*M(x1);
   f0 = F0(2) + sqrt(v-x0)*sqrt(2)*3.58*F0(1);
   f1 = F1(2) + sqrt(v-x1)*sqrt(2)*3.58*F1(1);
   x2=x1-(f1)*(x1-x0)/(f1-f0);
   if abs(x2-x1) < abs(x2-x0)
       x0=x1;
       x1=x2;
   else
       x1=x0;
       x0=x2;
   end
count=count+1;   
end

if f1<f0
    x1
else
    x0
end
%eps(i)=ep
%steps(i)=count
end