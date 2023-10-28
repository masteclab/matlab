clear all
clc

dinero=input('Ingresa la cantidad de dinero:  ');
disp('El código muestra la cantidad de monedas a regresar 5euros, 2 euros, 1 euro')

monedas= [struct()]

M5=floor(dinero/5);
dinero=rem(dinero,5);
M2=floor(dinero/2);
dinero=rem(dinero,2);
M1=floor(dinero/1);

monedas.cinco=M5;
disp(['5 euros: ' num2str(monedas(1).cinco) ' moneda(s) '])
monedas.dos=M2;
disp(['2 euros: ' num2str(monedas(1).dos) ' moneda(s) '])
monedas.uno=M1;
disp(['1 euros: ' num2str(monedas(1).uno) ' moneda(s) '])

