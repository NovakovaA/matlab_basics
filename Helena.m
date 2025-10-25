clc, clear, close all;
shg;

data = readtable('data\weather.txt');
table_size = size(data);
table_rows = table_size(1);
city_search = "Helena";
city_count = 0;
X_data = [];
Y_data = datetime();

for i = 1:table_rows
    if string(table2array(data(i, "City"))) == city_search
        city_count = city_count + 1;
        X_data(city_count) = double(table2array(data(i, "WindSpeed")));
        Y_data(city_count) = table2array(data(i, "Date"));
    end
end

for i = 1:numel(X_data)
    X_data(i) = X_data(i) *0.44704;
end

highest_speed = find(X_data == max(X_data));

plot(Y_data, X_data)
hold on

yline(max(X_data))
yline(min(X_data))

string_date = datestr(Y_data(highest_speed));
disp("The highest wind speed occurred on " +string_date + ", reaching a magnitude of " + X_data(highest_speed) + " [m/s].")
title("Wind in Atlanta");
xlabel("Date");
ylabel("Wind [m.s-1]");
