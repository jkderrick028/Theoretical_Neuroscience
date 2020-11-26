function y = gaussian_distribution(mu,std,x)

y = 1/(sqrt(2*pi)*std)*exp(-(x-mu)^2/(2*std^2));
