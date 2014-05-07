function b = um()
makeUm = ones(32, 32)*64;
makeUm(4, 8:17) = 1;
makeUm(5, 8:17) = 1;

makeUm(30, 6:26) = 1;
makeUm(31, 6:26) = 1;

makeUm(4:30, 16) = 1;
makeUm(4:30, 17) = 1;

b = makeUm
    
%figure
%colormap(jet(128))
%cmap = colormap
%cmap = flipud(cmap)
%colormap(cmap)
%image(makeUm)
%axis image