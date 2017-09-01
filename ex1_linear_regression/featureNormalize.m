function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%       

% Sample from matrix X = 
%   2104      3
%   1600      3
%   2400      3
%   1416      2


%%%% mean of each feature %%%%
mu = mean(X);

% => mu = [ 1.0000   2000.6809      3.1702 ]
%    => mean (sizeHouse)      = 2000 sq ft 
%    => mean (bedroomCount)   = 3


%%%% standard deviation of each feature %%%%
% note: standard deviation measure how spread out the numbers are for each feature
% a low value indictes that the data points tend to be close to the mean mu, also called expected value
% it's the square root of the Variance where Variance is the average of the Squared differences from the mean
sigma = std(X);

% => sigma =[ 0.00000   794.70235     0.76098 ]

%%%% normalization %%%%
% normalize each feature value from training data set
% normalized_value = (value - mean) / std

% loop for each feature where
%  - feature 1: sizeHouse
%  - feature 2: bedroomCount
for i = 1:size(X,2)
	X_norm(:,i) = ( X(:,i) - mu(i) ) / sigma(i);
end

% ============================================================


