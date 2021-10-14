Algoritmo descuentos
	Escribir "ingresar precio de producto:"
	Leer precio
	Si precio > 25000 Entonces
		desc = precio * 0.15
	SiNo
		desc = precio * 0.08
	Fin Si
	Escribir "producto con el descuento es de ",(precio-desc), "y su descuento fue de ",desc
FinAlgoritmo
