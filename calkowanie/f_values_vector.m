function fv = f_values_vector(a,b, step, f)
fa = a:step:b;
fv = ones(1,length(fa));
for i=1: length(fa)
    fv(i) = feval(f, fa(i));
end
%fv = feval(f, fa);