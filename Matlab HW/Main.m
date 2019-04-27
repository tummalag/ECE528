clc;
clear;

x=my_bernoulli(0.6,20,1,0);

%      Analytical mean = mx
%      Analytical Variance = Vx

%      2.1.a
%           mx = p = 0.6
%           vx = p(1-p) = 0.6*0.4 = 0.24

mx=0.6;
vx=0.24;

%      System mean = mean_x
%      System Variance = var_x

mean_x = mean(x);
var_x = var(x);

%      Sample Mean = sam_mean_x
%      Sample Variance = sam_var_x

N=length(x)
sam_mean_x = sum(x)/N;
sam_var_x = sum((x-sam_mean_x).^2)/(N-1);



z=[mx vx mean_x var_x   sam_mean_x   sam_var_x]
display('      mx      vx        mean(x)   var(x)  sample mean(x)  sample var(x)')

figure
bar(z)
xlabel('mx  vx  mean(x)  var(x)  sample mean(x)   sample var(x)')
ylabel('Value')

%   The smaple mean and variance are same as the matlab function mean and
%   variance