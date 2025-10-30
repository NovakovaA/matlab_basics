close all; clc; clear;

% Test 2 22/23 1400

%task 1
x = 0.0:0.1:4*pi;
y = sin(x);
thrs = 0.5;

plot(x, y);
hold on;
plot([x(1), x(end)], [thrs, thrs])
[tx, ty] = trigger(x, y, thrs);
plot(tx, ty)

%task 2
[r,f] = dekodek("signal.txt");
disp("Pocet stoupajicich hodnot: "+ r + ", klesajicich: " + f + ".")


function [TX, TY] = trigger(x, y, threshold)
    for i = 1:numel(x)
        if y(i)>threshold
            TY(i) = 1;
        else
            TY(i) = 0;
        end
        TX(i) = x(i);
    end
end

function [rising, falling] = dekodek(name)
    arguments
        name char
    end
    data = load(name);
    num = 0;
    rising = 0;
    falling = 0;
    for i = 1:numel(data)
        num = num + data(i);
        if data(i)>0
            rising = rising+1;
            line([i-1, i], [num-data(i), num], Color="b")
        else
            falling = falling+1;
            line([i-1, i], [num-data(i), num], Color="r")
        end
    end
end