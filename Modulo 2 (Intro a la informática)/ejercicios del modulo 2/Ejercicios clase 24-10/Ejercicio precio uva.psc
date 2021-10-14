Algoritmo precio_uva
	Escribir "el preciop del kg de uva:"
	Leer precio
	Escribir "tipo de uva A/B:"
	leer tipo
	Escribir "el tama–o de uva 1/2:"
	Leer tamano
	Escribir "cantidad total de kg a vender:"
	Leer kg
	Si tipo == "A" Entonces
		Si tamano == 1 Entonces
			precio = precio + 20
		SiNo
			precio = precio + 30
		Fin Si
	SiNo
		Si tamano == 1 Entonces
			precio = precio - 30
		SiNo
			precio = precio -50
		Fin Si
	Fin Si
	Escribir"el precio por kilo de uva es de ",precio
	Escribir " el total de la venta es de ",(kg*precio)
FinAlgoritmo
