Toma Mihai Dragos 312CB

Proximal:

1.proximal 2*2
Mai intai mi-am luat punctele intermediare cu stepu intre ele ca baiatu
Am luat lenght si x1 si y1 doar pt ca era in TODO dar nu le-am folosit
Dupa am aproximat fiecare numar la zero sau la unu , pt ca sunt pe matrice 2 pe 2 adica am dat round la 
ficare punct si l-am pus in matrice(l-am aproximat de 1 sau 2 in functie de care era mai aproape)

2.La rgb am luat culorile de pe fiecare canal al imaginii, am apelat fiecare functie cu culoarea mea si dupa ma recosntruit imaginea
	Asta am facut la toate rgb

3.proxima_resize
	Am facut ca in cerinta si am facut matricea double, am calculat s_x si s_y dupa cum mi s-a zis in cerinta(am avut grija la val in n si 0)
	Dupa am facut matricea de transformare si am calculat inversa ceruta

	Dupa in for am aplicat transformarea asupra celor doua puncte cu matricea de trans si le-am luat din aceasta
	Dupa am trecut in coorodnate 1, n adunand un 1 celor doua valori si la sfarsti le-am pus in matricea mea dupa 
	ce am aproximate punctele la cel mai apropiat pixel din imagine
4.Proximal_rotate
	Mai intai am facut matricea double, am aflat matricea de rotatie cu cos si sin si am facut
	inversa ei
	
	In for am facut asemanator cu rotate, calculand cu ajutrul inv transfrmarea si luand punctul dupa transformare (x si y punctuli)
	Am adunat un 1 pt a trece in 1 n si dupa am verificat daca sunt in matrice si daca nu sunt pun 0 si ma duc la urmatorul punct
	Dupa aproximea la cel mai apropiat pixel prin floor si adun un 1 la cealalta coorodonata adica calcuelz toate coorodnatele prin rotunjire
	

	La toate rgb am facut la fel ca la primul, numai ca am apelat alte functii, asa cu o sa mai explic odata

Bicubi

1.precalc_d
	Aici doar am calculat cele 3 matrici cu cele 3 forume ale derivatelor pe care la am in pdf
	La fiecare functie de derivata am verificat daca sunt in matrice sau nu, daca ies pe jos bag 0 si daca pe sus bag marginea acelei coordonate
	Aici efectiv am aprximat deriviata cprin formula cu trapez cred, doar pt doua puncte adica am luat punctele de la dreapta intervalului si stanga intervlului
	Si am aproximat derivata cu acestea
2.Bicubic_coef
	Aici m-am uitat la demonstratiile de pe documemtul dat. Acolo am vazut ce functia mea a fost aproximata cu 
	Inmultirea a 3 matrici
	Efcetiv le-am scris de mana si am calculat aproximarea functiei mele cu cele inmultirea celor 3 matrici

3.Bicubic_resize
	Ca la celelate am calculat matricea de transformare si inversa ei, numai ca am caluculat si matricile cu derivatelor 
	Dupa am aflat punctele , am aproximat aceste puncte si am verificat si daca se afla in matrice sau nu
	Dupa am aplicat acesti coeficienti bicubici, dupa am luat coorodnatele si le-am adus la patratul unitate
	Dupa am vazut ce forumala prin care aflu elememtul din matrice este [1 ;y ;y^2; y^3] * A * [1 , x, x^2 , x^3]
	Si dupa am bagat in matricea mea rezultat