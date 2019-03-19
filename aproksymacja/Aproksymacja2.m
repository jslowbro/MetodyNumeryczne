clear all
apx_data = 'dane_apx3.mat';
data_set = importdata(apx_data);
% Loading x_matrix,y_matrix
x = data_set(:,1);
y = data_set(:,2);
b = [ sum(y);
      sum(y.*x);
      sum(y.*exp(-x))];

%Obliczenie dla funkcji a0+a1x+a2e^-x 
A = [ length(x),     sum(x),          sum(exp(-x));
      sum(x),        sum(x.*x),       sum(x.*exp(-x));
      sum(exp(-x)),  sum(x.*exp(-x)), sum(exp(-x).*exp(-x))];
  

  
a = A\b

%nak�adamy punkty aproksymacji
figure, plot([0 10],[0 10],'w')
hold on
for k=1:length(x)
    plot(x(k),y(k),'o')
end

%obliczenie wsp�rz�dnych
x_axis = 0:0.1:10;
y_axis = a(1) + a(2).*x_axis + a(3).*exp(-x_axis);

plot(x_axis,y_axis,'b')
grid on;
xlabel('x')
ylabel('y')
title('Aproksymacja dla zbioru')
hold off

%wsp uwarunkowania
condA = cond(A)

%b�ad �redniokwadratowy
er = custom_error()

%funkcja celu
I = sum( (y-(a(1)+a(2).*x+a(3).*exp(-x))).^2 )