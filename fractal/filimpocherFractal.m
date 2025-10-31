clc, clear,clf
hold on
axis equal
grid on
bodyZaciatok = [0;0]; %% koren stromu
bodyKoniec = [0;1];   %% trup stromu
velkost = 0.5;        %% skraceni 0,5 = polovicna ciara kazdy fraktal, 0,7 vyzera pekne
uhol1 = 45;           %% uhel skoseni prvni vetvy
uhol2 = -45;          %% uhel skoseni druhe vetvy
opakovanie = 10;      %% pocet vetveni doporucujem max asi 10, pocet bodu ruste exponencionalne 2^n
plot([bodyZaciatok(1,:) bodyKoniec(1,:)],[bodyZaciatok(2,:) bodyKoniec(2,:)])
bodyZaciatok=bodyKoniec;
smerVector=bodyKoniec;
for i=1:opakovanie
    [bodyZaciatok,velkost,smerVector] = fractal(bodyZaciatok,smerVector,velkost,uhol1,uhol2);
end
hold off
