function [strides] = stride_norm(input)
%Linear interpolation of strides to 101 points 

Q0 = numel(input);
t0 = [1:Q0]';
t1 = linspace(1, Q0, 101)';
  strides = interp1(t0, input, t1);


end

