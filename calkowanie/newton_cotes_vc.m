function nc_vec = newton_cotes_vc(fv,a,b,iter, d)
nc_vec = zeros(1, iter);
for i=1: iter
    nc_vec(i) = adv_newton_cotes(fv,(b-a)/d*i);
end 