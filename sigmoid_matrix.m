function [ result ] = sigmoid_matrix( w, X )
%SIGMOID_MATRIX Summary of this function goes here
%   Detailed explanation goes here 
    % Vectorized fashion sigmoid calculator for cost function and gradient
    % X -> Matrix for data instances
    % results a vector with sigmoid of each data instance as elements
    result = 1./(1 + exp(-(w' * X)));
end

