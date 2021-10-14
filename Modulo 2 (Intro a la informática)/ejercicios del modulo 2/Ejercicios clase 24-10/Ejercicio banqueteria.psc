Algoritmo langosta_ahumada
	Escribir "Ingrese cantidad de personas:"
	Leer personas
	
	Si personas >300 Entonces
		Escribir"el costo total es de ",(personas*7500)
	SiNo
		Si personas >200 Entonces
			Escribir"el costo total es de ",(personas*8500)
		SiNo
			Escribir"el costo total es de ",(personas*9500)
		Fin Si
	Fin Si
FinAlgoritmo
