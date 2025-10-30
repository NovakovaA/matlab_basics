clc
clear
close all
% task2
inText = 'Toto je druHY zaPOctovy test';
[outText] = switch_case(inText);
disp (outText)
function [outText] =switch_case(inText)
B=isstrprop(inText,'lower'); %% vytvory pravdivostnou maticy B, pro kazdy character jestly je "lower"
for i=1:length(B)
    if B(i)==1
       inText(i)=upper(inText(i)) ;
    else 
       inText(i)=lower(inText(i));
    end
end
outText=char(inText);
end
