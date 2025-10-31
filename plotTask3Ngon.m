clc,clear, close all
N=6;
n=10;
R=1;
r=0.1;
t=linspace(0,2*pi,N+1);
t2=linspace(0,2*pi,n+1);
x=cos(t)*R;
y=sin(t)*R;
plot(x,y,'b')
hold on
axis equal
grid on
x2=cos(t2)*r;
y2=sin(t2)*r;
for i=1:N
   plot(x2+(x(i)),y2+y(i),'r*'); 
end
hold off