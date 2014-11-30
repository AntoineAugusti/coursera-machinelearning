function [U, S] = pca(X)
%PCA Run principal component analysis on the dataset X
%   [U, S, X] = pca(X) computes eigenvectors of the covariance matrix of X
%   Returns the eigenvectors U, the eigenvalues (on diagonal) in S
%

% Useful values
[m, n] = size(X);

% You need to return the following variables correctly.
U = zeros(n);
S = zeros(n);

% ====================== YOUR CODE HERE ======================
% Instructions: You should first compute the covariance matrix. Then, you
%               should use the "svd" function to compute the eigenvectors
%               and eigenvalues of the covariance matrix. 
%
% Note: When computing the covariance matrix, remember to divide by m (the
%       number of examples).
%

covariance = (1 / m) * X' * X;
[U, S, V] = svd(covariance);

% To find the minimal value of K that retains 99% of the variance
% diagonal = diag(S);
% for i = 1:n
% 	if ((1 - sum(diagonal(1:i)) / sum(diagonal)) <= 0.01)
% 		disp(i)
% 		break
% 	end
% end

% =========================================================================

end
