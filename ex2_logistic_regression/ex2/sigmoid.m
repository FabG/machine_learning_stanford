function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).

% Because we can deal with matrices we will convert the below formula to work with vectors/matrics
% For a matrix, your function should perform the sigmoid function on every element.
% g = 1 / [1 + exp(-z)];

g = 1 ./ (1 + e.^-z);

% =============================================================

% Debug plot
% x = -10:0.1:10;
% plot (x, sigmoid(x));

end
