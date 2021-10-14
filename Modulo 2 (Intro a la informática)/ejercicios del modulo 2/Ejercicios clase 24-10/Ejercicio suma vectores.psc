Algoritmo suma_vectores
	Escribir "ingrese un numero:"
	Leer num
	Dimension A[num]
	Dimension B[num]
	Dimension C[num]
	Para i<-1 Hasta num Con Paso 1 Hacer
		Escribir "ingrese en la dimension A el numero en la posicion ",i
		Leer A[i]
		Escribir "ingrese en la dimension B el numero en la posicion ",i
		Leer B[i]
	Fin Para
	Para i<-1 Hasta num Con Paso 1 Hacer
		C[i] = A[i] + B[i]
		Escribir "la suma de ",A[i]," mas ",B[i]," es igual a ",C[i]
	Fin Para
FinAlgoritmo
