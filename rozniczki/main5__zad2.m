dxdt = @(x, v, t) (v);
dvdt = @(x, v, t) (v/t - 4*(t^2)*x);


t0 = 1e-3;
t_max = 10;
x0 = t0*t0;
y0 = 2*t0;
h = [1e-3; 1e-5];


fx = @(t) (2*t*cos(t^2));
fy = @(t) (sin(t^2));

for i = 1:length(h)
    t = t0:h(i):t_max;
    x = arrayfun(fx, t);
    y = arrayfun(fy, t);
    
    wynikiEulera = metodaEuleraDlaUkladow(dxdt, dvdt, h(i), x0, y0, t0, t_max);
    wynikiHeuna = metodaHeunaDlaUkladow(dxdt, dvdt, h(i), x0, y0, t0, t_max);
    wynikiBashHorfa  = metodaAdamsaBashforthaDlalUkladow(dxdt, dvdt, h(i), x0, y0, t0, t_max,2);

    bledyEulera = abs(x - wynikiEulera(1, :));
    maksBladEulera = max(bledyEulera)
    
    bledyHeuna = abs(x - wynikiHeuna(1, :));
    maksBladHeuna = max(bledyHeuna)
    
    bledyB = abs(x-wynikiBashHorfa(1,:));
    maxbladB = max(bledyB);
end



%plot(t, x, 'bs', 'DisplayName','Wynik analityczny x');
%hold on;
%plot(t, wynikiEulera(2, :), 'gd', 'DisplayName','Rozwiazania metoda Eulera');
%plot(t, wynikiHeuna(2, :), 'rs', 'DisplayName','Rozwiazania metoda Heuna');
%legend;

subplot(3,2,1)
plot(t, wynikiEulera(2, :), '-', t, wynikiEulera(1, :), 'r-')
subplot(3,2,3)
plot(t, wynikiHeuna(2, :), '-', t, wynikiHeuna(1, :), 'r-')
subplot(3,2,2)
plot(t, bledyEulera)
subplot(3,2,4)
plot(t, bledyHeuna)
subplot(3,2,5)
plot(t,wynikiBashHorfa(2,:), '-', t,wynikiBashHorfa(1,:), 'r-')
subplot(3,2,6)
plot(t, bledyB)


