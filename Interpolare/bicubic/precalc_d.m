function [Ix, Iy, Ixy] = precalc_d(I)
    % =========================================================================
    % Prealculeaza matricile Ix, Iy si Ixy ce contin derivatele dx, dy, dxy ale 
    % imaginii I pentru fiecare pixel al acesteia.
    % =========================================================================
    
    % Obtinem dimensiunea imaginii.
    [n m nr_colors] = size(I);
    
    % TODO: Tranforma matricea I in double.
    I = double(I);
    Ix = zeros(n , m);
    Iy = zeros(n , m);
    Ixy = zeros(n , m);

    % TODO: Calculeaza matricea cu derivate fata de x Ix.
    for x = 1 : n 
      for y = 1 : m
        Ix(x , y) = fx(I, x , y);
      endfor
    endfor

    % TODO: Calculeaza matricea cu derivate fata de y Iy.
    for x = 1 : n
      for y = 1 : m
        Iy(x , y) = fy(I, x, y);
      endfor
    endfor
    

    % TODO: Calculeaza matricea cu derivate fata de xy Ixy.
    for x = 1 : n
      for y = 1 : m
        Ixy(x, y) = fxy(I, x, y);
      endfor
    endfor

endfunction
