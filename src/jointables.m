function tout = jointables(table1, table2, oncol1, oncol2, varargin)
%JOINTABLE joins two tables. Inner join in SQL.
%
%   ONCOL1 and ONCOL2 are the columns used for identifying the same row.
%
%   tout = jointables(table1, table2, oncol1, oncol2)
%   tout = jointables(table1, table2, oncol1, oncol2, idxColCSV1)
%   tout = jointables(table1, table2, oncol1, oncol2, idxColCSV1, idxColCSV2)
%
%   See Also: MERGEMETADATA

%   $ Hyunwoo J. Kim $  $ 2017/09/21 12:18:14 (CDT) $

    % Intersection
    try
        [~, ia, ib ] = intersect(table1(:,oncol1),table2(:,oncol2));
    catch ME
        if strcmp(ME.identifier, 'MATLAB:table:setmembership:DisjointVars')
            var1 = table1.Properties.VariableNames{oncol1};
            var2 = table2.Properties.VariableNames{oncol2};
            warning(sprintf('Tables are joined by two different variables: ''%s'', ''%s''.', var1,var2));
        end
        
        [~, ia, ib ] =  intersect(table2cell(table1(:,oncol1)),table2cell(table2(:,oncol2)));
    end
    
    if nargin >=5 && ~isempty(varargin{1})
        idxColCSV1 = varargin{1};
    else
        idxColCSV1 = 1:size(table1,2);
        idxColCSV1(oncol1) = [];
        idxColCSV1 = [oncol1, idxColCSV1]; % The Key column at the first.
    end
    if nargin >= 6 && ~isempty(varargin{2})
        idxColCSV2 = varargin{2};
    else
        idxColCSV2 = 1:size(table2,2);
        idxColCSV2(oncol2) = []; % No redundant key column.
    end
    
    tout = [table1(ia, idxColCSV1), table2(ib, idxColCSV2)];

end
