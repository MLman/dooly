function fnames = getfilenames(pattern)
%
files = dir(pattern);
fnames = arrayfun(@(i) files(i).name, 1:length(files),'UniformOutput',0);
