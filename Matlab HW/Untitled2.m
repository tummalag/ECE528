
X=my_bernoulli(0.6,20,1,0)

%      Sample Mean = sam_mean_x
%      Sample Variance = sam_var_x

%      System mean = mean_x
%      System Variance = var_x

mean_x = mean(x)

var_x = var(x)

sam_mean_x = sum(x)/N

sam_var_x = sum((x-sam_mean_x).^2)/(N-1)

