function wyniki = metodaEuleraDlaUkladow(dxdt, dydt, h, x0, y0, t0, koniec)
liczbaWynikow = length(t0:h:koniec);
wyniki = zeros(3, liczbaWynikow);

wyniki(:, 1) = [x0; y0; t0];

for i = 2:liczbaWynikow
   xp = wyniki(1, i-1);
   yp = wyniki(2, i-1);
   tp = wyniki(3, i-1);
   
   xn = xp + h*dxdt(xp, yp, tp);
   yn = yp + h*dydt(xp, yp, tp);
   tn = tp + h;
   
   wyniki(:, i) = [xn; yn; tn];
end


end