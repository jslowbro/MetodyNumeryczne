domain = [-2,2]; % przedzia³
n_nodes = 11; %iloœæ wêz³ów interpolacji
n_xseries = 1000; % iloœæ równoodleg³ych interpolowanych wartoœci
node_series = get_nodes(domain(1),domain(2),n_nodes);
values_at_nodes = get_values_at_nodes(node_series);
x_s = get_nodes(domain(1),domain(2),n_xseries);
y_s = get_values_at_nodes(x_s);
y_interpolated_s = interpolated_series(node_series,values_at_nodes, 1, x_s); % 1 - lagrange, 0 - newton
abs_error_s =  absolute_error(y_s,y_interpolated_s);
max_error = max(abs_error_s)
avg_error = mean(abs_error_s)
plot(x_s,y_s,x_s,y_interpolated_s)
grid on;
xlabel('x')
ylabel('y')
legend('orginalna funckja','interpolacja lagrange')
title('Interpolacja dla n wêz³ów = 11')
