clear all;
close all;

%imshow('imagem-dsp.png');

A = imread('imagem-dsp.png');
A2 = flipdim(A ,2); %flip horizontal
A3 = flipdim(A ,1); %flip vertical
A4 = flipdim(A3 ,1); %flip vertical + horizontal


subplot(2,2,1), imshow(A);
subplot(2,2,2), imshow(A2);
subplot(2,2,3), imshow(A3);
subplot(2,2,4), imshow(A4);


%image(A);
%B = imrotate(A,180,'nearest');
%image(B);