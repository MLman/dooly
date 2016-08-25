function mx = mymat2cell(carray)
%MYMAT2CELL makes a 2D matrix to a 2D cell array without parameters.
%
%
%   See Also: MAT2CELL

%   $ Hyunwoo J. Kim $  $ 2015/10/17 23:30:21 (CDT) $

    [nrows, ncols ] = size(carray);
    mx = mat2cell(carray, ones(nrows,1), ones(1,ncols));
end
