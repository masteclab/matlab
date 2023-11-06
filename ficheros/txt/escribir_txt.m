clear all
clc

load('pruebas.mat')
fid=fopen('productos_original.txt', 'w')
fprintf(fid, '%.1f %.1f %.1f %.1f %.1f\n', pruebas')
fclose(fid)