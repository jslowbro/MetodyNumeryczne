function wynik = newton_cotes(fi , h)

if(length(fi)==1)
    wynik = fi(1) * h;
end


if(length(fi)==2)
    wynik = (fi(1)+ fi(2))*h/2;
end


if(length(fi)==3)
  wynik = h/3 * (fi(1) + 4*fi(2) + fi(3));
end


if(length(fi)==4)
  wynik = 3*h/8 * (fi(1) + 3*fi(2) + 3*fi(3) + fi(4));
end


if(length(fi)==5)
   wynik = (2*h/45) * ( 7*fi(1) + 32*fi(2) + 12* fi(3)+ 32*fi(4)+7*fi(5));
end


if(length(fi) >= 6)
    wynik = NaN;
end

end

