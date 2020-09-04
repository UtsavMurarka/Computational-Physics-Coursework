epsilon = 0.0001;
delta = 0.0001;

f_odd = @(x) (5.12*sqrt(x)*cot(1.536*sqrt(x)) - 5.12*sqrt(10-x));
df_odd = @(x) 5.12*(-1*0.768*csc(1.536*sqrt(x))*csc(1.536*sqrt(x)) + tan(1.536*sqrt(x))/(2*sqrt(x)) + 1/(2*sqrt(10-x)));

f_even = @(x) (5.12*sqrt(x)*tan(1.536*sqrt(x)) - 5.12*sqrt(10-x));
df_even = @(x) 5.12*(0.768*sec(1.536*sqrt(x))*sec(1.536*sqrt(x)) + tan(1.536*sqrt(x))/(2*sqrt(x)) + 1/(2*sqrt(10-x)));

x0 = 5;
answer = NewtonRaphson(x0, f_odd, df_odd, epsilon, delta);
fprintf('Odd root = %f \n', answer);

x0 = 0.5;
answer = NewtonRaphson(x0, f_even, df_even, epsilon, delta);
fprintf('Even root = %f \n', answer);

x0 = 4;
answer = NewtonRaphson(x0, f_even, df_even, epsilon, delta);
fprintf('Even root = %f \n', answer);
