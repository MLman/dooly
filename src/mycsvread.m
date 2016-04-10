function csvdata = mycsvread(fname)
%MYCSVREAD reads a CSV file and make it into a matrix of cells.
%
%   csvdata = mycsvread('f.csv');
%
%   See also CSVREAD, IND2SUB, STRTRIM

%   Hyunwoo J. Kim
%   $Revision: 0.1 $  $Date: 2014/07/17 11:40:53 $

    fid = fopen(fname);
    tline = fgets(fid);
    fclose(fid);
    headers = strsplit(tline,',');
    ncols = length(headers);
    out=textread(fname, '%s','delimiter',',','emptyvalue', NaN);
    data = reshape(out(ncols+1:end),ncols,[])';
    csvdata.colnames = strtrim(headers);
    csvdata.data = data;
end
