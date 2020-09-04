function [root_val] = bisection_func(x_l, x_r, f, epsilon, delta)
    % Returns the root of the function f in range x_l and x_r, with tolerance epsilon and delta 
    
    x_mid = (x_l + x_r) / 2;
    % If the function evaluates to the same sign on both guesses, return
    if f(x_l)*f(x_r) > 0
        root_val = 0;
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
    root_val = x_mid;
end