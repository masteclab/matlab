v=[54,113,89,10];
modo=1;
result = contarDigitoss(v, modo)


function result = contarDigitoss(v, modo) 

result = zeros(1, length(v));

for i=1:length(v)
    numero = v(i);
    digitos = num2str(numero);
    for j=1:length(digitos)
        if modo == 0
            if mod(digitos(j),2) == 0
                result(i) = result(i) +1;
            end 
        elseif modo == 1
            if mod(digitos(j),2) ~= 0
                result(i) = result(i) +1;
            end 
        end 
    end 
end 

end 