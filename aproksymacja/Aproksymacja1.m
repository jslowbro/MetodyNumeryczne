clear all
apx_data = 'dane_resistor.mat';
data_set = importdata(apx_data);
% Loading x_matrix,y_matrix
x = data_set(:,1);
y = data_set(:,2);

b = [sum(y);
      sum(y.*x)];

%Obliczenie dla funkcji a0+a1x
  

A = [ length(x), sum(x);
       sum(x), sum(x.*x)];
  
  
a = A\b

%nak³adamy punkty aproksymacji
figure, plot([0 10],[0 0.01],'w')
hold on
for k=1:length(x)
    plot(x(k),y(k),'o')
end

%obliczenie wspó³rzêdnych
x_axis = 0:0.1:10;
y_axis = a(1) + a(2).*x_axis;

%wspó³rzêdne na graf
plot(x_axis,y_axis,'b')
grid on;
xlabel('Napiêcie[V]')
ylabel('Natê¿enie Pr¹du[A]')
title('Aproksymacja dla zbioru')
hold off

format shortG

R = x_axis(70)/y_axis(70)


%er_y = a(1) + a(2).*x;
%b³ad œredniokwadratowy
%er = custom_error(er_y,y);

