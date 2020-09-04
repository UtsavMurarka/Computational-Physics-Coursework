function [root_val] = NewtonRaphson(x0, f, df, epsilon, delta)
    count=1;
    x=[];
    x(1)=x0;
    x(2)=x(count)-(f(x(count))/(df(x(count))));
    while (abs(x(count+1)-x(count)) > epsilon  && abs(f(x(count))) > delta) 
        x(count+2)=x(count+1)-(f(x(count+1))/df(x(count+1)));
        count=count+1;
    end
    root_val = x(count+1);
    %eps(i)=ep
    %steps(i)=count
end