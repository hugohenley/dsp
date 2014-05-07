function varargout = interface(varargin) %C�digo interface MATLAB para interface.fig
% IN�CIO do c�digo de inicializa��o da interface
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @interface_OpeningFcn, ...
                   'gui_OutputFcn',  @interface_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% FIM do c�digo de inicializa��o da interface


function interface_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject; %Sa�da padr�o para interface
guidata(hObject, handles);%Atualiza estruturas de handles

function varargout = interface_OutputFcn(hObject, eventdata, handles) %Sa�da desta fun��o � retornada para linha de commando
varargout{1} = handles.output; %Pega linha de comando padr�o para estruturas handles

%--IN�CIO DO PROGRAMA---


% --- Execu��o do bot�o "Espelhamento Vertical".
function pushbutton1_Callback(hObject, eventdata, handles)

%if has_filename==0
%    falha=errordlg('� necess�rio escolher uma imagem antes.', 'ERRO');
%    pause
%end
try
filename=handles.filename
figure(2)
subplot(1,2,1), imshow(filename);
title('Imagem Original');
subplot(1,2,2),flipVertical(filename);
title('Espelhamento Vertical');
tarefa_sucesso
catch
    f = errordlg('Primeiro escolha uma imagem', 'Erro');
end



% --- Execu��o do bot�o "Espelhamento Horizontal".
function pushbutton2_Callback(hObject, eventdata, handles)
try
filename=handles.filename
figure(2)
subplot(1,2,1), imshow(filename);
title('Imagem Original');
subplot(1,2,2),flipHorizontal(filename);
title('Espelhamento Horizontal');
tarefa_sucesso
catch
    f = errordlg('Primeiro escolha uma imagem', 'Erro');
end


% --- Execu��o do bot�o "Espehamento Origem"
function pushbutton3_Callback(hObject, eventdata, handles)
try
filename=handles.filename
figure(2)
subplot(1,2,1), imshow(filename);
title('Imagem Original');
subplot(1,2,2),flipHorizontalVertical(filename);
title('Espelhamento na origem');
tarefa_sucesso
catch
    f = errordlg('Primeiro escolha uma imagem', 'Erro');
end


% --- Execu��o do bot�o "Rotacionar".
function pushbutton5_Callback(hObject, eventdata, handles)
try
filename=handles.filename
x = inputdlg('Digite o angulo de rotacao desejado:',...
              '', [1]);
angulo = str2num(x{:}); %angulo = input('Digite o angulo desejado: ');
figure(2)
subplot(1,2,1), imshow(filename);
title('Imagem Original');
subplot(1,2,2),rotaciona(filename,angulo);
title('Imagem Rotacionada');
tarefa_sucesso
catch
    f = errordlg('Primeiro escolha uma imagem', 'Erro');
end

% --- Execu��o do bot�o "Escolha a imagem".
function pushbutton7_Callback(hObject, eventdata, handles)
filename = uigetfile
handles.filename=filename
guidata(hObject,handles)
figure(1)
imshow(filename)


% --- Execu��o do bot�o "SOBRE".
function pushbutton8_Callback(hObject, eventdata, handles)
sobre = helpdlg('Criado e desenvolvido por: Saulo Zimbaro (saulo@zimbaro.com) Fabio Martins (fabart172@gmail.com) e Hugo Arraes (hugohenley@gmail.com)','SOBRE');


% --- Fun��o do menu de combina��es.
function popupmenu2_Callback(hObject, eventdata, handles)
val = get(hObject,'Value');
switch val
    case 2
        try
        filename=handles.filename
        figure(2)
        subplot(1,2,1), imshow(filename);
        title('Imagem Original');
        subplot(1,2,2),combina_flipHo_flipVe(filename);
        title('Espelhamento horizontal+vertical');
        tarefa_sucesso
        catch
            f = errordlg('Primeiro carregue uma imagem', 'Erro');
        end

        
    case 3
        try
        filename=handles.filename
        figure(2)
        subplot(1,2,1), imshow(filename);
        title('Imagem Original');
        subplot(1,2,2),combina_flipHo_flipHoVe(filename);
        title('Espelhamento horizontal+origem');
        tarefa_sucesso
        catch
            f = errordlg('Primeiro carregue uma imagem', 'Erro');
        end
 
    case 4
        try
        filename=handles.filename
        figure(2)
        subplot(1,2,1), imshow(filename);
        title('Imagem Original');
        subplot(1,2,2),combina_flipVe_flipHoVe(filename);
        title('Espelhamento vertical+origem');
        tarefa_sucesso
        catch
            f = errordlg('Primeiro carregue uma imagem', 'Erro');
        end
       
        
    case 5
        try
        filename=handles.filename
        x = inputdlg('Digite o angulo de rotacao desejado:',...
              '', [1]);
        angulo = str2num(x{:}); %angulo = input('Digite o angulo desejado: ');
        figure(2)
        subplot(1,2,1), imshow(filename);
        title('Imagem Original');
        subplot(1,2,2),combina_flipHo_rot(filename,angulo);
        title('Espelhamento horizontal+rotacionamento');
        tarefa_sucesso
        catch
            f = errordlg('Primeiro carregue uma imagem', 'Erro');
        end
        
    case 6
        try
        filename=handles.filename
        x = inputdlg('Digite o angulo de rotacao desejado:',...
              '', [1]);
        angulo = str2num(x{:}); %angulo = input('Digite o angulo desejado: ');
        figure(2)
        subplot(1,2,1), imshow(filename);
        title('Imagem Original');
        subplot(1,2,2),combina_flipVe_rot(filename,angulo);
        title('Espelhamento vertical+rotacionamento');
        tarefa_sucesso
        catch
            f = errordlg('Primeiro carregue uma imagem', 'Erro');
        end
end
%val


% --- Fun��o do menu popup.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Execu��o do bot�o "ENCERRAR".
function pushbutton6_Callback(hObject, eventdata, handles)
clear all;
close all;
