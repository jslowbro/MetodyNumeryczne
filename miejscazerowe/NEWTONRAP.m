function [X, Er] = NEWTONRAP(a,b,x0,f)
    syms x;
    Epsilon = 10^-8;
    makskrokow = 1000;
    X = zeros(makskrokow, 1);
    Er = zeros(makskrokow, 1);

    solution = x0;
    err = abs(f(solution));

    n = 1;
    while n < makskrokow && err > Epsilon
        X(n) = solution;
        Er(n) = err;
        derivative = diff(f, x);
        solution = solution - double(f(solution)/derivative(solution));
        err = abs(double(f(solution)));
        n = n + 1;
        
    end
    X(n) = solution;
    Er(n) = err;
    X = X(1:n)
    Er = Er(1:n)
    
end

