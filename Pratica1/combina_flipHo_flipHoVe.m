function B = combina_flipHo_flipHoVe(arg1)

%combinacao1
%combinacao1 = combina_flipHo_flipHoVe(arg1)
%Combina as funções flipHorizontal e flipHorizontalVertical resultando na
%flipVertical
%arg1 = imagem escolhida
%Exemplo: combina_flipHo_flipHoVe('vegas.jpg');

A = flipVertical(arg1)

imshow(A);