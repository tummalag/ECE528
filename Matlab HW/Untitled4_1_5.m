%4.1.e
for L=1:1000
    sig = 1;
    N=100;
    U=rand(1,N);
    x = sqrt(-2*(sig^2)*log(1-U));
    samp_mean_x(L) = sum(x)/N;
end

for L=1:1000
    N = 100; 
    lam = 1;
    mu = 1/lam;
    y = exprnd(mu,[1,N]);
    samp_mean_y(L) = sum(y)/N;
end

z = sum(x)/sum(y)

%4.1.f
for L=1:1000
    sig = 1;
    N=10000;
    U=rand(1,N);
    x = sqrt(-2*(sig^2)*log(1-U));
    samp_mean_x(L) = sum(x)/N;
end

for L=1:1000
    N = 10000; 
    lam = 1;
    mu = 1/lam;
    y = exprnd(mu,[1,N]);
    samp_mean_y(L) = sum(y)/N;
end

z = sum(x)/sum(y)

