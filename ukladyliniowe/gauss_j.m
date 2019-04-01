function A = gauss_j( A )
n = size(A, 1);
for i=1:n,
    A(i, :) = A(i, :)/A(i, i); %dziel przez aktualny na diag
   for j=1:n,
      if i ~=j,
          A(j, :) = A(j, :) - A(i, :)*A(j, i); %elementy w danej kolumnie sie zeruja 
      end
   end
end
end
