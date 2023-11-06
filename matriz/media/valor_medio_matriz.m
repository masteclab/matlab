clear all
clc

pruebas=importdata('productos.txt');
[nFilas, nCol]=size(pruebas);
% Inicializar las variables resultado
mediaF=zeros(1, nCol);
mediaC=zeros(1, nFilas-1);

% Medias por producto
for i=1:nFilas
% Hay que volver a inicializar esta variable cuando cambiemos de fila
media=0;
    for j=1:nCol
    elem=pruebas(i, j);
    media=media+elem;
    end
media=media/nCol;
mediaF(i)=media;
end

% Medias por producto
for i=1:nCol
% Hay que volver a inicializar esta variable cuando cambiemos de fila
media=0;
    for j=1:nFilas
    elem=pruebas(j, i);
    media=media+elem;
    end
media=media/nFilas;
mediaC(i)=media;
end

mediaC
mediaF


