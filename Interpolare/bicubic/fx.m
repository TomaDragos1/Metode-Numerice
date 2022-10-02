function r = fx(f, x, y)
    % =========================================================================
    % Aproximeaza derivata fata de x a lui f in punctul (x, y).
    % =========================================================================
    [n m nr_colors] = size(f);
    % TODO: calculeaza derivata
    if y == 1 || y == m
       r=0;
    else
    r=(f(x ,y + 1)-f(x, y - 1))/2;;
    end
endfunction