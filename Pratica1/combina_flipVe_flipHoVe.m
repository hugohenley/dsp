function B = combina_flipVe_flipHoVe(arg1)

%combinacao1
%combinacao1 = combina_flipVe_flipHoVe(arg1)
%Combina as funções flipVertical e flipHorizontalVertical resultando na
%flipHorizontal
%arg1 = imagem escolhida
%Exemplo: combina_flipVe_flipHoVe('vegas.jpg');

A = flipHorizontal(arg1)

imshow(A);