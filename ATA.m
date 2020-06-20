function y = ATA(f, R, alpha, n)

% Reshape our Phantom into the n-by-n image from vector form.

f = reshape(f, [n, n]);

y = R(f) + alpha * f;
%y = iradon(radon(f, angles), angles, 'linear', 'none', 1, n) + alpha * f;

y = y(:);

end