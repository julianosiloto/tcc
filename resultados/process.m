function [ meanInput, errBar ] = process( input )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
numRemove = 5;

for i=1:numRemove
    [worse, worsePos] = max(input,[], 2);
    input(:, worsePos(end)) = []  ;
    
    [best, bestPos] = min(input,[], 2);
    input(:, bestPos(end)) = []  ;
end


input = log10(abs(input));

meanInput = mean(input, 2);
errBar = std(input,0, 2);

errBar = errBar(2:end, :);
meanInput = meanInput(2:end, :);

end

