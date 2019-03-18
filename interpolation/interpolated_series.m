function f = interpolated_series(x_nodes, y_nodes, interpolation_type, xs)
ys = ones(1,length(xs));
for i = 1: length(xs)
    if interpolation_type == 1
        ys(i) = lagrange_interpolation(x_nodes,y_nodes,xs(i));
    else 
        ys(i) = newton_interpolation(x_nodes,y_nodes,xs(i));
    end 
end
f = ys;
