%% Returns the Radon-transformed image of phantom() with given noise.

function g_noisy = noisy_phantom(angles, sigma, n)

phan = phantom('Modified Shepp-Logan', n);

g_noisy = radon(phan, angles);
g_noisy = g_noisy + (randn(size(g_noisy)) * sigma);

end