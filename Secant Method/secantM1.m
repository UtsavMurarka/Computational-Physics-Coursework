%Secant Method
x0=2;
x1=3;
steps=[];
eps=[];
W=5;

fe = @(x) x^2 - 4;
for i = 1:8
   ep=10^(-1*i);
    steps(1)=pw(x0,x1,ep)
    eps(i)=ep;   
end
%plot(eps,steps)