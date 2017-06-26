function [ w, history, history_valid, converged ] = algorithm( w, X , y , alfa, repetition, X_val, y_val )
%ALGORITHM Summary of this function goes here
%   Detailed explanation goes here
    % implementation of gradient descent algorithm ,
    % which holds history of objective function value and accuracy
    % repetition -> number of updates, alfa -> learning rate
    % X -> Matrix for data instances , 
    % y -> true class labels of data instances
    % w -> parameter vector(9x1)
    history = zeros(repetition,2 );
    history_valid = zeros(repetition, 2);
    converged = 0;
    for i = 1:repetition
                if w ~= update(X, w, alfa, y)
                    w = update(X, w , alfa, y);
                    history(i,1) = objective_function(w, X, y);
                    history(i,2) = accuracy(X, w , y);
                    history_valid(i,1) = objective_function(w, X_val, y_val);
                    history_valid(i,2) = accuracy(X_val, w, y_val);
                else   
                    %still updates for understanding local mins and global min
                    w = update(X, w , alfa, y);
                    history(i,1) = objective_function(w, X, y);
                    history(i,2) = accuracy(X, w , y);
                    history_valid(i,1) = objective_function(w, X_val, y_val);
                    history_valid(i,2) = accuracy(X_val, w, y_val);
                    converged = 1;
                end        
   end
end

