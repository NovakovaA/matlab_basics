clc, clear;

data = fileread("test1400\CestaDoStreduZeme.txt");

symbolfound = 0;
new_data = data;
current_char = 0;

for i = 1:length(data)
    if data(i) == '"'
        if symbolfound == 1
            for j = current_char:(i - 1)
                new_data(j) = upper(new_data(j));
                symbolfound = 0;
            end
        else
            current_char = i + 1;
            symbolfound = 1;
        end
    end
end

disp(new_data)