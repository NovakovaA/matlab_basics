clc, clear, close all;
shg;

data = readtable("temp.txt");

Y_data = (table2array(data(1:360, "Var1")));
X_data = 1:360;

plot(X_data, Y_data)
hold on;

thirty_days = 0;
number = 0;
average_30 = [];
month = 1;
all_year = [];
for i = 1:360
    thirty_days = thirty_days + 1;
    number = Y_data(i) + number;
    if(thirty_days == 30)
        thirty_days = 0;
        average_30(month) = number;
        for j = 0:(-1):(-29)
            all_year(month*30 + j) = number;
        end
        month = month +1;
        number = 0;
    end
end

all_year = all_year/30;
plot(X_data, all_year, 'r', LineWidth= 5)
average_30 = average_30/30;
xlabel("Dny")
ylabel("Teplota [°C]")
legend('Teplota','Průměrná teplota')
