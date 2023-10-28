clear all
clc

vector=input('Introducir elementos vector: ');
numero=input('Introducir numero: '); 
encontrado=0;
i=1;

while encontrado==0 && i<=length(vector)   
    if vector(i)== numero
        encontrado=1;
    end
    i=i+1;
end
    if encontrado==0
        disp('El elemento no esta en el array');
    else
        disp('El elemento esta en el array');
    end
    
    