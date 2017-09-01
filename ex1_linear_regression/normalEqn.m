function [theta] = normalEqn(X, y)
%NORMALEQN Computes the closed-form solution to linear regression 
%   NORMALEQN(X,y) computes the closed-form solution to linear 
%   regression using the normal equations.

theta = zeros(size(X, 2), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the code to compute the closed form solution
%               to linear regression and put the result in theta.
%

% ---------------------- Sample Solution ----------------------

% Note
% Using this formula does not require any feature scaling, and you will get
% an exact solution in one calculation: there is no \loop until convergence" like
% in gradient descent.

theta = (X' * X)^-1 * X' * y;

% note: can also be written with pinv function: pinv(X' * X) * X' * y

% -------------------------------------------------------------


% ============================================================

end