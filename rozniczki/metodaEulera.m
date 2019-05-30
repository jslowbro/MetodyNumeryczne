function wyniki = metodaEulera(dfdx, h, x0, y0, koniec)
wyniki = zeros(2, no_solutions);

wyniki(:, 1) = [x0; y0];

for i = 2:no_solutions
   xp = wyniki(1, i-1);
   yp = wyniki(2, i-1);
   
   xn = xp + h;
   yn = yp + h*dfdx(xp, yp);
   
   wyniki(:, i) = [xn, yn];
end


end
