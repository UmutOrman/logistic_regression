function [ scaled ] = scaler( vec)
%SCALER Summary of this function goes here
%   Detailed explanation goes here
    %Scaling method mentioned in the pdf
    minimum = min(vec);
    maximum = max(vec);
    scaled = (vec - minimum) / (maximum-minimum);

end

