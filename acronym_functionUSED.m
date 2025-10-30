clc, clear;

text = 'Toto je druhy zapoctovy test';


function [] = acronym(text)
    text = split(text);
    %new_text = acronym(text);
    disp(text)

    first_word = '';
    first_letter = '';
    final_name = '';
    for i = 1:length(text)
        first_word = text{i, 1};
        first_letter = first_word(1);
        final_name(i) = first_letter;
    end
    final_name = upper(final_name);
    disp(final_name)
    
end

acronym(text);
