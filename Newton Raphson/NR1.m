function [count]  = NR1( x0,ep,d,f,df)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
count=1;
x=[];
x(1)=x0;
x(2)=x(count)-(f(x(count))/(df(x(count))));
while (abs(x(count+1)-x(count))>ep ) && (f(x(count))>d) 
    x(count+2)=x(count+1)-(f(x(count+1))/df(x(count+1)));
    count=count+1;
end
x
%eps(i)=ep
%steps(i)=count
end

