function [ zTA ] = compute_grad_SL( X, z, GXTP, aleph )
%COMPUTE_ZTA Summary of this function goes here
%   Detailed explanation goes here

[N, K] = size(z);

zTP = bsxfun(@plus, z, -mean(z, 1))';

zTA = 2 * (zTP - (zTP * X) * GXTP) / N;

zTA(end, :) = zTA(end, :) * aleph;

end