%function struct2vars(X)
%STRUCT2VARS converts fields of a structure to vars in Workspace in matlab.
%
%
%   See Also: EVAL
%   $ Hyunwoo J. Kim $  $ 2014/11/01 18:20:35 (CDT) $
%    test.x = 1
%    test.name = 'afield'
%    structurename = 'test'
% 
eval(sprintf('names =fields(%s);',structurename));
for i = 1:length(names)
    fprintf('%s = %s.%s;\n',names{i},structurename,names{i});
    eval(sprintf('%s = %s.%s;',names{i},structurename,names{i}));
end