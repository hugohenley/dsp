function b = tres()

makeTres = ones(32, 32)*64;
makeTres(4, 6:26) = 1;
makeTres(5, 6:26) = 1;

makeTres(16, 6:26) = 1;
makeTres(17, 6:26) = 1;

makeTres(30, 6:26) = 1;
makeTres(31, 6:26) = 1;

makeTres(4:30, 26) = 1;
makeTres(4:30, 25) = 1;

b = makeTres;

%figure
%colormap(winter)
%image(makeTres)
%axis image