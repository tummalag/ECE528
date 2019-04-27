%   3.2.a
%       Mean = 1/lambda
%       variance = 1/lambda^2

%   3.2.b
% Fy(y) = 1- exp((-y)/lam)

N = 1000; 
y = rand(1,N);
lam = 1;

pdf = lam*exp(-lam*y);

samp_mean_pdf = sum(pdf)/N
sam_var_pdf = sum((pdf-samp_mean_pdf).^2)/(N-1)

hist(pdf);



