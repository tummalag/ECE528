%   3.1.d
clc;
clear;
N=1000;
sig = 1;

Xr = randn(1,N);
Xi = randn(1,N);

%X = Xr + 1i*Xi;
R = sqrt((Xr.^2)+(Xi.^2));

samp_mean_R = sum(R)/N
sam_var_R = sum((R-samp_mean_R).^2)/(N-1)

hist(R);