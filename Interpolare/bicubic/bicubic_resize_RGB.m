function out = bicubic_resize_RGB(img, p, q)
    % =========================================================================
    % Redimensioneaza imaginea img astfel �nc�t aceasta save fie de dimensiune p x q.
    % Imaginea img este colorata.
    % =========================================================================

    % TODO: Extrage canalul rosu al imaginii.
    canal_red = img(:,:,1);
    
    % TODO: Extrage canalul verde al imaginii.
    canal_verde = img(:,:,2);
    % TODO: Extrage canalul albastru al imaginii.
    canal_albastru = img(:,:,3);
    % TODO: Aplica functia bicubic pe cele 3 canale ale imaginii.
    red = bicubic_resize(canal_red, p, q);
    green = bicubic_resize(canal_verde, p, q);
    blue = bicubic_resize(canal_albastru, p, q);
    
    % TODO: Formeaza imaginea finala concatenand cele 3 canale de culori.
    out = cat(3, red, green, blue);
endfunction
