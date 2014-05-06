function b = dois()

makeDois = ones(32, 32)*64;
makeDois(2, 8:26) = 1;
makeDois(3, 8:26) = 1;

makeDois(16, 8:26) = 1;
makeDois(15, 8:26) = 1;

makeDois(32, 8:26) = 1;
makeDois(31, 8:26) = 1;


makeDois(2:16, 26) = 1;
makeDois(2:16, 25) = 1;

makeDois(16:32, 8) = 1;
makeDois(16:32, 9) = 1;

b = makeDois

%figure
%colormap(summer)
%image(makeDois)
%axis image