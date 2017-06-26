function [ result ] = sigmoid( w , x )
%SIGMOID Summary of this function goes here
%   Detailed explanation goes here
    %x is a data instance
    result = 1 / (1 + exp(-(w' * x)));  

end

