function b = sete()

sete = ones(32, 32)*64;
sete(4, 8:17) = 1;
sete(5, 8:17) = 1;

sete(15, 8:23) = 1;
sete(16, 8:23) = 1;


sete(4:32, 16) = 1;
sete(4:32, 17) = 1;
b = sete;

%figure
%colormap(cool(128))
%b = image(sete)
%axis image