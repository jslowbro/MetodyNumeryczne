function f = custom_error(x, x_apx)
f = sum((x- x_apx).^2)/length(x)


