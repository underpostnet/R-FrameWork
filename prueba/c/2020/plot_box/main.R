#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------


# Defina la v.a. en estudio
# x : cantidad de ventas registradas por numero_mes


#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------

data <- read.csv(file = 'C:/xampp/htdocs/R/prueba/data.csv', encoding = "UTF-8")
year = 2003

# columnas

numero_mes_2020 = c()
ventas_mes_2020 = c()


#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------

for (i in 0:202) {


	#-----------------------------
	#-----------------------------

	# genera una lista con un unico elemento vector
	str = data[i,]
	aux = strsplit(str, ";")

	#-----------------------------
	#-----------------------------

	for(a in aux) {

		#-----------------------------
		#-----------------------------

		mes = strtoi(a[[1]])
		ventas = strtoi(a[[2]])

		if(mes==1){

			year = year + 1;

		}

		#-----------------------------
		#-----------------------------

		if(year==2020){

			numero_mes_2020 <- c(numero_mes_2020,mes)
			ventas_mes_2020 <- c(ventas_mes_2020,ventas)

		}

		#-----------------------------
		#-----------------------------

	}

	#-----------------------------
	#-----------------------------

}

print('-------------------------')

df_2020 <- data.frame(numero_mes_2020, ventas_mes_2020)
names(df_2020) <- c('numero_mes_2020', 'ventas_mes_2020')
print(df_2020)

#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------

t.test(ventas_mes_2020, conf.level=0.99)
print('-------------------------')
summary(ventas_mes_2020)
print('desviacion estandar')
print(sd(ventas_mes_2020))
print('varianza')
print(var(ventas_mes_2020))

#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------

boxplot(ventas_mes_2020)


#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
