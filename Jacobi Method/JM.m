function [ X ] = JM(A,B,ep )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
n=length(B);
X1=rand(n,1);
U=-1*triu(A,1);
L=-1*tril(A,-1);
D=diag(diag(A));
T=inv(D)*(L+U);
C=inv(D)*B;
X2=100*ones(n,1);
err = max(abs(X2-X1));
while err>ep
    X2=T*X1+C;
    err = max(abs(X2-X1));
    X1=X2;
end
X=X2;

end

