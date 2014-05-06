function b = aster()

aster=ones(32,32)*64;

aster(4:30,16:18)=1;
aster(16:18,6:28)=1;
aster(10,10)=1;
aster(12,12)=1;
aster(14,14)=1;
aster(20,20)=1;
aster(22,22)=1;
aster(24,24)=1;
aster(24,10)=1;
aster(22,12)=1;
aster(20,14)=1;
aster(14,20)=1;
aster(12,22)=1;
aster(10,24)=1;

b = aster
%figure;
%colormap(spring);
%cmap = colormap
%cmap = flipud(cmap)
%colormap(cmap)
%b = image(aster);
%axis image

