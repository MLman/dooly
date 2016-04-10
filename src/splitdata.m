function [idxTrain, idxTest] = splitdata( nsamples, r)
%SPLITDATA splits data. R is ratio of training data to test data.
%
%   R is [train, test] or its transpose.
%
%   See Also: SHUFFLE

%   $ Hyunwoo J. Kim $  $ 2015/01/26 14:07:49 (CST) $

    r = r/sum(r);
    nTrain = floor(nsamples*r);
    % nTest = nsamples - nTrain;
    idxTrain = 1:nTrain;
    idxTest = (nTrain+1):nsamples;
end