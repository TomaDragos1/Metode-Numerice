function out = proximal_rotate_RGB(img, rotation_angle)
    % =========================================================================
    % Aplica Interpolarea Proximala pentru a roti o imagine RGB cu un unghi dat.
    % =========================================================================
    
    % TODO: Extrage canalul rosu al imaginii.
    can_Rosu = img(:,:,1);
    
    % TODO: Extrage canalul verde al imaginii.
    can_Verde = img(:,:,2);
    
    % TODO: Extrage canalul albastru al imaginii.
    can_Albastru = img(:,:,3);
    
    % TODO: Aplica rotatia pe fiecare canal al imaginii.
    can_Rosu = proximal_rotate(can_Rosu , rotation_angle);
    can_Verde = proximal_rotate(can_Verde , rotation_angle);
    can_Albastru = proximal_rotate(can_Albastru , rotation_angle);
    % TODO: Formeaza imaginea finala concatenând cele 3 canale de culori.
    out = cat(3, can_Rosu, can_Verde, can_Albastru);
    
endfunction