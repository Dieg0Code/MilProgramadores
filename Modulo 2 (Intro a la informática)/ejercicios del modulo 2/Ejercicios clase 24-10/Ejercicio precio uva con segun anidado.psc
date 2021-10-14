Algoritmo precio_uva_segun
	Escribir "el preciop del kg de uva:"
	Leer precio
	Escribir "tipo de uva A/B:"
	leer tipo
	Escribir "el tama–o de uva 1/2:"
	Leer tamano
	Escribir "cantidad total de kg a vender:"
	Leer kg
	Segun tipo Hacer
		"A":
			Segun tamano Hacer
				1:
					precio = precio + 20
				2:
					precio = precio + 30
				De Otro Modo:
					Escribir "ingresaste mal el tama–o de uva"
			Fin Segun
		"B":
			Segun tamano Hacer
				1:
					precio = precio - 30
				2:
					precio = precio - 50
				De Otro Modo:
					Escribir "ingresaste mal el tama–o de uva"
			Fin Segun
		De Otro Modo:
			Escribir "ingresaste mal el tipo de uva"
	Fin Segun
	
FinAlgoritmo
