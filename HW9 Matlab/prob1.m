close all;
clear all;
clc;

N=1000;

for L=[1, 100]
    K=N/L;
    X=generate_X(N);
    [S1, f1]=periodogram_psd(X, K, L);
    [S2, f2]=ref_psd;
    figure;
    hold on;
    plot(f1, S1);
    plot(f2, S2);
    legend('Periodogram ', 'Theoretical curve');
end

function X=generate_X(N)
% Generate Y sequence
    U=randn(N+1, 1);
    X=2*U(2:end)-4*U(1:N);
end

function [S, f]=ref_psd
% The reference PSD
    f=0:0.01:1.';
    f=f(1:end-1);
    S=20-16*cos(2*pi*f);
    S=fftshift(S)/max(S);
end

function [S, f]=periodogram_psd(X, K, L)
% Periodogram method
    S=zeros(K, 1);
    for l=1:L
        Xl=X((l-1)*K+1:l*K);
        Xl=Xl.*hanning(K);
        P=abs(fft(Xl)).^2/K;
        S=S+P;
    end
    S=fftshift(S/L);
    S=S/max(S);
    f=0:1/K:1;
    f=f(1:end-1);
end
        
