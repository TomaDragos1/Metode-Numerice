function x = SST (A, b)
  [n n] = size(A);
  for i = n : -1 : 1
    s = 0;
    for j = i+1: n
      s += A(i,j) * x(j);
    endfor
    x(i) = (b(i) - s) / A(i ,i);
  endfor
endfunction
