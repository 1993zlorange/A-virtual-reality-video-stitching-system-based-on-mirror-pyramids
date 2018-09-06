function [ delta ] = cal_delta( RR_ratio, ad_ratio, theta )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
%Rd_ratio = RR_ratio * sqrt(3);
rd_ratio = 1.5 * RR_ratio;
hd_ratio = rd_ratio - tan(pi/12)/2;
ha_ratio = hd_ratio / ad_ratio;

theta = theta/180*pi;

delta = sqrt(((1 - cos(2*theta)/8)) / (2*ha_ratio^2*(1 - cos(2*theta)) + ha_ratio*sin(2*theta) + 1/4)) ...
    *180/pi;

end

