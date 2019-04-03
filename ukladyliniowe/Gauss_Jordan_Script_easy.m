clear all
apx_data = 'easy_Ab.mat';
data_set = importdata(apx_data);
A = data_set.A;
x = invert_gauss_j(A);
m_jedn = eye(100);
err = norm(x*A-m_jedn)
