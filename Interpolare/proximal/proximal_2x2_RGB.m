function out = proximal_2x2_RGB(img, STEP = 0.1)
    % ==============================================================================================
    % Aplica Interpolare Proximala pe imaginea 2 x 2 definita img cu puncte intermediare echidistante.
    % img este o imagine colorata RGB -Red, Green, Blue.
    % =============================================================================================

    % TODO: Extrage canalul rosu al imaginii.
    can_Rosu = img(:,:,1);
    
    % TODO: Extrage canalul verde al imaginii.
    can_Verde = img(:,:,2);
    
    % TODO: Extrage canalul albastru al imaginii.
    can_Albastru = img(:,:,3);
    
    % TODO: Aplic? functia proximal pe cele 3 canale ale imaginii.
    can_Rosu = proximal_2x2(can_Rosu , STEP);
    can_Verde = proximal_2x2(can_Verde , STEP);
    can_Albastru = proximal_2x2(can_Albastru , STEP);
    
    
    % TODO: Formeaza imaginea finala concatenând cele 3 canale de culori.
    out = cat(3, can_Rosu, can_Verde, can_Albastru);
    
endfunction
