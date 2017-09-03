function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.


% Vectorized version of Cost Function
% For the parameter vector θ (of type ℝn+1 or in ℝ(n+1)×1, the cost function is:
% J(θ) = 1/2m (Xθ−y⃗ )T * (Xθ−y⃗)
% where 
%  T is the transposed matrix
%  θ = theta
%  y⃗  denotes the vector of all y values.

predictions = X * theta;			% Predictions of hypothesis on examples
sqrErrors   = (predictions - y).^2;	% Squared errors

J = 1/(2*m) * sum(sqrErrors);		% Cost function


% =========================================================================

end
