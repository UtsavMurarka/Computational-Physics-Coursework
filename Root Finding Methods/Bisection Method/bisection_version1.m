% Bisection method to find the root of x^2 - 3*x + 1 = 0
% Version - 1 (Hardcoding everything)
% To demonstrate poor coding practices

x_l = -2;
x_r = 2;
x_mid = (x_l + x_r) / 2;
% If the function evaluates to the same sign on both guesses, return
if (x_l^2 - 3*x_l + 1)*(x_r^2 - 3*x_r + 1) > 0
    fprintf('Try another interval!')
    return
end
% Hardcoding epsilon and delta to be 0.0001
while abs(x_l - x_r) > 0.0001 && abs(x_mid^2 - 3*x_mid + 1) > 0.0001
    x_mid = (x_l + x_r) / 2;
    if (x_l^2 - 3*x_l + 1)*(x_mid^2 - 3*x_mid + 1) < 0
        x_r = x_mid;
    else
        x_l = x_mid;
    end
    
end
disp(x_mid)

