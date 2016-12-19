function mycsvwrite(fname,csvdata)
%   $ Hyunwoo J. Kim $  $ 2016/08/02 00:51:39 (CDT) $

for i =1:length(csvdata.colnames)
    if ~isempty(strfind(csvdata.colnames{i},' '))
        prev_name = csvdata.colnames{i};
        new_name = strrep(csvdata.colnames{i},' ','_');
        csvdata.colnames{i} = new_name;
        fprintf('[Colname changed] %s -> %s\n',prev_name, new_name);
    end
end

outtab = csvdata2table(csvdata);
% No need CDR. CDT kills about 20 subjects.
writetable(outtab,fname) 
end
