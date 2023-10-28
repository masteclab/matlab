clear all
clc
 
numero=input('Introducir el numero de donde comenzar a buscar:  ');
numeroValores=input('Introduce la cantidad de números de mostrar: ');
numValores=0;
pos=numero+1;
while numValores<numeroValores
    if mod(pos,2)~=0 && mod(pos, 3)==0
        disp(num2str(pos));
        numValores=numValores + 1;
    end
    pos=pos+1;
end
