clc, clear, close all;
shg;

hold on;
x1 = 0;
y1 = 0;
n = 10;
angle = 0;

for i = 1:n
    x2 = x1 + i*cosd(angle);
    y2 = y1 + i*sind(angle);
    if mod(i,2) == 0
        plot([x1, x2], [y1, y2], 'b:', LineWidth= 3)
        plot(x1, y1, Marker= '^', MarkerEdgeColor= 'b', MarkerSize= 10)
    else
        plot([x1, x2], [y1, y2], 'r--', LineWidth= 3)
        plot(x1, y1, Marker= 'o', MarkerEdgeColor= 'g', MarkerSize= 10)
    end
    
    x1 = x2;
    y1 = y2;
    angle = angle + 120;
end