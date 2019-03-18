function f = absolute_error(y_s,y_interpolated_s)
%funkcja liczy b³¹d bezwglêdny ka¿dego elementu
l = length(y_s);
abs_err_s = ones(1,l);
for i=1:l
    abs_err_s(i) = abs((y_s(i)- y_interpolated_s(i))/y_s(i));
    if isnan(abs_err_s(i))
        abs_err_s(i) = 0;
    end
end
f = abs_err_s;