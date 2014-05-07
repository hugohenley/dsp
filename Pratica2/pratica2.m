clear all
close all

figure(1)
image(um);colormap(summer(32));

figure(2)
image(dois);colormap(jet(32));

figure(3)
image(tres);colormap(winter);

figure(4)
image(quatro);colormap(copper);

figure(5)
image(cinco);colormap(autumn);

figure(6)
image(seis);colormap(flipud(winter));

figure(7)
image(sete);colormap(flipud(cool(128)));

figure(8)
image(oito);colormap(redbluecmap);

figure(9)
image(nove);colormap(redgreencmap);

figure(10)
image(aster);colormap(flipud(spring));

figure(11)
image(zero);colormap(flipud(hot(128)));

figure(11)
image(zero);colormap(flipud(summer));

figure(12)

subplot(4,3,1),subimage(um,summer(32))
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


figure(13)
teclado = zeros(288,224);
cmap0 = [1 1 1];
colormap(cmap0);
image(teclado)
hold on
subimage(32,32,um,summer(32))
subimage(96,32,dois,jet(32))
subimage(160,32,tres,winter(32))
subimage(32,96,quatro,copper(32))
subimage(96,96,cinco,autumn(32))
subimage(160,96,seis,flipud(winter(32)))
subimage(32,160,sete,flipud(cool(128)))
subimage(96,160,oito,redbluecmap(32))
subimage(160,160,nove,redgreencmap(32))
subimage(32,224,aster,flipud(spring(32)))
subimage(96,224,zero,flipud(hot(128)))
subimage(160,224,tralha,flipud(summer(128)))
hold off

figure(14)
teclado2 = zeros(288,224);
cmap0 = [0 0 0];
colormap(cmap0);
image(teclado2)
hold on
subimage(32,32,um,summer(32))
subimage(96,32,dois,jet(32))
subimage(160,32,tres,winter(32))
subimage(32,96,quatro,copper(32))
subimage(96,96,cinco,autumn(32))
subimage(160,96,seis,flipud(winter(32)))
subimage(32,160,sete,flipud(cool(128)))
subimage(96,160,oito,redbluecmap(32))
subimage(160,160,nove,redgreencmap(32))
subimage(32,224,aster,flipud(spring(32)))
subimage(96,224,zero,flipud(hot(128)))
subimage(160,224,tralha,flipud(summer(128)))
hold off

