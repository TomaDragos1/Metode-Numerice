function B = PR_Inv(A)
	% Functia care calculeaza inversa matricii A folosind factorizari Gram-Schmidt
	% Se va inlocui aceasta linie cu descrierea algoritmului de inversare
[n n] = size(A);
%gram-schmidt
[q r] = gram(A);
x = zeros(n ,1);
%rezolv sst corespunzator pt inversa de n ori
for i = 1 : 1: n
  e = zeros(n, 1);
  e(i) = 1;
  %sst e cel din laborator
  x = SST(r , q' * e);
  B(:, i) = x;
endfor  
endfunction