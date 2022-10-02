function r = fxy(f, x, y)
    % =========================================================================
    % Aproximeaza derivata fata de x si y a lui f in punctul (x, y).
    % =========================================================================
    [n m nr_colors] = size(f);

    if x==1 || y==1 || y==m || x==n
       r=0;
    else
    % TODO: calculeaza derivata
    r=(f(x - 1 ,y - 1)+ f(x + 1,y + 1)-f(x + 1,y - 1)-f(x - 1,y + 1))/4;
    end
endfunction