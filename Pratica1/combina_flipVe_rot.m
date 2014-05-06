function B = combina_flipVe_rot(arg1,arg2)

%combinacao1
%combinacao1 = combina_flipVe(arg1,arg2)
%Combina as funções flipVertical e rotaciona de um angulo escolhido
%arg1 = imagem escolhida
%arg2 = angulo de rotacao

A = flipVertical(arg1);
B = imrotate(A,arg2,'nearest');

imshow(B);