function fv = f_values_vector(a,b, step, f)
fa = a:step:b;
for i=1: length(fa)
    fv(i) = feval(f, fa(i));
end

%fv = feval(f, fa);