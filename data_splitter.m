function [ X_train, X_test, Y_train, Y_test ] = data_splitter( X,y )
%DATA_SPLITTER Summary of this function goes here
%   Detailed explanation goes here
    % splits the data as 70% training data and 30% test data
    num_points = size(X,2);
    split_point = round(num_points*0.7);
    seq = randperm(num_points);
    Y = y';
    X_train = X(:,seq(1:split_point));
    Y_train = Y(seq(1:split_point));
    X_test = X(:,seq(split_point+1:end));
    Y_test = Y(seq(split_point+1:end));
end

