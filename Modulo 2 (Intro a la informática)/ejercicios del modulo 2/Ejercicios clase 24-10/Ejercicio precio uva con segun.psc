Algoritmo precio_uva_concatenado
	Escribir "el preciop del kg de uva:"
	Leer precio
	Escribir "tipo de uva A/B:"
	leer tipo
	Escribir "el tama–o de uva 1/2:"
	Leer tamano
	Escribir "cantidad total de kg a vender:"
	Leer kg
	res = tipo+ConvertirATexto(tamano)
	Segun res Hacer
		"A1":
			precio = precio + 20
		"A2":
			precio = precio + 30
		"B1":
			precio = precio - 30
		"B2":
			precio = precio - 50
		De Otro Modo:
			Escribir "ingresaste todo mal pajaron y la re%$%/"
	Fin Segun
	Escribir "el precio total es ",(kg*precio)
FinAlgoritmo
