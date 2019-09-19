%bisection Method
xl=5;
xr=7.8;
steps=[];
eps=[];
for i = 1:6
    ep=10^(-1*i);
    steps(i)=bisec(xl,xr,ep,@(x) tan(x)-x)
    eps(i)=ep;    
end
plot(eps,steps)