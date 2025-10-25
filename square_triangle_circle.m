clc, clear, close all;
shg;

center_x = rand *5;
center_y = rand *5;

phi = linspace(0, 2*pi, 360); % 360 rovnoměrných úhlů od 0 do 2π
x = center_x + cos(phi);
y = center_y + sin(phi);

axis equal;
hold on


plot(x, y, 'r') % circle
plot(center_x, center_y, 'ro', 'MarkerFaceColor', 'red', 'MarkerSize', 20)

center_x = rand *5;
center_y = rand *5;

phi = linspace(pi/2, 2*pi+pi/2, 4);
x = center_x + cos(phi);
y = center_y + sin(phi);

plot(x, y, 'g-')
plot(center_x, center_y, 'g^', 'MarkerFaceColor', 'green', 'MarkerSize', 20)

center_x = rand *5;
center_y = rand *5;

phi = linspace(pi/4, 2*pi+pi/4, 5);
x = center_x + cos(phi);
y = center_y + sin(phi);

plot(x, y, 'Color', 'blue')
plot(center_x, center_y, 'bsquare', 'MarkerFaceColor', 'blue', 'MarkerSize', 20)
axis equal;
