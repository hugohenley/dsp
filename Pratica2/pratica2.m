clear all
close all

figure(1)
subplot(4,3,1),subimage(um,summer)
axis off
subplot(4,3,2),subimage(dois,jet)
axis off
subplot(4,3,3),subimage(tres,winter)
axis off
subplot(4,3,4),subimage(quatro,copper)
axis off
subplot(4,3,5),subimage(cinco,autumn)
axis off
subplot(4,3,6),subimage(seis,flipud(winter))
axis off
subplot(4,3,7),subimage(sete,flipud(cool(128)))
axis off
subplot(4,3,8),subimage(oito,redbluecmap)
axis off
subplot(4,3,9),subimage(nove,redgreencmap)
axis off
subplot(4,3,10),subimage(aster,flipud(spring))
axis off
subplot(4,3,11),subimage(zero,flipud(hot(128)))
axis off
subplot(4,3,12),subimage(tralha,flipud(summer))
axis off

figure(2)
%colormap white
m1 = zeros(32, 32);
%m2 = zeros(32,32);
%m1= ones(32,32)*32
%m2 = [m1 m1 m1 m1,244)*64
teclado = [m1 m1 m1 m1 m1 m1 m1 ...
    ;m1 um m1 dois m1 tres m1 ...
    ;m1 m1 m1 m1 m1 m1 m1 ...
    ;m1 quatro m1 cinco m1 seis m1 ...
    ;m1 m1 m1 m1 m1 m1 m1 ...
    ;m1 sete m1 oito m1 nove m1 ...
    ;m1 m1 m1 m1 m1 m1 m1 ...
    ;m1 aster m1 zero m1 tralha m1 ...
    ;m1 m1 m1 m1 m1 m1 m1;]
%teclado = [m2 m2 m2 m2 m2 m2 m2;m2 um m2 dois m2 tres m2;m2 m2 m2 m2 m2 m2 m2;m2 quatro m2 cinco m2 seis m2;m2 m2 m2 m2 m2 m2 m2;m2 sete m2 oito m2 nove m2;m2 m2 m2 m2 m2 m2 m2;m2 aster m2 zero m2 tralha m2;m2 m2 m2 m2 m2 m2 m2;]
%teclado
image(teclado)
%colormap(summer)
grid off
%colordef white
%teclado = [um dois tres;quatro cinco seis;sete oito nove; aster zero tralha]
%whitebg(figure(2))
%image(m1)
%figure(3)
%image(m2)
%axis image

