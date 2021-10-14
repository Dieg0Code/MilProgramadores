Funcion GA <- CalculoGanancia ( L,PG )
	TG= (L/3.785)
	GA = PG * TG
Fin Funcion

Algoritmo sin_titulo
	Escribir "Ingrese cantidad de litros:"
	Leer L //variable L correspondiente a litros
	Escribir "ingrese precio por galon"
	Leer PG //variable PG correspondiente a precio*galon
	Escribir "ganancia es de ",CalculoGanancia(L,PG)
FinAlgoritmo
