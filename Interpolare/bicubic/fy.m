function r = fy(f, x, y)
    % =========================================================================
    % Aproximeaza derivata fata de y a lui f in punctul (x, y).
    % =========================================================================
    [n m nr_colors] = size(f);
    % TODO: calculeaza derivata
    if  x==1 || x==n
      r=0;
    else
    r=(f(x + 1 ,y)-f(x - 1,y))/2;
    end
endfunction