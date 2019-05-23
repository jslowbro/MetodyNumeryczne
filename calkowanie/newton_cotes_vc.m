function nc_vec = newton_cotes_vc(f,a,b,iter, d)
nc_vec = zeros(1, iter);
for i=1: iter
    if(mod(iter,d)~=0 && i-1 > 0)
        nc_vec(i) = nc_vec(i-1);
    end
    fv = f_values_vector(-1,1,((b-a)/(d*i)),f);
    nc_vec(i) = adv_newton_cotes(fv,d,(b-a)/(d*i));
    
end 