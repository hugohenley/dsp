function B = combina_flipHo_rot(arg1,arg2)

%combinacao1
%combinacao1 = combina_flipHo_rot(arg1,arg2)
%Combina as funções flipHorizontal e rotaciona de um angulo escolhido
%arg1 = imagem escolhida
%arg2 = angulo de rotacao

A = flipHorizontal(arg1);
B = imrotate(A,arg2,'nearest');

imshow(B);

