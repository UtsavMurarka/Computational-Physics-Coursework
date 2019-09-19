%bisection Method
x0=1;
steps=[];
eps=[];
a=1;
k=0.8151503;
v=10;
%fe=@(x) (k/a)*(sqrt(x)*tan(k*sqrt(x)) - sqrt(v-x)); 
%dfe=@(x) (k/(2*a))*(k*sec(k*sqrt(x))*sec(k*sqrt(x)) +(tan(k*sqrt(x))/sqrt(x)) + (1/sqrt(v-x))); 
fo=@(x) (k/a)*(sqrt(x)*cot(k*sqrt(x)) - sqrt(v-x));
dfo=@(x) (k/(2*a))*(-1*k*csc(k*sqrt(x))*csc(k*sqrt(x)) + (cot(k*sqrt(x))/sqrt(x)) + (1/sqrt(v-x)));
%fe=@(x) x^2 - 4;
%fe= @(x) 2*x;
for i = 1:8
    ep=10^(-1*i);
    steps(i)=NR1(x0,ep,0.000001,fo,dfo)
    eps(i)=ep;    
end
plot(eps,steps)