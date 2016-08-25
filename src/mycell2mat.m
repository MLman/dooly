function Xmat = mycell2mat(X)
ix = cellfun(@isempty,X);
X(ix) = {nan};
Xmat = cell2mat(X);
