function f = scale(xs)
k = max(xs);
t = 0;
while k > 1 || k <-1
    k = k/10;
    t = t+1;
end
f = xs./(10)^t;

