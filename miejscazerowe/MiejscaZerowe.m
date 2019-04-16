function MiejscaZerowe()
    [X,Y]= meshgrid(-10:0.2:10,-10:0.2:10);
    
    M = zeros(length(X));
    for ix=1:length(X)
        for iy=1:length(Y)
            M(ix,iy) = MetodaNewtona(X(ix,iy)+1j*Y(ix,iy));
        end
    end

    M = przerob(M,length(X),length(Y));
    mesh(M);

function M = przerob(M,lenX,lenY)
    dokladnosc=0.0001;

    for ix=1:lenX
        for iy=1:lenY
            %M(ix,iy) = round(M(ix,iy));
            if imag(M(ix,iy))>dokladnosc
                M(ix,iy)= 2; 
            elseif imag(M(ix,iy))<-dokladnosc
                M(ix,iy)= 3; 
            else
                M(ix,iy)= 1;                
            end   
        end
    end

function x = MetodaNewtona(x0)
    x=x0;
    dokladnosc=0.0001;
    x=x-(f(x)/fp(x));
    limit=0;
    
    while abs(f(x))>dokladnosc && limit<100
       x=x-(f(x)/fp(x));
       limit=limit+1;
    end


function wynik = f(x)
    %-j^2 x-5 j^2+x^3+9 x^2+24 x+20
    wynik = x^3+9*(x^2)+24*x+20-(1j^2)*x-5*(1j^2);


function wynik = fp(x)
    wynik = -(1j^2) + 3*(8 + 6*x + (x^2));
