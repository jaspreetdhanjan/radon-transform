function [hT, vT, dT] = thresholdFunction(h, v, d, range, t_val, sorh)

n = size(range, 2);

for i = 1 : n
	hT{i} = wthresh(h{i}, sorh, t_val);
	vT{i} = wthresh(v{i}, sorh, t_val);
	dT{i} = wthresh(d{i}, sorh, t_val);
end

end