function alineacion=MostrarAlineacion(pos, imagen1, imagen2)

campo=imread(imagen1);
campo=double(campo./255);
jugador=imread(imagen2);
jugador=double(jugador./255);
[tamX, tamY, np]=size(campo);
[tamX2, tamY2, np2]=size(jugador);
[nf, nc]=size(pos);
image(campo);
for i=1:nf
    posX=pos(i, 1);
    posY=pos(i,2);
    campo(posX:posX+tamX2-1,posY: posY+tamY2-1, :)=jugador(:, :, :);
end
alineacion=campo;
image(campo)

set(gcf,'MenuBar','none')
set(gca,'Position',[0 0 1 1])
