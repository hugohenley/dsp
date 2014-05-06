function b = quatro()

makeQuatro = ones(32, 32)*64;
makeQuatro(2:18, 10) = 1;
makeQuatro(2:18, 11) = 1;

makeQuatro(2:32, 22) = 1;
makeQuatro(2:32, 23) = 1;
makeQuatro(18, 10:22) = 1;
makeQuatro(19, 10:22) = 1;

b = makeQuatro

%figure
%colormap(winter(128))
%image(makeQuatro)
%axis image