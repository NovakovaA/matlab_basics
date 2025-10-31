
function [bodyZaciatok,velkost,smerVector] = fractal(bodyZaciatok,smerVector,velkost,uhol1,uhol2)
    R1 = [cosd(uhol1),-sind(uhol1);sind(uhol1),cosd(uhol1)];  %% matica rotacie pre uhol1
    R2 = [cosd(uhol2),-sind(uhol2);sind(uhol2),cosd(uhol2)];  %% matica rotacie pre uhol2
    bodyZaciatok=[bodyZaciatok,bodyZaciatok];  %% 2x tolko vetiev = zdvojnasobnenie offsetov pre vector sucet
    bodyKoniec1 = [];    %%predvytvorenie pomocnich matic
    bodyKoniec2 = [];
    smerVector1 = [];
    for i=1:length(bodyZaciatok)/2
        bodyKoniec1 = horzcat(bodyKoniec1,R1*smerVector(:,i)); %%otocenie predchadzajuceho vectora
        smerVector1(:,i) = bodyKoniec1(:,i); %%zapametanie tohto vectora pre buduce pouzitie
        bodyKoniec1(:,i) = bodyKoniec1(:,i)+bodyZaciatok(:,i); %%offset aby zacinal na konci posledneho
        plot([bodyZaciatok(1,i) bodyKoniec1(1,i)],[bodyZaciatok(2,i) bodyKoniec1(2,i)]); %%plotovanie
    end
    for i=1:length(bodyZaciatok)/2
        bodyKoniec2 = horzcat(bodyKoniec2,R2*smerVector(:,i));
        smerVector2(:,i) = bodyKoniec2(:,i);
        bodyKoniec2(:,i) = bodyKoniec2(:,i)+bodyZaciatok(:,i);
        plot([bodyZaciatok(1,i) bodyKoniec2(1,i)],[bodyZaciatok(2,i) bodyKoniec2(2,i)]);
    end
    bodyZaciatok=[bodyKoniec1,bodyKoniec2];
    smerVector = [smerVector1,smerVector2].*velkost;
end

    