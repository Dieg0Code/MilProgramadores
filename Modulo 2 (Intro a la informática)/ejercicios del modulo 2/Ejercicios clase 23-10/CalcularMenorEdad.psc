Algoritmo sin_titulo
	Dimension nombres[3]
	Dimension edad[3]
	Para i<-1 Hasta 3 Con Paso 1 Hacer
		Escribir "ingresar nombre persona ",i
		Leer nom
		nombres[i] = nom
		Escribir "ingresar edad persona ",i
		leer age
		edad[i] = age
	Fin Para
	Si edad[1] < edad[2] Entonces
		Si edad[1] < edad[3] Entonces
			res = nombres[1]
		SiNo
			res = nombres[3]
		Fin Si
	SiNo
		Si edad[2] < edad[3] Entonces
			res = nombres[2]
		SiNo
			res = nombres[3]
		Fin Si
	Fin Si
	Escribir "el menor es ",res
FinAlgoritmo
