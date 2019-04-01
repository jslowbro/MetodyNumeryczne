function x = LU_imp(A,b)

% input:
% A = macierz 
% wektor prawej strony
v = length(b)
[m,n] = size(A);
if m ~= n, error('Matrix musi by? kwadratowa'); end

U=zeros(m);
L=zeros(m);
for j=1:m
    L(j,j)=1;
end
for j=1:m
    U(1,j)=A(1,j);
end
for i=2:m
    for j=1:m
        for k=1:i-1
            s1=0;
            if k==1
                s1=0;
            else
            for p=1:k-1
                s1=s1+L(i,p)*U(p,k);
            end
            end
            L(i,k)=(A(i,k)-s1)/U(k,k);
           end
         for k=i:m
             s2=0;
           for p=1:i-1
               s2=s2+L(i,p)*U(p,k);
           end
           U(i,k)=A(i,k)-s2;
         end
    end
end

disp('L = ');disp(L);
disp('U = ');disp(U);
d = L\b;
x= U\d;
err = A - L*U
disp("x = ");disp(x);
  
