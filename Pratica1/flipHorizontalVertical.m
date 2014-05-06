function fHoVe = flipHorizontalVertical(arg1)

%flipHorizontalVertical
%fHoVe = flipHorizontalVertical(arg1)
%arg1 = imagem a ser espelhada
%Rotaciona a imagem arg1 em relacao ao eixo x e y
%Exemplo: flipHorizontalVertical('vegas.jpg');

A = flipVertical(arg1);
fHoVe = flipdim(A ,1); %flip horizontal + vertical

imshow(fHoVe);