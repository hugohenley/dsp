function varargout = interface(varargin)
% INTERFACE MATLAB code for interface.fig
%      INTERFACE, by itself, creates a new INTERFACE or raises the existing
%      singleton*.
%
%      H = INTERFACE returns the handle to a new INTERFACE or the handle to
%      the existing singleton*.
%
%      INTERFACE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INTERFACE.M with the given input arguments.
%
%      INTERFACE('Property','Value',...) creates a new INTERFACE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before interface_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to interface_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Begin initialization code - DO NOT EDIT
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
% End initialization code - DO NOT EDIT


% --- Executes just before interface is made visible.



function interface_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to interface (see VARARGIN)

% Choose default command line output for interface
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes interface wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = interface_OutputFcn(hObject, eventdata, handles) 

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Execução do botão "Espelhamento Vertical".
function pushbutton1_Callback(hObject, eventdata, handles)
filename=handles.filename
figure(2)
subplot(1,2,1), imshow(filename);
title('Imagem Original');
subplot(1,2,2),flipVertical(filename);
title('Espelhamento Vertical');
tarefa_sucesso




% --- Execução do botão "Espelhamento Horizontal".
function pushbutton2_Callback(hObject, eventdata, handles)
filename=handles.filename
figure(2)
subplot(1,2,1), imshow(filename);
title('Imagem Original');
subplot(1,2,2),flipHorizontal(filename);
title('Espelhamento Horizontal');
tarefa_sucesso


% --- Execução do botão "Espehamento Origem"
function pushbutton3_Callback(hObject, eventdata, handles)
filename=handles.filename
figure(2)
subplot(1,2,1), imshow(filename);
title('Imagem Original');
subplot(1,2,2),flipHorizontalVertical(filename);
title('Espelhamento na origem');
tarefa_sucesso


% --- Execução do botão "Rotacionar".
function pushbutton5_Callback(hObject, eventdata, handles)
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

% --- Execução do botão "Escolha a imagem".
function pushbutton7_Callback(hObject, eventdata, handles)
filename = uigetfile
handles.filename=filename
guidata(hObject,handles)
figure(1)
imshow(filename)


% --- Execução do botão "SOBRE".
function pushbutton8_Callback(hObject, eventdata, handles)
sobre = helpdlg('Criado e desenvolvido por: Saulo Zimbaro (saulo@zimbaro.com) Fabio Martins (fabart172@gmail.com) e Hugo Arraes (hugohenley@gmail.com)','SOBRE');


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
val = get(hObject,'Value');
switch val
    case 2
        filename=handles.filename
        figure(2)
        subplot(1,2,1), imshow(filename);
        title('Imagem Original');
        subplot(1,2,2),combina_flipHo_flipVe(filename);
        title('Espelhamento horizontal+vertical');
        tarefa_sucesso

        
    case 3
        filename=handles.filename
        figure(2)
        subplot(1,2,1), imshow(filename);
        title('Imagem Original');
        subplot(1,2,2),combina_flipHo_flipHoVe(filename);
        title('Espelhamento horizontal+origem');
        tarefa_sucesso
 
    case 4
        filename=handles.filename
        figure(2)
        subplot(1,2,1), imshow(filename);
        title('Imagem Original');
        subplot(1,2,2),combina_flipVe_flipHoVe(filename);
        title('Espelhamento vertical+origem');
        tarefa_sucesso
        
    case 5
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
        
    case 6
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
end
val


% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2


% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Execução do botão "ENCERRAR".
function pushbutton6_Callback(hObject, eventdata, handles)
clear all;
close all;
