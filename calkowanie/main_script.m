f = @(x) 11*x^10;
fv = f_values_vector(-1,1,0.01, f);
adv_newton_cotes(fv, 1, 0.01)