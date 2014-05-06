function fHo = flipHorizontal(arg1)

%flipHorizontal
%fHo = flipHorizontal(arg1)
%arg1 = imagem a ser espelhada
%Rotaciona a imagem arg1 em relacao ao eixo x
%Exemplo: flipHorizontal('vegas.jpg');


A = imread(arg1);
fHo = flipdim(A ,1); %flip horizontal
imshow(fHo);