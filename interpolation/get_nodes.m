function array = get_nodes(start,finish,n)
% zwraca n r�wno oddalonych od siebie warto�ci w przedziale <start,finish>
len = abs(start-finish);
x = ones(1,n);
x(1) = start;
x(n) = finish;
step = len/(n-1);
for i = 2: n-1
    x(i) = x(1) + step*(i-1);
end
array = x;