Algoritmo viajes_de_estudio
	//variable costo por alumno
	costo = 0
	//ingresar cantidad de alumnos y asignarlos a variable alumno
	Escribir "Ingrese cantidad de alumnos para viaje de estudio:"
	Leer alumnos
	
	Si alumnos >= 100 Entonces
		costo = 65
	SiNo
		Si alumnos >= 50 Y alumnos <= 99 Entonces
			costo = 70
		SiNo
			Si alumnos >=30 y alumnos <=49 Entonces
				costo = 95
			SiNo
				Si alumnos < 30 Entonces
					costo = 4000
				Fin Si
			Fin Si
		Fin Si
	Fin Si
	
	Si costo == 4000 Entonces
		Escribir "el costo total es de ",costo," dolares"
	SiNo
		Escribir "el costo total es de ",(alumnos* costo)," dolares"
	Fin Si
FinAlgoritmo
