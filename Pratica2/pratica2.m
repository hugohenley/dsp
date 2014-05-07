clear all
close all

cmap0 = flipud(jet)
cmap1 = summer
cmap2 = jet
cmap3 = winter
cmap4 = copper
cmap5 = autumn
cmap6 = flipud(winter)
cmap7 = flipud(cool(128))
cmap8 = redbluecmap
cmap9 = redgreencmap
cmap10 = flipud(spring)
cmap11 = flipud(hot(128))
cmap12 = flipud(summer)

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
%%image
%%hold on
%%subimage
%colormap white
m1 = zeros(32, 32);

A = ones(288,224)
colormap white
image(A)
hold on
subimage(32 , 32 ,um,summer)
%m2 = zeros(32,32);
%m1= ones(32,32)*32
%m2 = [m1 m1 m1 m1,244)*64

%cmap = [cmap1 cmap1 cmap1 cmap1 cmap1 cmap1 cmap1 ...
%    ;cmap1 cmap1 cmap1 cmap2 cmap1 tres cmap1 ...
%    ;cmap1 cmap1 cmap1 cmap1 cmap1 cmap1 cmap1 ...
%    ;cmap1 quatro cmap1 cinco cmap1 seis cmap1 ...
%    ;cmap1 cmap1 cmap1 cmap1 cmap1 cmap1 cmap1 ...
%    ;cmap1 sete cmap1 oito cmap1 nove cmap1 ...
%    ;cmap1 cmap1 cmap1 cmap1 cmap1 cmap1 cmap1 ...
%    ;cmap1 aster cmap1 zero cmap1 tralha cmap1 ...
%    ;cmap1 cmap1 cmap1 cmap1 cmap1 cmap1 cmap1;]

%colormap(cmap)

%teclado = [m1 m1 m1 m1 m1 m1 m1 ...
%    ;m1 um m1 dois m1 tres m1 ...
%    ;m1 m1 m1 m1 m1 m1 m1 ...
%    ;m1 quatro m1 cinco m1 seis m1 ...
%    ;m1 m1 m1 m1 m1 m1 m1 ...
%    ;m1 sete m1 oito m1 nove m1 ...
%    ;m1 m1 m1 m1 m1 m1 m1 ...
%    ;m1 aster m1 zero m1 tralha m1 ...
%    ;m1 m1 m1 m1 m1 m1 m1;]


%teclado
%a = teclado(2,2)
image(teclado)
%A = pcolor(97:128 161:192,summer)
%imagesc(97:128 , 161:192,summer)
%colormap(summer)
%grid off
%colordef white
%teclado = [um dois tres;quatro cinco seis;sete oito nove; aster zero tralha]
%whitebg(figure(2))
%image(m1)
%figure(3)
%image(m2)
%axis image
%axis square


%A = subplot(4,3,1),subimage(um,summer)
%B = subplot(4,3,2),subimage(dois,jet)

%C = A + B
%image(C)



