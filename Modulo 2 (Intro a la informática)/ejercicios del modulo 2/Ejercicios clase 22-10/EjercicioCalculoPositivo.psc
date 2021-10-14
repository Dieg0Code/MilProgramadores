Funcion R <- CalculoPositivo ( num1 )
	Si num1 >= 0 Entonces
		R = "Positivo"
	SiNo
		R = "negativo"
	Fin Si
Fin Funcion

Algoritmo sin_titulo
	Escribir "ingrese un numero:"
	leer NUM
	Escribir "el numero es ",CalculoPositivo(NUM)
	
FinAlgoritmo
