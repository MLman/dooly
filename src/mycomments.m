function mycomments(varargin)
if nargin ==1
    disp(['%',upper(varargin{1})]);
end
%disp('%\n%');
system('echo -e "%\n%\n%   See Also:\n";date +"%%   $ Hyunwoo J. Kim $  $ %Y/%m/%d %H:%M:%S (%Z) $"');
