function B = combina_flipHo_flipVe(arg1)

%combinacao1
%combinacao1 = combina_flipHo_flipVe(arg1)
%Combina as funções flipHorizontal e flipVertical
%arg1 = imagem escolhida

A = flipHorizontal(arg1);
B = flipdim(A ,2); %flip vertical

imshow(B);