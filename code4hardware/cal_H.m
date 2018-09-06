function [ H ] = cal_H( RR_ratio, d, a, theta )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
ad_ratio = a/d;

nu = cal_nu( RR_ratio, ad_ratio, theta );

rd_ratio = 1.5 * RR_ratio;
hd_ratio = rd_ratio - tan(pi/12)/2;

r = d*rd_ratio;
h = d*hd_ratio;

theta = theta/180*pi;
nu = nu/180*pi;

H = r*tan(theta) + h/(cot(nu/2)-cot(theta));

end

