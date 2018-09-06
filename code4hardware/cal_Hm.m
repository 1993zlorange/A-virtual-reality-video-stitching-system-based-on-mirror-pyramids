function [ Hm ] = cal_Hm( RR_ratio, d, theta )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

rd_ratio = 1.5 * RR_ratio;
hd_ratio = rd_ratio - tan(pi/12)/2;

r = d*rd_ratio;
h = d*hd_ratio;

theta = theta/180*pi;

Hm= r*tan(theta) - h*cos(theta)*sin(theta);

end

