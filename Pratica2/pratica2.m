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
teclado = [um dois tres;quatro cinco seis;sete oito nove; aster zero tralha]
image(teclado)
axis image

