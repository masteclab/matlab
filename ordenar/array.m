clear all
clc

array=[1 4 5 3 4 7 6 8];
elem=length(array);
arrayInverso=zeros(1,elem);
pos=elem;
suma=0;

for i=1:elem
    arrayInverso(i)=array(pos)
    suma= suma + array(pos);
    pos=pos-1;
end
suma
array
arrayInverso
