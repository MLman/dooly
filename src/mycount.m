function [elements, counts, ic] = mycount(data)
%MYCOUNT counts the number of occurrence of unqie items.
%
%
%   See Also:

%   $ Hyunwoo J. Kim $  $ 2016/11/07 22:30:38 (CST) $

elements = unique(data);
counts = zeros(size(elements,1),1);
ic = zeros(length(data),1);

for i =1:length(data)
    c = counts(elements==data(i));
    counts(elements==data(i)) = c+1;
    ic(i) = c+1;
end

