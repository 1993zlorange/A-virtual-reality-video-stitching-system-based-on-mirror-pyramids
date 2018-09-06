function [ dgamma ] = cal_dgamma( RR_ratio )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
da_ratio = 2*cos(pi/12);
Rd_ratio = RR_ratio * sqrt(3);
Ra_ratio = Rd_ratio * da_ratio;

dgamma = sin(pi/12) * (Ra_ratio - sqrt(3)*da_ratio) /...
    sqrt((1+Ra_ratio^2-2*sin(pi/4)*Ra_ratio) * (1+Ra_ratio^2-2*cos(7/12*pi)*Ra_ratio))...
    *180/pi;

end

