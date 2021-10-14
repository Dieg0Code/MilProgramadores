Funcion M <- CalcularMayor ( A,B )
	Si A>B Entonces
		M = A
	SiNo
		M = B
	Fin Si
Fin Funcion

Algoritmo sin_titulo
	Escribir "ingrese variable A:"
	Leer A //variable numerica
	Escribir "ingrese variable B:"
	Leer B //variable numerica
	Escribir "el mayor es ",CalcularMayor(A,B)
	Escribir "dos numeros nuevos:"
	Leer D
	Leer G
	Escribir "el mayor es ",CalcularMayor(D,G)
FinAlgoritmo
