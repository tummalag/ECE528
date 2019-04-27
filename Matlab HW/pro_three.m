%   3.2.a
%       Mean = 1/lambda
%       variance = 1/lambda^2

%   3.2.b

N = 1000; 
lam = 1
mu = 1/lam;
pdf = exprnd(mu,[1,N]);

samp_mean_pdf = sum(pdf)/N
sam_var_pdf = sum((pdf-samp_mean_pdf).^2)/(N-1)

hist(pdf);


%%   3.2.c

N = 1000; 
lam = 0.5
mu = 1/lam;
pdf = exprnd(mu,[1,N]);

samp_mean_pdf = sum(pdf)/N
sam_var_pdf = sum((pdf-samp_mean_pdf).^2)/(N-1)

hist(pdf);


N = 1000; 
lam = 5
mu = 1/lam;
pdf = exprnd(mu,[1,N]);

samp_mean_pdf = sum(pdf)/N
sam_var_pdf = sum((pdf-samp_mean_pdf).^2)/(N-1)

hist(pdf);

