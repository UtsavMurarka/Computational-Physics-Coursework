function [C] = defl(A,tol)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
n=length(A);
C=[];
for i=1:n
    [l1,v1]=normPM(A,tol);
    C(i)=l1;
    X=rand(n,1);
    X=X/(X'*v1);
    A=A-l1*(v1*X');
end
end

