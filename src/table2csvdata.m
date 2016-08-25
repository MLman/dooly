function csvdata = table2csvdata(T)
%TABLE2CSVDATA
%
%
%   See Also: CSVDATA2TABLE

%   $ Hyunwoo J. Kim $  $ 2016/08/01 23:32:45 (CDT) $
    csvdata.colnames = T.Properties.VariableNames;
    csvdata.data = table2cell(T);
end