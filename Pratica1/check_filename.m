function check_filename(filename)
A = exist('filename')

if A==0
    falha=errordlg('� necess�rio escolher uma imagem antes.', 'ERRO');
    pause
end