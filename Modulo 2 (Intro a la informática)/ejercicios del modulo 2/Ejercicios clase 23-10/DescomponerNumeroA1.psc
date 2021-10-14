Algoritmo sin_titulo
	acum = 0
	cont_pasos = 0
	cont_num = 0
	
	Repetir
		Escribir "ingresar numero"
		Leer num
		acum = acum + num
		cont_num = cont_num + 1
	Hasta Que num = 0
	Repetir
		Si acum MOD 2 ==0 Entonces
			acum = acum/2
		SiNo
			acum = (acum * 3)+1
		Fin Si
		cont_pasos = cont_pasos + 1
	Hasta Que acum = 1
	Escribir "la cantidad de numeros ingresados fueron ",cont_num
	Escribir "La cantidad de pasos para llegar a 1 fueron ",cont_pasos
FinAlgoritmo
