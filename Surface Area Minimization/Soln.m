clear all;
x0=1;
x1=0.5;
tol = 0.0001;
err = 1;
%f = @(x) x^2 - 4;
f = @(x) x*cosh((5/x)-acosh(5/x))-5;
iter = 0;
while (abs(err) > tol)
    iter = iter + 1;
    if f(x0)==0
        root = x0
        return
    end
    if f(x1)==0
        root = x1
        return
    end
    corr = (x1 - x0)/(f(x1)-f(x0));
    x2 = x1 - f(x1)*corr
    if abs(x2-x1)<=abs(x2-x0)
        x0 = x1;
        x1 = x2;
    end
    if abs(x2-x1)>abs(x2-x0)
        x1 = x0;
        x0 = x2;
    end
    err = x1-x0
    root = x0
    iter
    if (iter>1000)
        root=NaN;
        return
    end
end
