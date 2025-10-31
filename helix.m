clc, clear, close all
hold on
m = 3;
n = 120*m;
R = 1;
H = 1;

z = linspace(0,1,n);
theta = linspace(0,2*pi*m,n);
x = R*cos(theta);
y = R*sin(theta);

for i = 1:m
    idxe = i*(n/m);
    idxst = (i-1)*(n/m)+1;
    if mod(i,2) == 1
        plot3(x(idxst:idxe),y(idxst:idxe),z(idxst:idxe),"r*");
    else
        plot3(x(idxst:idxe),y(idxst:idxe),z(idxst:idxe),"bo");
    end
end