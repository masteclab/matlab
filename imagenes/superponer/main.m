pos=[10 538;456 538; 366 638;100 638;233 738; 100 438;366 438;233 338;10 238 ;456 238;233 138];
alineacion=MostrarAlineacion(pos, 'campo.jpg', 'jugador.jpg');
alineacion=uint8(alineacion.*255);
imwrite(alineacion, 'alineacion.jpg')