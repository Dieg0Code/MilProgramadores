Algoritmo sin_titulo
	Escribir "ingrese sueldo base: "
	Leer sueldo_base
	Escribir "ingrese la cantidad de ventas:"
	Leer cant_vta
	Total_vta <- 0
	cont <- 1
	Repetir
		Escribir "cuanto fue el monto de la venta ",cont
		Leer venta
		Total_vta <- Total_vta + venta
		cont <- cont + 1
	Hasta Que cont > cant_vta
	Comision <- Total_vta*0.1
	Total_pagar = sueldo_base+comision
	Escribir "total a pagar es de ",Total_pagar,"y la comision fue de ",Comision
FinAlgoritmo

