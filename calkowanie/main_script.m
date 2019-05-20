f = @(x) 11*x^10;
fv = f_values_vector(-1,1,0.01, f);
adv_newton_cotes(fv, 2, 0.01)
%newton_cotes([0, 0.0107, 11], 0.5);
x = newton_cotes_vc(fv,-1, 1, 100, 2)


loglog([1:1000], abs(result_nc_1 – 2.0),...
  [1:1000], abs(result_nc_2 – 2.0),...
  [1:1000], abs(result_nc_3 – 2.0),...
  [1:1000], abs(result_nc_4 - 2.0)) 
