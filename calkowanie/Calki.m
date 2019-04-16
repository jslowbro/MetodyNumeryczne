function Calki()

    porownaj( inline('sin(x)'), 0, 1 )
    
    porownaj( inline('x^2'), -1, 2 )
    
    porownaj( inline('x*exp(x)'), -1, 1 )

end

function wynik = porownaj(f,a,b)

    wynik = zeros(3,3);
    
    n=5;
    wynik(1,1) = metodaTrapezow(f,a,b,n);
    wynik(2,1) = metodaParabol(f,a,b,n);
    wynik(3,1) = Kwadratura4(f,a,b);
    
    n=7;
    wynik(1,2) = metodaTrapezow(f,a,b,n);
    wynik(2,2) = metodaParabol(f,a,b,n);
    wynik(3,2) = Kwadratura6(f,a,b);
    
    wynik(1,3) = abs(wynik(1,1)-wynik(1,2));
    wynik(2,3) = abs(wynik(2,1)-wynik(2,2));
    wynik(3,3) = abs(wynik(3,1)-wynik(3,2));

end

function wynik = metodaTrapezow(f,a,b,n)
    
    h=(b-a)/n;
    wynik = f(a) + f(b);
    for i=1:n-1
        wynik = wynik + 2*f(a+i*h);
    end
    wynik = h/2 * wynik;

end


function wynik = metodaParabol(f,a,b,n)
    
    h=(b-a)/n;
    wynik = f(a) + f(b);
    for i=1:n-1
        wynik = wynik + 2*f(a+i*h);
        
    end
    for i=0:n-1
        wynik = wynik + 4*f(a+i*h+h/2);
    end
    wynik = h/6 * wynik;    

end

function wynik = Kwadratura4(f,a,b)
    
    h=(b-a)/4;
    wynik = (2/45)*h*(7*f(a) + 32*f(a+h) + 12*f(a+2*h) + 32*f(a+3*h) + 7*f(a+4*h));

end

function wynik = Kwadratura6(f,a,b)

    h=(b-a)/6;
    wynik = (1/140)*h*( 41*f(a) + 216*f(a+h) + 27*f(a+2*h) + 272*f(a+3*h) + 27*f(a+4*h) + 216*f(a+5*h) + 41*f(a+6*h));
    
end