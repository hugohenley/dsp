function B = rotaciona(arg1,arg2)

%rotaciona
%B = rotaciona(arg1,arg2)
%arg1 = imagem a ser rotacionada
%arg2 = múltiplo inteiro de 45 graus.
%Exemplo: rotaciona('vegas.jpg',-90);


A = imread(arg1);
B = imrotate(A,arg2,'nearest');
imshow(B);