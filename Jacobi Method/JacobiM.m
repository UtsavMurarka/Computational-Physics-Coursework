n=3;
A=rand(n,n);
U=triu(A,1);
L=tril(A,-1);
D=diag(diag(A));
T=inv(D)*(L+U);
while max(eigs(T))>=1
    A=rand(n,n);
    U=triu(A,1);
    L=tril(A,-1);
    D=diag(diag(A));
    T=inv(D)*(L+U);
end
B=rand(n,1);
C=inv(D)*B;
%for i = 1:100
    X=T*X+C
end
X