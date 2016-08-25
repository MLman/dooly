function mytable = csvdata2table(csvdata)
%CSVDATA2TABLE
%
%
%   See Also: TABLE2CSVDATA

%   $ Hyunwoo J. Kim $  $ 2016/08/01 23:33:17 (CDT) $
    mytable = cell2table(csvdata.data,'VariableNames',csvdata.colnames);
end