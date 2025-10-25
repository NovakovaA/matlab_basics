clc, clear

r1 = 5;
r2 = 2;
x = randi([-100, 100], 1, 50);
y = randi([-100, 100], 1, 50);

for i = 1: 50
    moje_hvezda(r1, r2, x(i), y(i))
    set(gca,'color',"#030326")
end


function [] = moje_hvezda(r1, r2, x, y)
n = 12; 
theta = linspace(0, 2*pi, n + 1);

t = theta(2)/2;

x1 = r1 *cos(theta);
y1 = r1 *sin(theta);

x2 = (r2) *cos(theta - t);
y2 = (r2) *sin(theta - t);
x3 = (r2) *cos(theta + t);
y3 = (r2) *sin(theta + t);

for i = 1:numel(theta)
    line([x2(i) + x, x1(i) + x], [y2(i) + y, y1(i) + y],'Color', "y")
    line([x3(i) + x, x1(i) + x], [y3(i) + y, y1(i) + y],'Color', "y")
end
axis equal
end