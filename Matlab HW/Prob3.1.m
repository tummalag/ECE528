clc;
clear;
N=1000;
sig = 1;

Xr = randn(1,N);
Xi = randn(1,N);

%X = Xr + 1i*Xi;
R = sqrt((Xr.^2)+(Xi.^2));

