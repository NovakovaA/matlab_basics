clc, clear;

text = '+80-70-80=';

function output = sum_text(text)
    if ~contains(text, '=')
        output = [];
        return;
    end

    text = strrep(text, '=', ''); % strrep(string proměnná, co nahrazuji, čím to nahradím)
    text = strtrim(text); % strtrim() odstraní mezery na začátku a na konci, NE uprostřed textu

    parts = regexp(text, '([+-]\d+)', 'match'); % regexp(string proměnná,'vzor (pattern), který říká, co přesně chceme najít','match = samotné nalezené části textu')  
                                                % [+-] plus nebo minus, \d, jedna číslice (0-9), \d+	jedna nebo více číslic

    % Pokud nic nenajde, vrať []
    if isempty(parts)
        output = [];
        return;
    end

    
    nums = zeros(1, numel(parts));
    for i = 1:numel(parts)
        nums(i) = sscanf(parts{i}, '%d'); % sscanf - převede text na čísla '%d'čti jako celé číslo
    end

    % Sečti výsledky
    output = sum(nums);
end


sum_text(text)