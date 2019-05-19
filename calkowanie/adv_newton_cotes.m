function iv = adv_newton_cotes(fv, high, h)
l = length(fv);
low = mod(l, high);
iv = 0;
for i = 1 : high : l-low
    iv = iv + newton_cotes(fv(i:i+(high-1)), h); 
end
iv = iv + newton_cotes(fv(l-low:l), h);
