function b = oito()

oito = ones(32, 32)*64;
oito(4, 8:21) = 1;
oito(5, 8:21) = 1;

oito(15, 8:21) = 1;
oito(16, 8:21) = 1;

oito(32, 8:21) = 1;
oito(31, 8:21) = 1;

oito(4:32, 20) = 1;
oito(4:32, 21) = 1;

oito(4:32, 8) = 1;
oito(4:32, 9) = 1;

b = oito

%figure
%colormap(redbluecmap)
%b = image(oito)
%axis image