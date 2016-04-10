function [XX, idx] = shuffle(X, varargin)
%SHUFFLE shuffles X (row vectors).
%
%
%   See Also: SPLITDATA, RANDPERM

%   $ Hyunwoo J. Kim $  $ 2015/01/26 14:04:44 (CST) $
    dim = 1;
    if nargin == 2
        dim = varargin{1};
    end
    idx = randperm(size(X,dim));
    if dim == 1
        XX = X(idx,:);
    elseif dim == 2
        XX = X(:,idx);
    elseif dim == 3 
        XX = X(:, :, idx);
    end
    
end