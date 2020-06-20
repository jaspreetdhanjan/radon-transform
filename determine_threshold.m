function t_val = determine_threshold(h, v, d, range, percentage)

%
% Given a set cell of coeffecient values for the Haar transform, a range
% and a percentage, will return the optimal thresholding value.
%
% Percentage must be a value between 0 and 1.
%
% Jaspreet Singh Dhanjan
% Inverse Problems
%

n = numel(range);
coeff = [];

% Unwrap each of the cells and put into our vector of coefficients.

for i = 1 : n
	mat_h = h{i};
	mat_v = v{i};
	mat_d = d{i};
		
	coeff = [coeff, reshape(mat_h, [1, numel(mat_h)])];
	coeff = [coeff, reshape(mat_v, [1, numel(mat_v)])];
	coeff = [coeff, reshape(mat_d, [1, numel(mat_d)])];
end

% Now find the % smallest

coeff = sort(coeff, 'ComparisonMethod', 'abs');

index = floor(numel(coeff) * percentage)

t_val = coeff(index);

end