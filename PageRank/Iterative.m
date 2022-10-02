function R = Iterative(nume, d, eps)
  f = fopen(nume, "r");
  n = fscanf(f, "%f", 1);
  adiacenta = zeros(n);
  k = zeros(n);
  %citire legarui dintre site-uri si 
  %initializare k si matricea de adiacenta
  for i = 1:n 
    nod = fscanf(f, "%f", 1);
    vecini = fscanf(f, "%f", 1);
    for j = 1:vecini
      element = fscanf(f, "%f", 1);
      if(nod != element)
      adiacenta(nod, element) = 1;
      endif
    endfor 
   %initializare matrice k
   k(i,i) = sum(adiacenta(i,:));
  endfor
  val1 = fscanf(f, "%f", 1);
  val2 = fscanf(f, "%f", 1);
  %calcul matricea m
  m = (inv(k)*adiacenta)'; 
  %initilizare R_crt
  R_crt = zeros(n,1);
  R_crt(:) = 1/n;
  one = ones(n,1);
  %prima initializare
  R_urm = zeros(n,1);
  R_urm = d * m * R_crt + ((1 - d)/n)*ones;
  %while unde fac recurenta
  while(norm(R_urm - R_crt) > eps)
    R_crt = R_urm;
    R_urm = d * m * R_crt+((1 - d)/n)*ones;
  endwhile
  R = R_crt;
  fclose(f)
  endfunction