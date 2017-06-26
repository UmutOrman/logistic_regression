function [ obj_val ] = objective_function( w, X , y)
%OBJECTIVE_FUNCTION Summary of this function goes here
%   Detailed explanation goes here
% where X is the matrix of data instances
% y is the matrix of true class values of X
    m = length(X);
    sig_matrix = sigmoid_matrix(w, X);
    sum = log(sig_matrix)*y' + log(1-sig_matrix)*(1-y)';
    obj_val = sum / (-m);
    
    %not working due to some evaluation issues on Matlab
    %obj_val = -(1/m) * symsum(y(:,i)*log(sigmoid(w,X(:,i))) + (1-y(:,i))*log(1-sigmoid(w,X(:,i))),i,1,m);

end

