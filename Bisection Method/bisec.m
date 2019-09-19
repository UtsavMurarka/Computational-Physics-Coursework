function [count]  = bisec( xl,xr,ep,f)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
count=0;
xh=0;
if f(xl)*f(xr)>=0
    return
end
while abs(xl-xr)>ep
    xh=(xl+xr)/2;
    if f(xl)*f(xh)<0
        xr=xh;
    end
    if f(xr)*f(xh)<0
        xl=xh;
    end
    %abs(xr-xl)
    count=count+1;
end
%eps(i)=ep
%steps(i)=count
xh
end

