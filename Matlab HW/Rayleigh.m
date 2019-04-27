%   rayleigh Distribution
%
%   Fx(x) = 1-e^(-(x^2)/(2*sig^2))
%
%   inverse
%   F^(-1)x(u) = sqrt(-2*(sig^2)*ln(1-U))


%%   3.1.a
%       Mean = sig*sqrt(pi/2) = 1.253*sig
%       Var =  ((4-pi)/2)*sig^2 = 0.429*sig^2
%%   3.1.b
%       sig^2 = 1

sig = 1;
N=1000;
U=rand(1,N);

x = sqrt(-2*(sig^2)*log(1-U));

samp_mean_x = sum(x)/N
sam_var_x = sum((x-samp_mean_x).^2)/(N-1)

hist(x);

%%   3.1.c
%%      sig^2 = 0.5       
sig = sqrt(0.5);
N=1000;
U=rand(1,N);

x = sqrt(-2*(sig^2)*log(1-U));

samp_mean_x = sum(x)/N
sam_var_x = sum((x-samp_mean_x).^2)/(N-1)

hist(x);
xlabel('sig^2 = 0.5')

%%       sig^2 = 5      
sig = sqrt(5);
N=1000;
U=rand(1,N);

x = sqrt(-2*(sig^2)*log(1-U));

samp_mean_x = sum(x)/N
sam_var_x = sum((x-samp_mean_x).^2)/(N-1)

hist(x);
xlabel('sig^2 = 5')

%%       sig^2 = 10      
sig = sqrt(10);
N=1000;
U=rand(1,N);

x = sqrt(-2*(sig^2)*log(1-U));

samp_mean_x = sum(x)/N
sam_var_x = sum((x-samp_mean_x).^2)/(N-1)

hist(x);
xlabel('sig^2 = 10')


%%  3.1.d

N=1000;
sig = 1;
Xr = randn(1,N);
Xi = randn(1,N);

%X = Xr + 1i*Xi;
R = sqrt((Xr.^2)+(Xi.^2));

x = sqrt(-2*(sig^2)*log(1-R));

%samp_mean_x = sum(x)/N
%samp_var_x = sum((x - samp_mean_x).^2)/(N-1)


hist(x);


