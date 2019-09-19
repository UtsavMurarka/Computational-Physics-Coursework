%Secant Method
x0=0;
x1=5;
steps=[];
eps=[];
W=5;
d=10;
a=1;
k=0.8151503;
v=10;
for i = 1:8
   ep=10^(-1*i);
    steps(1)=sm(x0,x1,ep,fe)
    eps(i)=ep;   
end
%plot(eps,steps)