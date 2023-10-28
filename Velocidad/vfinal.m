clear all
clc

% Datos del problema
masa = 500; % Masa del objeto en kg
cateto_opuesto = 6; % Altura en mts
cateto_adyacente = 150; %Distancia lineal de traslado en mts

% Calcula el ángulo en grados
angulo = atand(cateto_opuesto / cateto_adyacente); % Ángulo de inclinación en grados 2.29
gravedad = 9.81; % Aceleración debido a la gravedad en m/s^2
friccion = 0; % Fuerza de fricción en Newtons

% Rango de distancias a lo largo del plano inclinado
distancias = 0:150; % Desde 0 metros hasta 150 metros en incrementos de 1 metro; se puede mas o menos incrementos 0:0.1:150 (10 cm)

% Inicializa un vector para almacenar las velocidades finales
velocidades_finales = zeros(size(distancias));

% Inicializa un vector para almacenar los tiempos de traslado
tiempos = zeros(size(distancias));

% Calcula las velocidades finales para cada distancia
for i = 1:length(distancias)
    distancia = distancias(i);
    aceleracion_inclinada = gravedad * sind(angulo);
    velocidad_final = sqrt(2 * (aceleracion_inclinada - friccion) * distancia);
    velocidades_finales(i) = velocidad_final;
    tiempos(i)=(velocidad_final/aceleracion_inclinada);
end

% Grafica la velocidad en función del tiempo
t = linspace(0, tiempos(i), 100); % Crea un vector de tiempo
velocidad = aceleracion_inclinada * t; % Calcula la velocidad en función del tiempo

% Grafica los resultados
subplot(2,1,1)
plot(distancias, velocidades_finales, 'r-*');
xlabel('Distancia a lo largo del plano inclinado (m)');
ylabel('Velocidad final (m/s)');
title('Velocidad Final en un Plano Inclinado');
grid on;

subplot(2,1,2)
plot(t, velocidad, 'b');
xlabel('Tiempo (s)');
ylabel('Velocidad (m/s)');
title('Recorrido (tiempo) en un Plano Inclinado');
grid on;