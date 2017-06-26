function [ gradient ] = gradient_vec( w, X , y )
%GRADIENT_VEC Summary of this function goes here
%   Detailed explanation goes here
% where X is the matrix of data instances
% y is the matrix of true class values of X
    m = length(X);
    sig_matrix = sigmoid_matrix(w, X);
    sum = X * (sig_matrix - y)';
    gradient = sum / m;
    
    % not working 
    %gradient = 1/m * symsum((sigmoid(w,X(:,i)) - y(:,i))* X(:,i) , i, 1, m);

end

