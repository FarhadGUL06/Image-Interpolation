===============================================================================

								2021
                    Interpolare aplicata pe imagini
						Gul Farhad Ali Irinel

<=============================<NEAREST-NEIGHBOURS>=============================>

	Conceptul de la nn_2x2 a fost destul de usor de inteles si implementat.
	Toate functiile de RGB au fost scurte si au iesit imediat dupa ce
	rezolvasem functiile pentru imaginile alb-negru.
	La nn_resize a durat mai mult sa aflu factorii de scalare decat rezolvarea
	propriu-zisa.
	La finalul cerintelor am transformat matricile in uint8 (de tip imagine) 
	cu maxim 255 ca numar reprezentant culoarea alba si 0 - negru.
	
<==================================<BILINIAR>==================================>

	Pentru biliniar_2x2 s-a modificat doar formula de calcul a functiei. 
	M-am folosit de functia de calcul biliniar_coef pentru a afla matricea
	coeficientilor in functie de pozitiile curente folosind formulele din
	enunt. Conceptul de resize este asemanator celui de la nearest-neighbours.
	Pentru biliniar_rotate s-a modificat matricea de transformare - cea cu
	sin si cos din enunt. Am pus 0 pe x;y acolo unde pixelii xp;yp nu intrau 	
	in matrice si in restul am folosit formula ca in cerintele anterioare.
	Functia de surrounding_points imi calculeaza pixelii intregi apropiati
	de un xp si yp date. Daca este pe ultimul rand / ultima coloana
	se considera y2=m; y1=y2-1 si x2=n; x1=x2-1.

<===================================<BICUBIC>==================================>

	Pentru functia bicubic_resize am calculat pentru inceput derivatele
	folosind functia precalc. In functia precalc am calculat aceste derivate
	folosindu-ma de fx fy si fxy cu formulele din enunt. Dupa aceea, pentru
	fiecare pixel din matrice am calculat coeficientii de interpolare
	si apoi utilizand formula din enunt am calculat valoarea pixelului din 
	matricea redimensionata.


