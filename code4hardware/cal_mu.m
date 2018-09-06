function [ mu ] = cal_mu( RR_ratio )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
Rd_ratio = RR_ratio * sqrt(3);
rd_ratio = 1.5 * RR_ratio;
hd_ratio = rd_ratio - tan(pi/12)/2;

mu = (atan((Rd_ratio + 1)/(2*hd_ratio)) + atan((Rd_ratio - 1)/(2*hd_ratio))) ...
    *180/pi;

end

