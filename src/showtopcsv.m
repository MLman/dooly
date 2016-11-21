function showtopcsv(csvdata)
    nentries = size(csvdata.data,1);
    [csvdata.colnames;csvdata.data(1:min(nentries,10),:)]
end