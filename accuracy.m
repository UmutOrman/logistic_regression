function [ acc ] = accuracy( X, w , y)
%ACCURACY Summary of this function goes here
%   Detailed explanation goes here
    % Accuracy calculator in vectorized fashion with help of
    % 'sigmoid_matrix' function
    sig_matrix = round(sigmoid_matrix(w, X));
    loss = xor(sig_matrix, y);
    loss = sum(loss);
    acc = (1-loss/size(sig_matrix,2))*100;
    
    %not working
    %loss = symsum(not(isequal(estimate(w, X(:,i)), y(:,i))), i, 1, n);
    
end

