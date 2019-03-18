function fp = newton_interpolation(xs,ys,value)
l = length(xs);
a(1) = ys(1);
for k = 1 : l - 1
   p(k, 1) = (ys(k+1) - ys(k))/(xs(k+1) - xs(k));
end
for i = 2 : l - 1
   for k = 1 : l - i
      p(k, i) = (p(k+1, i - 1) - p(k, i - 1))/(xs(k+i) - xs(k));
   end
end
for i = 2 : l
   a(i) = p(1, i-1);
end
Df(1) = 1;
c(1) = a(1);
for i = 2 : l
   Df(i)=(value - xs(i-1)) .* Df(i-1);
   c(i) = a(i) .* Df(i);
end
fp=sum(c);