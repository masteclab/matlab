clear all
clc
M=[100 5 3 20; 25 200 7 6; 4 10 300 3; 5 20 2 400] 

fil1=1;
fil2=4; 

[nf,nc]=size(M);

for i=1:nc
    a=M(fil1,i);
    M(fil1,i)=M(fil2,i);
    M(fil2,i)=a;
end
M
