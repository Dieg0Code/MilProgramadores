Funcion M <- CalculoMayor ( num1, num2, num3 )
	Si num1>num2 Entonces
		Si num1 > num3 Entonces
			M = num1
		SiNo
			M = num3
		Fin Si
	SiNo
		Si num2 > num3 Entonces
			M = num2
		SiNo
			M = num3
		Fin Si
	Fin Si
Fin Funcion

Algoritmo calculo_numero_mayor
	//ingresar tres valores numericos A, B y C
	Escribir "Ingrese valor A:"
	Leer A	
	Escribir "Ingrese valor B:"
	Leer B
	Escribir "Ingrese valor C:"
	Leer C
	//llamar a funcion y mostrar resultado por pantalla
	Escribir "el numero mayor fue ",CalculoMayor(A,B,C)
FinAlgoritmo
