% Bisection method to find the root of function f(x)
% Version - 3 (Using Separate function for Bisection method algorithm)
% To demonstrate best coding practices

% Passing x_l, x_r, function handle for f(x), epsilon and delta as function
% parameters to bisection_func which carries out bisection method on the
% specified parameters and returns the result.
root = bisection_func(3, 4, @(x) (x^2-3*x+1), 0.0001, 0.0001);
disp(root);

