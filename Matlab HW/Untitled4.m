%% 4.1.a
for L=1:1000
    sig = 1;
    N=100;
    U=rand(1,N);
    x = sqrt(-2*(sig^2)*log(1-U));
    samp_mean_x(L) = sum(x)/N;
end
hist(samp_mean_x);

%samp_mean_x = sum(x)/N;
%sam_var_x = sum((x-samp_mean_x).^2)/(N-1);

%% 4.1.b
for L=1:1000
    sig = 1;
    N=10000;
    U=rand(1,N);
    x = sqrt(-2*(sig^2)*log(1-U));
    samp_mean_x(L) = sum(x)/N;
end
hist(samp_mean_x);

%% 4.1.c
for L=1:1000
    N = 100; 
    lam = 1;
    mu = 1/lam;
    y = exprnd(mu,[1,N]);
    samp_mean_y(L) = sum(y)/N;
end

hist(samp_mean_y);

%% 4.1.d
for L=1:1000
    N = 10000; 
    lam = 1;
    mu = 1/lam;
    y = exprnd(mu,[1,N]);
    samp_mean_y(L) = sum(y)/N;
end

hist(samp_mean_y);

