Funcion PR <- CalcularPromedio ( acum, cont )
	PR = acum/cont
Fin Funcion

Algoritmo promedio_estatura
	//inicializar acumulador en 0
	acum = 0
	cont = 0
	//pedir a usuario ingresar estatura y asignarla en variable est
	Escribir "Ingrese estatura:"
	Leer est
	//mientras estatura sea mayor a 0 ejercutar ciclo
	Mientras est > 0 Hacer
		acum = acum + est
		Escribir "Ingresar otra estatura:"
		Leer est
		cont = cont + 1
	Fin Mientras
	
	Si cont==0 Entonces
		Escribir "No hay estatura"
	SiNo
		Escribir CalcularPromedio(acum,cont)
	Fin Si
FinAlgoritmo
