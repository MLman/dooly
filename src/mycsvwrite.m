function mycsvwrite(fname,csvdata)
%   $ Hyunwoo J. Kim $  $ 2016/08/02 00:51:39 (CDT) $
outtab = csvdata2table(csvdata);
% No need CDR. CDT kills about 20 subjects.
writetable(outtab,fname) 
end
