Algoritmo sin_titulo
	Dimension A[5]
	Dimension B[5]
	Dimension resultado[5]
	final <- "{"
	Para i<-1 Hasta 5 Hacer
		Escribir 'ingrese al conjunto a el valor de posicion ',i
		Leer num1
		A[i] <- num1
		Escribir 'ingrese al conjunto B el valor de la posicion ',i
		Leer num2
		B[i] <- num2
	FinPara
	cont <- 1
	Para i<-1 Hasta 5 Hacer
		Para c<-1 Hasta 5 Hacer
			Si A[i]==B[c] Entonces
				resultado[cont] <- B[c]
				cont <- cont+1
			FinSi
		FinPara
	FinPara
	Para i<-1 Hasta 5 Hacer
		Si resultado[i]!=0 Entonces
			Si i==1 Entonces
				final <- final + ConvertirATexto(resultado[i])
			SiNo
				final <- final +","+ ConvertirATexto(resultado[i])
			FinSi
		FinSi
	FinPara
	final <- final + "}"
	Escribir final
FinAlgoritmo

