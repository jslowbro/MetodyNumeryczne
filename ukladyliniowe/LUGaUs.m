function x = LUGaUs(A,b)

% input:
% A = macierz 
% wektor prawej strony
v = length(b)
[m,n] = size(A);
if m ~= n, error('Matrix musi by? kwadratowa'); end

[L,U] =lu(A);

disp('L = ');disp(L);
disp('U = ');disp(U);
d = L\b;
x= U\d;
err = A - L*U
disp("x = ");disp(x);
  
