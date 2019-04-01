function B = invert_gauss_j( A )
n = length(A);
B = [A, eye(n)]; %doklej jednostkowa
B = gauss_j(B);
B = B(:, n+1:2*n); %dopisujemy
end
