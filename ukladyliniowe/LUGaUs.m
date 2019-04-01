function x = LU(A,b)

% input:
% A = macierz 
% wektor prawej strony

[m,n] = size(A);
if m ~= n, error('Matrix musi by? kwadratowa'); end

[L,U] =lu(A);

disp('L = ');disp(L);
disp('U = ');disp(U);
d = L\b;
x= U\d;
disp("x = ");disp(x);
  
