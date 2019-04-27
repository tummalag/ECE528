close all;
clear all;
clc;

K=100;
L=1000;
N=K*L;

for a=[0.25, 0.98]
    Y=generate_Y(a, N);
    [S1, f1]=periodogram_psd(Y, K, L);
    [S2, f2]=corr_psd(Y, K, L);
    [S3, f3]=ref_psd(a);
    figure;
    hold on;
    plot(f1, S1);
    plot(f2, S2);
    plot(f3, S3);
    legend('Periodogram ', 'Limited autocorrelation', 'Theoretical curve');
end

function Y=generate_Y(a, N)
% Generate Y sequence
    Y=0;
    for n=2:N
        Y=[Y; a*Y(end)+randn];
    end
end

function [S, f]=ref_psd(a)
% The reference PSD
    f=0:0.01:1;
    f=f(1:end-1);
    S=1./(1+a^2-2*a*cos(2*pi*f)).';
    S=fftshift(S)/max(S);
end

function [S, f]=periodogram_psd(Y, K, L)
% Periodogram method
    S=zeros(K, 1);
    for l=1:L
        Yl=Y((l-1)*K+1:l*K);
        Yl=Yl.*hanning(K);
        P=abs(fft(Yl)).^2/K;
        S=S+P;
    end
    S=fftshift(S/L);
    S=S/max(S);
    f=0:1/K:1;
    f=f(1:end-1);
end

function [S, f]=corr_psd(Y, K, L)
% Limited autocorrelation method
    R=zeros(2*K-1, 1);
    for l=1:L
        Yl=Y((l-1)*K+1:l*K);
        Rl=xcorr(Yl);
        R=R+Rl;
    end
    R=R/L;
    S=fftshift(abs(fft(fftshift(R))));
    S=S/max(S);
    f=0:1/(2*K-1):1;
    f=f(1:end-1);
end
        
