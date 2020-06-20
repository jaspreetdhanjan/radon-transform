% Calculates the explicit matrix for of the Radon transform
%
% Parameters:
%	angles = the angles of the radon transform projection
%	m = number of angles multiplied by the number of projection samples
%	n = number of pixels in the image to transform
%

function A = explicit_radon_matrix(angles, n, m)

A = zeros(m, n * n);

index = 0;

for i = 1 : n
    for j = 1 : n
        f = zeros(n);
        f(i, j) = 1.0;
        
        g = radon(f, angles);
        
		index = index + 1;
        A(:, index) = reshape(g, [m, 1]);
    end
end

%A = sparse(A);

end