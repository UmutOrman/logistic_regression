function [ standartized ] = standardize( vec )
%STANDARTIZE Summary of this function goes here
%   Detailed explanation goes here
    % Another scaling method for improving our training perspective
    % called 'Standardization', you can check the link for details
    % https://en.wikipedia.org/wiki/Feature_scaling
    deviation = std(vec);
    meany = mean(vec);
    standartized = (vec - meany) / deviation;

end

