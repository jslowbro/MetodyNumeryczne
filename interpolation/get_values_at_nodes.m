function f = get_values_at_nodes(xs)
ys = zeros(1,length(xs));
for i =1: length(xs)
    x = xs(i);
    ys(i) = (1+x^4)/(1+x^6);
end
f = ys;