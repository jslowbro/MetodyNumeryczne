dxdt = @(x, y, t) (y);
dydt = @(x, y, t) (-x);

x0 = 0;
y0 = 1;
t0 = 0;
t_max = 10;
h = [0.1; 0.01; 0.001];

% Wynik analityczny
f = @(t) (sin(t));


for i = 1:length(h)
    t = t0:h(i):t_max;
    x = arrayfun(f, t);
    
    wynikiEulera = metodaEuleraDlaUkladow(dxdt, dydt, h(i), x0, y0, t0, t_max);
    wynikiHeuna = metodaHeunaDlaUkladow(dxdt, dydt, h(i), x0, y0, t0, t_max);

    bledyEulera = abs(x - wynikiEulera(1, :));
    maksBladEulera = max(bledyEulera)
    
    bledyHeuna = abs(x - wynikiHeuna(1, :));
    maksBladHeuna = max(bledyHeuna)
end

plot(t, x, '-', 'DisplayName','Wynik analityczny');
hold on;
plot(wynikiEulera(3, :), wynikiEulera(1, :), 'gd', 'DisplayName','Rozwiazania metoda Eulera');
plot(wynikiHeuna(3, :), wynikiHeuna(1, :), 'rs', 'DisplayName','Rozwiazania metoda Heuna');
legend;
