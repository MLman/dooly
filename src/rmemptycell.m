function c = rmemptycell(c)
%RMEMPTYCELL removes empty cells from c.
%
%
%   See Also: CELLFUN, ISEMPTY

%   $ Hyunwoo J. Kim $  $ 2014/11/11 22:08:40 (CST) $
idx = ~cellfun(@isempty,c);
c = c(idx);
