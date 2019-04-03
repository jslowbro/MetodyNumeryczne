clear all
apx_data = 'easy_Ab.mat';
data_set = importdata(apx_data);
A = data_set.A;
b = data_set.b;
x = LU_imp(A,b);
ref_data = data_set.x_ref;
res = norm(A*x-b)
errRef = x - ref_data
