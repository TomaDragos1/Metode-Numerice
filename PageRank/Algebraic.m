function R = Algebraic(nume, d)
  f = fopen(nume, "r");
  n = fscanf(f, "%f", 1);
  adiacenta = zeros(n);
  k = zeros(n);
  %citire ca la iterativ
  for i = 1:n 
    nod = fscanf(f, "%f", 1);
    vecini = fscanf(f, "%f", 1);
    for j = 1:vecini
      element = fscanf(f, "%f", 1);
      if(nod != element)
      adiacenta(nod, element) = 1;
      endif
    endfor 
   k(i,i) = sum(adiacenta(i,:));
  endfor
  val1 = fscanf(f, "%f", 1);
  val2 = fscanf(f, "%f", 1);
  %calculez m cu functia de inversare ceruta
  M = (PR_Inv(k) * adiacenta)';
  %aflare R neiterativ
  inversa = PR_Inv((eye(n)-d*M));
  R = inversa*(1-d)/n*ones(n,1);
  fclose(f);
  endfunction