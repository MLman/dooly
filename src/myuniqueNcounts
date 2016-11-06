function [U, C] = myuniqueNcounts(data)
%MYUQNIENCOUNTS returns the unique elements from data and C is the counts
%of the elements.
%
%
%   See Also: UNIQUE

%   $ Hyunwoo J. Kim $  $ 2016/11/06 15:27:57 (CST) $

    [U, ~, ic]  = unique(data);
    C =zeros(length(U),1); % C is the counts of elements
    for i=1:length(U)
        C(i) = sum(ic==i);
    end
end