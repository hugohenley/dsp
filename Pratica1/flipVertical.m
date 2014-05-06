function fVe = flipVertical(arg1)

%flipVertical
%fVe = flipVertical(arg1)
%arg1 = imagem a ser espelhada
%Rotaciona a imagem arg1 em relacao ao eixo y
%Exemplo: flipVertical('vegas.jpg');


A = imread(arg1);
fVe = flipdim(A ,2); %flip vertical
imshow(fVe);