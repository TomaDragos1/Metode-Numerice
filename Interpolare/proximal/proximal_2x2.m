function out = proximal_2x2(f, STEP = 0.1)
    % ===================================================================================
    % Aplica Interpolare Proximala pe imaginea 2 x 2 f cu puncte intermediare echidistante.
    % f are valori cunoscute în punctele (1, 1), (1, 2), (2, 1) ?i (2, 2).
    % Parametrii:
    % - f = imaginea ce se va interpola;
    % - STEP = distan?a dintre dou? puncte succesive.
    % ===================================================================================
    
    % TODO: Defineste coordonatele x si y ale punctelor intermediare.
    x_initial = 1 : STEP : 2;
    y_initial = 1 : STEP : 2;

    % Se afl? num?rul de puncte.
    n = length(x_initial);
    % TODO: Cele 4 puncte încadratoare vor fi aceleasi pentru toate punctele din interior.
    x1 = y1 = 1;
    x2 = y2 = 2;
    % TODO: Initializeaza rezultatul cu o matrice nula n x n.
    out = zeros(n);
    % Se parcurge fiecare pixel din imaginea finala.
    for i = 1 : n
        for j = 1 : n
            % TODO: Afla cel mai apropiat pixel din imaginea initiala.
            %vad unde se duc punctele adica la 1 sau la 2
           x_aux = round(x_initial(i));
           y_aux = round(y_initial(j));
            % TODO: Calculeaza pixelul din imaginea finala.
            out(i,j) = f(x_aux, y_aux);
        endfor
    endfor

endfunction