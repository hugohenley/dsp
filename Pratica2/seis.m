function b = seis()

seis = ones(32, 32)*64;
seis(2, 6:26) = 1;
seis(3, 6:26) = 1;

seis(16, 6:26) = 1;
seis(17, 6:26) = 1;

seis(32, 6:26) = 1;
seis(31, 6:26) = 1;

seis(2:32, 6) = 1;
seis(2:32, 7) = 1;

seis(16:32, 26) = 1;
seis(16:32, 25) = 1;

b = seis;

%figure
%colormap(spring)
%b = image(seis)
%axis image