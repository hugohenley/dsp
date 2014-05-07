function b = tralha()

tralha = ones(32, 32)*64;
tralha(10, 5:30) = 1;
tralha(12, 5:30) = 1;

tralha(22, 5:30) = 1;
tralha(24, 5:30) = 1;


tralha(5:30, 10) = 1;
tralha(5:30, 12) = 1;


tralha(5:30, 24) = 1;
tralha(5:30, 26) = 1;

b = tralha;

%figure
%colormap(summer)
%cmap = colormap
%cmap = flipud(cmap)
%colormap(cmap)
%b = image(tralha)
%axis image