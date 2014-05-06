function b = zero()

zero = ones(32, 32)*64;
zero(4, 8:22) = 1;
zero(5, 8:23) = 1;

zero(27, 8:22) = 1;
zero(28, 8:23) = 1;

zero(4:28, 22) = 1;
zero(4:28, 23) = 1;

zero(4:28, 8) = 1;
zero(4:28, 9) = 1;


%diagonal1 - inicio
zero(26, 10) = 1;
zero(25, 10) = 1;
zero(24, 11) = 1;
zero(23, 11) = 1;
zero(22, 12) = 1;
zero(21, 12) = 1;
zero(20, 13) = 1;
zero(19, 13) = 1;
zero(18, 14) = 1;
zero(17, 14) = 1;
zero(16, 15) = 1;
zero(15, 15) = 1;
zero(14, 16) = 1;
zero(13, 16) = 1;
zero(12, 17) = 1;
zero(11, 17) = 1;
zero(10, 18) = 1;
zero(9, 18) = 1;
zero(8, 19) = 1;
zero(7, 19) = 1;
zero(6, 20) = 1;
zero(5, 20) = 1;
%digonal1 - fim


%diagonal2 - inicio
zero(26, 11) = 1;
zero(25, 11) = 1;
zero(24, 12) = 1;
zero(23, 12) = 1;
zero(22, 13) = 1;
zero(21, 13) = 1;
zero(20, 14) = 1;
zero(19, 14) = 1;
zero(18, 15) = 1;
zero(17, 15) = 1;
zero(16, 16) = 1;
zero(15, 16) = 1;
zero(14, 17) = 1;
zero(13, 17) = 1;
zero(12, 18) = 1;
zero(11, 18) = 1;
zero(10, 19) = 1;
zero(9, 19) = 1;
zero(8, 20) = 1;
zero(7, 20) = 1;
zero(6, 21) = 1;
zero(5, 21) = 1;

%digonal2 - fim
b = zero

%figure
%colormap(hot(128))
%cmap = colormap
%cmap = flipud(cmap)
%colormap(cmap)
%b = image(zero)
%axis image