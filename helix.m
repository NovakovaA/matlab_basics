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


clc,clear, close all
R=3;
M=3;
H=3;
z=0:(2*pi)/50:(2*pi)-2*pi/360;
x=sin(z)*R;
y=cos(z)*R;
for i=0:M-1
    if mod(i,2)==0
        plot3(x,y,((z/(2*pi)+i)/M)*H,'xb',markersize=8)
        hold on
        grid on
        axis equal
    else
        plot3(x,y,((z/(2*pi)+i)/M)*H,'.r',markersize=14)
    end
end
