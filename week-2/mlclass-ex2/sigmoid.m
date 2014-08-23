function g = sigmoid(z)
%SIGMOID Compute sigmoid functoon
%   J = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).

if(size(z,1) == 1 && size(z,2) == 1)
	g = 1/(1 + exp(-z));
else 
	row = size(z,1);
	col = size(z,2);
	for i = 1:row
		for j=1:col
			z(i,j) = 1/(1 + exp(-(z(i,j))));
		end
	end

	g = z;
endif


% =============================================================

end
