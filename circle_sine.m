clc, clear, close all;
shg;

theta = linspace(0, 2*pi, 720);
D = 10;
N = 10;

x = cos(theta) *D/2;
y = sin(theta) *D/2;
z = sin(theta *N);

plot3(x(z >= 0), y(z >= 0), z(z >= 0), 'k*')
hold on;
plot3(x(z < 0), y(z < 0), z(z < 0), 'r.')
axis equal;
