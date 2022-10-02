function out = proximal_resize_RGB(img, p, q)
    % =========================================================================
    % Redimensioneaza imaginea img astfel încât aceasta save fie de dimensiune p x q.
    % Imaginea img este colorata.
    % =========================================================================

    % TODO: Extrage canalul rosu al imaginii.
    can_RED = img(:,:,1);
    
    % TODO: Extrage canalul verde al imaginii.
    can_VERDE = img(:,:,2);
    
    % TODO: Extrage canalul albastru al imaginii.
    can_ALBASTRU = img(:,:,3);
    
    % TODO: Aplica functia proximal pe cele 3 canale ale imaginii.
    can_RED = proximal_resize(can_RED , p , q);
    can_VERDE = proximal_resize(can_VERDE , p , q);
    can_ALBASTRU = proximal_resize(can_ALBASTRU , p , q);
    
    % TODO: Formeaza imaginea finala concatenând cele 3 canale de culori.
    out = cat(3 , can_RED , can_VERDE , can_ALBASTRU);

endfunction
