% Calcular traspuesta
clear all
clc
% Se define la matriz
M=magic(4)
%Inicialización de la variable donde se deja el resultado
[nf, nc]=size(M);
Mtrasp=zeros(nc, nf);

for i=1:size(M,1) % Recorrer las filas
    for j=1:size(M,2) % Recorrer las columnas
    Mtrasp(j,i)=M(i,j) %Traspone cada elemento de la matriz
    end
end
% Se comprueba si el resultado es correcto con el operador
% que calcula la traspuesta de Matlab
Mtrasp2=M'