%bisection Method
x0=-5;
steps=[];
eps=[];
a=1.8300*10^37;
for i = 1:8
    ep=10^(-1*i);
    steps(i)=NR(x0,ep,0.01,@(x) x*tan((0.3*10^-9)*x)-sqrt(a-x^2) ,@(x) x*(0.3*10^-9)*sec((0.3*10^-9)*x)*sec((0.3*10^-9)*x)+ tan((0.3*10^-9)*x)+(x/sqrt(a-x^2)))
    eps(i)=ep;    
end
plot(eps,steps)