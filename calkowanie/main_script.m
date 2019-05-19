f = @(x) 11*x^10;
fv = f_values_vector(-1,1,0.01, f)
newton_cotes([0, 0.0107, 11], 0.5)
adv_newton_cotes(fv, 1, 0.01)