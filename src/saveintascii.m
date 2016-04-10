function saveintascii(mx,fname)
    fid = fopen(fname, 'wt');
    for i = 1:size(mx,1)
        fprintf(fid, '%d', mx(i,1));
        for j =2:size(mx,2)
            fprintf(fid, ' %d', mx(i,j));
        end
        fprintf(fid,'\n');
    end
    fclose(fid);
end