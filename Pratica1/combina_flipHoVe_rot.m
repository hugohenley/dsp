function B = combina_flipHoVe_rot(arg1,arg2)

%combinacao1
%combinacao1 = combina_flipHoVe(arg1,arg2)
%Combina as funções flipHorizontalVertical e rotaciona de um angulo escolhido
%arg1 = imagem escolhida
%arg2 = angulo de rotacao

A = flipHorizontalVertical(arg1);
B = imrotate(A,arg2,'nearest');

imshow(B);