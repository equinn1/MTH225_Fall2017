//Estimate the parameter alpha of a beta(1,alpha) distribution
data {
  int N;                        //sample size
  real<lower=0,upper=1> y[N];   //y consists of N real values between zero and one
}
parameters {
  real<lower=0> alpha;          //shape constrained to be nonnegative
}
model {
  alpha ~ normal(0,50);         //half-normal prior for shape
  
  y     ~ beta(1,alpha);        //beta likelihood given parameters 1,alpha
}
