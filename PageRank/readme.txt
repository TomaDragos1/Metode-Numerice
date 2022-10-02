Toma Mihai Dragos 312 CB

1.Iterative

  Mai intai am citit toate valorile din fisierul meu si mi-am alcatuit doua matrice:
  K unde tin minte pe diagonala principala cate nodrui intra in nodul i iar adiacenta este
  matricea de adiacenat
  Dupa am calculat M dupa formula (K^-1 * adiacenta)' si dupa am facut doi vectori coloana 
  pentru iteratiile mele
  L-am initializat pe R_crt cu 1/n pe toate pozitiile iar R_urm l-am initializat conform
  formulei d * m * R_crt + ((1 - d)/n)*ones
  Dupa am facut doar un while unde verific eroarea(facand norma dintre cele doua iteratii)
  si fac iteratiile
2. Algebraic

  Am facut aceiasi citire ca mai sus si dupa am facut inversa in PR_inv
  Aici am luat matricea mea data si am descompus-o in Q R cu gram schimdt
  Dupa am vazut ca T*T^-1 = I pot sa o scriu ca T*x = e(ca in enunt)
  Dupa am dedus urmatoarea ecuatie : Q*R*x = e de unde rezulta
  R*x = Q^-1 * e dar inv lui Q e Q transpus (matrice ortogonala)
  => R*x = Q^t * e (r matrice superior triunghiulara)
  Acesta este un SST unde x este fiecare coloana a lui T^-1 si e fiecare coloana a lui i
  asa ca am decis sa fac SST de n ori pt fiecare coloana a lui x, iar coloana termenilor liberi
  este fiecare coloana a lui Q^t (din aceasta cauza am inmmutil Q cu fiecare vector coloana din e,
  ca sa pot sa ii iau coloana);
  La sfarsit am dedus formula neiterativa R = PR_Inv((eye(n)-d*M))*(1-d)/n*ones(n,1);
3. PageRank
Am citit matrice si val1 si val2
Dupa mi-am facut fisierul de out unde o sa imi afisez rezultatele
Dupa apelez algebraic si iterativ si le afisez cu 6 zecimale
Sortarea o fac cu comanda sort la care ii dau si un vector de indici j(imi sorteaza si indicii)\
In functia de apartenenta sunt efectiv formulele deduse pt fiecare interval(reiesea un sistem cu doua ecatii
si doua necunoscute pe care l-am rezolvat)
La sfarsit am printat vectorul sortat si noile valori corespunzatoare functiei Apartenenta