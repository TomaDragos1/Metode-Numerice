function y = Apartenenta(x, val1, val2)
	% Functia care primeste ca parametrii x, val1, val2 si care calculeaza valoarea functiei membru in punctul x.
  % Stim ca 0 <= x <= 1
  %aici am facut formule pt continuitate
  if(x < val1 && x>=0)
  y = 0;
elseif (val1 <= x  && x <= val2)
  %rezolvare sistem pentru a afla a si b
  a = (-1)/(val1 - val2);
  b = 1 - a * val2;
  y = a * x + b;
elseif (x < val2)
  y = 1;
  endif
 endfunction	