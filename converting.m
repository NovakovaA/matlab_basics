clc, clear;
text = 'Toto je druhy zapoctovy test';

function [new_text] = convert_text(text)
    new_text = text;
    for i = 1:length(text)
        if (text(i) == ' ')
            new_text(i) = '_';
            if(i ~= 1 && (i-1) ~= ' ')
                new_text(i-1) = upper(text(i-1));
            end
        end
    end
    disp(new_text)
end

convert_text(text);