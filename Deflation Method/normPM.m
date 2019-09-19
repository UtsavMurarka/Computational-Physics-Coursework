function [le,X] = normPM( A,tol)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
n=length(A);
X=rand(n,1);
Y=rand(1,n);
M1=max(X);
flag=0;
X1=zeros(n,1);
X2=zeros(n,1);
while dot(X1,X2)/(sqrt(dot(X1,X1)*dot(X2,X2)))<1-tol || flag==0
    flag=1;
    X1=X;
    X=(A*X);
    
    [M1,i]=max(abs(X));
    if X(i)<0
        M1=-M1;
    end
    X=X/M1;
    X2=X;
end
le=M1;
end

