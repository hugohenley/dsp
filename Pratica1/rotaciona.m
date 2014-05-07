function B = rotaciona(imagem,multiplo)

%rotaciona
%B = rotaciona(arg1,arg2)
%imagem = imagem a ser rotacionada
%multiplo = m�ltiplo inteiro de pi/2.
%Exemplo: rotaciona('vegas.jpg',-90);

try
A = imread(imagem);

phi = multiplo*90;
B = imrotate(A,phi,'nearest');
imshow(B);
catch
    f = warndlg('Somente n�meros reais inteiros s�o permitidos.', 'Aten��o');
end