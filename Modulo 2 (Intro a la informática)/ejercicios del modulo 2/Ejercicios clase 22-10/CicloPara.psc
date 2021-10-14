Algoritmo sin_titulo
	//definimos la dimension llamada perros, incia en 4
	Dimension perros[4]
	//ciclo "para" que recorrera la dimension
	Para i<-1 Hasta 4 Con Paso 1 Hacer
		//pedimos nombre por pantalla
		Escribir "ingresar nombre de perro ",i
		//leemos ingreso de nombre por teclado y asignado a variable nombre
		leer nombre
		//asignamos variable nombre a dimension perros con posicion i
		perros[i] = nombre
	Fin Para
	
	Para i<-1 Hasta 4 Con Paso 1 Hacer
		Escribir "el perro ",i," su nombre es ",perros[i]
	Fin Para
FinAlgoritmo
