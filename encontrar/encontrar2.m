clear all
clc

vector=input('Introducir elementos vector: ');
numero=input('Introducir numero: '); 
for i=1:length(vector)   
    if vector(i)== numero
        disp('El elemento esta en el array');
    else
        disp('El elemento NO esta en el array');
    end
end