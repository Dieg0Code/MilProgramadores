Algoritmo sin_titulo
	//pedir por pantalla la edad
	Escribir "ingresa tu edad: "
	//asignaremos lo ingresado por teclado a variable edad
	Leer edad
	//consultamos por edad
	Si edad >=18 Entonces//consulta si son mayores
		Si edad<65 Entonces//consulta si no son adultos mayores
			Escribir "eres adulto"
		SiNo
			Escribir "eres adulto mayor"
		Fin Si
	SiNo
		Escribir "eres menor de edad"
	Fin Si
FinAlgoritmo
