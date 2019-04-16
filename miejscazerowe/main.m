%syms x;
%f(x) = 1.1*x^2+0.765*x-3.55*x^3-0.74;
%[X, Err] = NEWTONRAP(-1,1,-1,f);


my_fun = @(x) 1.1*x^2+0.765*x - 3.55*x^3 - 0.74
low = -1;
high = 1;
t = .00001;
x = bisekcja(my_fun, low, high, t, 1000); 