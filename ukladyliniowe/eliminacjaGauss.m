function x = eliminacjaGauss(A,b)
n=size(b,1);
x=zeros(n,1);
Ab=[A b];
for i=1:n
    Ab(i,:)=Ab(i,:)./Ab(i,i); %dzielimy elementy diagonalne
    for j =1:n %przechodzenie znowu po wierszach
       if  i ~=j
           Ab(j,:)=Ab(j,:)-Ab(i,:)*Ab(j,i);%od j wiersza odejmujemy element diagonalny pomnozony przez element tak zeby wyzerowac
       end
        
    end
end
 x=Ab(:,n+1);
 
end