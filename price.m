clc,clear,close all

t = readtable("prices.txt");
numDays = height(t.Var1);


yData = t.Var1;
xData = linspace(1,numDays,numDays);

plot(xData,yData,'b-')

hold on;
for i = 1:numDays/10
    idxstart = (i-1)*10 + 1;
    idxend = i10; % protect against last block

    [maxPrice, maxidx] = max(yData(idxstart:idxend));
    [minPrice, minidx] = min(yData(idxstart:idxend));

    % Correct absolute indices
    absMaxIdx = idxstart + maxidx - 1;
    absMinIdx = idxstart + minidx - 1;

    plot(xData(absMaxIdx), maxPrice, 'go', 'MarkerSize', 10);
    plot(xData(absMinIdx), minPrice, 'ro', 'MarkerSize', 10);
end