function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

% temporary overwrite for debug
%num_iters = 5
for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %

    predictions = X * theta;        % Predictions vector of hypothesis on examples
    error = predictions - y;        % Error vector between prediction and actual value
    delta = X' * error;

    theta = theta - (alpha / m) * delta;


    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);

    % debug to check if cost function converges 
    %fprintf('Cost J - iteration %d: [%.3f],\n', iter, J_history(iter) );

end

end