clc, clear, close all;

shg;

n = 8;
m = 6;
r = 5;


%plot(center_x, center_y, 'ro', 'MarkerFaceColor', 'red', 'MarkerSize', 20)

for i = 1:m
    phi = linspace(0, 2*pi, n + 1); % 360 rovnoměrných úhlů od 0 do 2π
    x = r *cos(phi);
    y = r *sin(phi);
    if mod(i,2) == 0
        plot(x, y, 'LineWidth', 2, 'Color', 'r', Marker='.', MarkerEdgeColor='b', MarkerSize = 20) % circle
        hold on
    else
        plot(x, y, 'LineWidth', 5, 'LineStyle',':', 'Color', 'k', Marker='.', MarkerEdgeColor='b', MarkerSize = 30) % circle
        hold on
    end
    r = r + 1;
end


axis equal;
hold on