theta = 45:0.1:60;
nu = zeros(size(theta));
H = zeros(size(theta));
Hm = zeros(size(theta));

RR_ratio = 1.5;
d = 70;
a = 30;
ad_ratio = a/d;

rd_ratio = 1.5 * RR_ratio;
r = d*rd_ratio;

for k = 1:length(H)
    nu(k) = cal_nu( RR_ratio, ad_ratio, theta(k) );
    H(k) = cal_H( RR_ratio, d, a, theta(k) );
    Hm(k) = cal_Hm( RR_ratio, d, theta(k) );
end
W = 2 * H ./ tan(theta*pi/180);

figure;
hold on;
plot(theta, nu);
figure;
hold on;
plot(theta, H, theta, W, theta, H - Hm);
legend('H', 'W', 'H0')
figure;
hold on;
plot3(theta, H, nu,theta, W, nu,theta, H-Hm, nu);
legend('H', 'W', 'H0')

