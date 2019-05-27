


dydx = @(x, y) (-2*pi*exp(-x)*sin(2*pi*x) - y);
h = 0.001;

wynikEulera = metodaEulera(dydx, h, 0, 1, 10);
wynikHeuna = metodaHeuna(dydx, h, 0, 1, 10);

% Wynik analityczny
f = @(x) (exp(-x)*cos(2*pi*x));
x = 0:h:10;
y = arrayfun(f, x);

plot(x, y, 'b-','DisplayName','Wynik analityczny');
title("y = e\^(-x)*cos(2*pi*x) oraz wyniki rozwiazan metodami numerycznymi");
xlabel("x");
ylabel("y");
hold on;
grid on;

plot(wynikEulera(1, :), wynikEulera(2, :), 'go', 'DisplayName','Rozwiazania metoda Eulera');
plot(wynikHeuna(1, :), wynikHeuna(2, :), 'rx', 'DisplayName','Rozwiazania metoda Heuena');

legend();

bledyEulera = abs(y - wynikEulera(2, :));
maksBladEulera = max(bledyEulera)

bledyHeuna = abs(y - wynikHeuna(2, :));
maksBladHeuna = max(bledyHeuna)

