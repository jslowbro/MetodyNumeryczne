function iv = adv_newton_cotes(fv, high, h)
l = length(fv);
low = mod(l, high);
iv = 0;
for i = 1 : high-1 : l-low
    if ((i+(high-1)) >  l)
        break;
    end 
    iv = iv + newton_cotes(fv(i:(i+(high-1))), h); 
end
iv = iv + newton_cotes(fv(l-(low+1):l), h);