function [ updated ] = update( X, w, alfa, y )
%UPDATE Summary of this function goes here
%   Detailed explanation goes here
    %Simultenaous update in a vectorized fashion
    % basic update function in vectorized fashion
    updated = w - (alfa * gradient_vec(w, X, y));

end

