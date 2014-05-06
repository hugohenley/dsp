function b = cinco()

cinco = ones(32, 32)*64;
cinco(2, 10:24) = 1;
cinco(3, 10:24) = 1;

cinco(16, 10:24) = 1;
cinco(17, 10:24) = 1;

cinco(2:16, 10) = 1;
cinco(2:16, 11) = 1;

cinco(16, 10:24) = 1;
cinco(17, 10:24) = 1;

cinco(31, 10:24) = 1;
cinco(32, 10:24) = 1;

cinco(16:32, 25) = 1;
cinco(16:32, 24) = 1;

b = cinco
%figure
%colormap(spring(128))
%cmap = colormap
%cmap = flipud(cmap)
%colormap(cmap)
%b = image(cinco)
%axis image