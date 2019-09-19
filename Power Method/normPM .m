function le = normPM( A,tol )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
n=length(A);
X=rand(n,1);
Y=rand(1,n);
M1=max(X);
M2=100000;
while abs(M2-M1)>tol
    X=(A*X);
    M2=M1;
    M1=max(X);
    X=X/M1;
end
le=M1;
end

