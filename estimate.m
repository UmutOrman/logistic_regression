function [ result ] = estimate( w, x)
%ESTIMATE Summary of this function goes here
%   Detailed explanation goes here
    if sigmoid(w,x) >= 0.5        %x is a data instance
        result = 1;
    else
        result = 0;
    end
end

