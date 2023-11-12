% Ruta de la carpeta que deseas explorar
carpeta = '/ruta/a/la/carpeta';

% Utiliza la función dir para obtener una lista de archivos y carpetas en la carpeta
archivos = dir(carpeta);

% Inicializa una cadena para almacenar los nombres de los archivos
nombresArchivos = '';

% Itera a través de la estructura de archivos y concatena los nombres de los archivos con ;
for i = 3:length(archivos)  % Comienza desde 3 para omitir los directorios '.' y '..'
    nombreArchivoCompleto = archivos(i).name;
    
    % Utiliza fileparts para obtener el nombre del archivo sin la extensión
    [~, nombreArchivo, ~] = fileparts(nombreArchivoCompleto);
    
    % Concatena el nombre del archivo con ;
    nombresArchivos = [nombresArchivos, nombreArchivo, '; '];
end

% Muestra la lista de nombres de archivos con ;
fprintf('Nombres de archivos: %s\n', nombresArchivos);



