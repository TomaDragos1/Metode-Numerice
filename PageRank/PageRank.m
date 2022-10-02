function [R1 R2] = PageRank(nume, d, eps)
	f = fopen(nume, "r");
  n = fscanf(f, "%f", 1);
  adiacenta = zeros(n);
  %citire
  for i = 1:n 
    nod = fscanf(f, "%f", 1);
    vecini = fscanf(f, "%f", 1);
    for j = 1:vecini
      element = fscanf(f, "%f", 1);
      adiacenta(nod, element) = 1;
    endfor 
  endfor
  %citire cele doua valori
  val1 = fscanf(f, "%f", 1);
  val2 = fscanf(f, "%f", 1);
  fclose(f);
  % am facut fisierul de output
  nume_nou = strcat(nume, ".out");
  fout = fopen(nume_nou, "w");
  fprintf(fout, "%d\n", n);
  %print iterativ
  R1 = Iterative(nume, d, eps); 
  fprintf(fout, "%.6f\n", R1);
  fprintf(fout, "\n");
  %print algebraic
  R2 = Algebraic(nume, d);
  fprintf(fout, "%.6f\n", R2);
  fprintf(fout, "\n");
  %sortare descrescatoare si imi salveaza si indicele in j
  [PR1 j]=sort(R2,'descend');
  for i = 1:n
    %printare corespunzatoare cerintei
    fprintf(fout, "%d ",i)
    fprintf(fout, "%d ", j(i));
    fprintf(fout, "%.6f\n", Apartenenta(PR1(i), val1, val2));
  endfor
  fclose(fout);
  endfunction