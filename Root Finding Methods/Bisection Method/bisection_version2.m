% Bisection method to find the root of function @(x) f(x)
% Version - 2 (Using function handles for reusability)
% To demonstrate moderate coding practices

x_l = -2;
x_r = 2;
x_mid = (x_l + x_r) / 2;
f = @(x) (x^2 - 3*x + 1);
%defining epsilon delta as variables so that they can be tweaked without
%disturbing the bisection method algorithm
epsilon = 0.0001;
delta = 0.0001;
% If the function evaluates to the same sign on both guesses, return
if f(x_l)*f(x_r) > 0
    fprintf('Try another interval!')
    return
end
while abs(x_l - x_r) > epsilon && abs(f(x_mid)) > delta
    x_mid = (x_l + x_r) / 2;
    if f(x_l)*f(x_mid) < 0
        x_r = x_mid;
    else
        x_l = x_mid;
    end
    
end
disp(x_mid)

