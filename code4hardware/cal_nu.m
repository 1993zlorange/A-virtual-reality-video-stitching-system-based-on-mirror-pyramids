function [ nu ] = cal_nu( RR_ratio, ad_ratio, theta )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

delta = cal_delta( RR_ratio, ad_ratio, theta );

nu = 2 * (90 - theta  - delta);

end