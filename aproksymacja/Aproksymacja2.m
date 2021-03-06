clear all
apx_data = 'dane_selectionsort.mat';
data_set = importdata(apx_data);
% Loading x_matrix,y_matrix
x = data_set(:,1)
y = data_set(:,2);
b = [ sum(y);
      sum(y.*x);
      sum(y.*x.^2)];
%Obliczenie dla funkcji a0+a1x+a2e^-x 
A = [ length(x),     sum(x),          sum((x.^2));
      sum(x),        sum(x.*x),       sum(x.*(x.^2));
      sum((x.^2)),  sum(x.*(x.^2)), sum((x.^2).*(x.^2))];
  

  
a = A\b

%nak�adamy punkty aproksymacji
figure, plot([0 10],[0 10],'w')
hold on
for k=1:length(x)
    plot(x(k),y(k),'o')
end

%obliczenie wsp�rz�dnych
x_axis = 0:0.1:10;
y_axis = a(1) + a(2).*x_axis + a(3).*(x_axis.^2);

plot(x_axis,y_axis,'b')
grid on;
xlabel('Czas [s]')
ylabel('n element�w [x 1000]')
title('Aproksymacja dla selection sort')
hold off


%Czas dla n=18000
format shortG
t = a(1) + a(2).*18000 + a(3).*(18000.^2)
%wsp uwarunkowania
condA = cond(A);


