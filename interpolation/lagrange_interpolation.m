function f = lagrange_interpolation(xs,ys,value)
yi=0;
for p=1:length(xs)
    t = 1;
    for j=1:length(xs)
        if(j~=p)
            t = t*((value-xs(j))/(xs(p)-xs(j)));
        end
    end
    yi = yi + t*ys(p);
end
f = yi;