 function b = nove()
nove = ones(32, 32)*64;
nove(4, 8:21) = 1;
nove(5, 8:21) = 1;

nove(15, 8:21) = 1;
nove(16, 8:21) = 1;


nove(4:32, 20) = 1;
nove(4:32, 21) = 1;

nove(4:16, 8) = 1;
nove(4:16, 9) = 1;

b = nove;

%figure
%colormap(redgreencmap)
%b = image(nove)
%axis image