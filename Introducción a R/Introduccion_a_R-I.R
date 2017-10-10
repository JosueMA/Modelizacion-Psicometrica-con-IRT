#### INTRODUCCIÓN A R ###############
#### Josué Mendoza, Said Jiménez ####
#####################################

# Calculadora

10 + 2
7 * 3
12 / 4
2 ^ 3
10 %% 2
5 %% 2
(3 + 4) * 6
3 + 4 * 6 # R respeta PEDMAS

# Realiza una suma, una resta, una multiplicación, una división y una potencia de por lo menos 3 términos



# R contiene algunas funciones, se caracterizan por su estructura: funcion(argumentos)
sqrt(16)
round(pi, digits = 3)

# Secuencias
1:6
seq(from = 0, to = 10, by = 2)

# Calcula la raíz cuadrada de algún número y crea una secuencia de por lo menos 10 números de longitud




# Las variables te permiten almacenar valores
edad <- 24 

# Imprime edad para ver su contenido
edad

# Los objetos te permiten almacenar resultados de funciones. A esto se le llama declarar.
raiz_de_edad <- sqrt(edad)

# Puedes crear variables con otras variables
manzanas <- 45
peras <- 25
naranjas <- 12
frutas <- manzanas + peras + naranjas

# Pueden ser variables con caracteres (strings)
nombre <- "INEE"

# Valores lógicos
logico <- TRUE
logico_no <- FALSE
logico_especial <- NULL

# Tipos de datos básicos
class(manzanas)
class(nombre)
class(4L)
class(4.5)
class(logico)
typeof(nombre) # Función más robusta

# Declara una variable numérica, otra lógica y otra de caracteres



# Utiliza la función class() para saber que tipo de dato son cada una



# No puedes mezclar operaciones entre tipos distintos de datos
manzanas + nombre
nombre + mi_logico

# Este es un caso especial ¿Por qué?
mi_logico + manzanas

# Los valores logicos: TRUE = 1, FALSE = 0. Esto es fundamental, más adelante veremos por qué.
mi_logico + mi_logico
mi_logico + FALSE

#### Algunas funciones básicas de utilidad

# Pedir ayuda
help()
?

# Dirección actual de trabajo
getwd()

# Ajustar dirección de trabajo. De esto depende dónde busca los archivos que utilizas.
setwd()

# Lista de objetos declarados
ls()

# Contenido del directorio actual de trabajo
dir()

# Eliminar objetos específicos
rm()

# Eliminar todos los objetos declarados en la sesión
ls()
rm(list = ls())
ls()

#### FACTORES ####

# Los factores son para variables categóricas: nominales. Es importante especificarlo.
genero_vector <- c("Masculino", "Femenino", "Femenino", "Masculino", "Masculino")
genero_factor <- factor(genero_vector)

# Checa con class() de que tipo de variables se trata



# Los factores tambien pueden ser ordinales
temperatura_vector <- c("Alta", "Baja", "Alta","Baja", "Media")
factor_temperatura_vector <- factor(temperatura_vector, order = TRUE, levels = c("Baja", "Media", "Alta"))

# Imprimelos y revisa su clase




# Summary sobre factores
summary(genero_vector)
summary(genero_factor)

# Aplica summary sobre vector de temperatura y sobre factor de temperatura



# Comparación de un vector versus un factor
genero_vector < genero_factor

# Pero que tal un factor con niveles 
alto <- factor_temperatura_vector[1] 
bajo <- factor_temperatura_vector[2]
alto > bajo

# Realiza la comparacion (x == y), de media y baja


#### VECTORES #######

# Vectores: son arreglos de una dimensión 1xn que pueden contener datos
# Numéricos, caracteres o logicos
vector_numerico <- c(1, 2, 3) # La c permite concatenar varios objetos
vector_numerico <- 1:3
vector_caracter <- c("a", "b", "c") 
vector_logico <- c(TRUE, FALSE, TRUE)

# Longitud del vector (# de elementos)
length(vector_numerico)

# Declara 3 vectores: numérico, caracter y lógico con longitud de al menos 3 elementos cada uno



# Calcula el promedio del vector numérico sin usar alguna función



# Ejemplos de vectores: peso de cinco personas en Kg
peso_vector <- c(100, 70, 56, 91, 83)

# Estatura en cm de cinco personas
estatura_vector <-  c(180, 168, 150, 190, 170)


# Tu primer gráfico:
# plot(estatura_vector, _____)


# Asigna los nombres de las personas. Este es un atributo que sirve para etiquetar los valores.
names(peso_vector) <- c("Hugo", "Paco", "Luis", "Juan", "Pedro")

# Asigna los nombres al vector de estatura
names(estatura_vector) <- 


# Operaciones con vectores: calcula el peso total de las personas
peso_total <- 100 + 70 + 56 + 91 + 83
sum(peso_vector)

# Obtén la suma total de las estaturas


# Peso más de lo que mido
peso_vector > estatura_vector

# Seleccionar elementos
peso_vector["Hugo"]

# Selecciona a el peso de Pedro



# Seleccionar varios elementos
peso_vector[3:5]
peso_vector[c(1, 3, 5)]
peso_vector[c("Paco", "Luis")]
peso_vector[-1] # Con el signo de - se omite el elemnto especificado

# Selecciona la estatura de los cuatro primeros sujetos



# Calcula los descriptivos del peso
mean(peso_vector)
median(peso_vector)
sd(peso_vector)
var(peso_vector)
summary(peso_vector)

# Ahora declara tu estatura

mi_estatura <- 

# Ponle tu nombre


# Imprímela
  

# ¿Cómo lo agrego al vector que ya está hecho? Pista: concatenando
estatura_vector



#### COMPARATIVOS ####

# utiliza los <, >, <=, >=, ==, != para seleccionar elementos
c(0, 1, 2, 3) > 0
c(0, 1, 2, 3) >= 0
c(0, 1, 2, 3) <= 0
c(0, 1, 2, 3) == 0
c(0, 1, 2, 3) != 0

# Antes de imprimir cada igualdad, intenta predecir el resultado
c(TRUE, TRUE) == c(1, 1)
c(TRUE, TRUE) == c(FALSE, FALSE)
!c(TRUE, TRUE) == c(FALSE, FALSE) # ¿Por qué?
!FALSE 

c(TRUE, TRUE) & c(FALSE, FALSE)
c(TRUE, TRUE) & c(TRUE, TRUE) # ¿No es lo mismo que ==?

# Subsetting
peso_vector

peso_vector[c(TRUE, TRUE, FALSE, FALSE, FALSE)]
peso_vector[c('Hugo', 'Paco')]

peso_vector[c(TRUE, TRUE, FALSE, FALSE, FALSE)] == peso_vector[c('Hugo', 'Paco')] #¿Son iguales?

# Por lo tanto, podemos hacer operaciones lógicas que nos permitirán elegir sólo los elementos que cumplen una condición
peso_vector[peso_vector < 80]

# Selecciona los que miden más de 150 cm



# Selecciona los que pesan 80 o más



# Para saber los valores exactos de los dias de pérdida de peso
peso_vector[peso_vector >= 70 & peso_vector <= 80] # & funciona para cumplir varias condiciones.

# Obten los casos con estaturas entre 160 y 170


# Operadores booleanos

peso_vector[peso_vector > 50 & peso_vector < 80] # A y B
peso_vector[peso_vector > 50 | peso_vector < 80] # A o B
peso_vector > 50 && peso_vector < 80 # A y B estricto
peso_vector > 50 || peso_vector < 80 # A o B estricto



##### MATRICES #####

# Es un arreglo cuadrado (de dos dimensiones) de elementos de la MISMA clase.
matrix(1:9, byrow = TRUE, nrow = 3)
matrix(letters[seq(from = 1, to = 9)], ncol = 3)

matrix(c(1, 2, "j", "m")) # Poner atención al comportamiento del la salida

# Diseña una matriz de 3x3 con valores del 11 al 19



# Una matriz con valores de la estatura de tres hombres y tres mujeres
hombres <- c(1.72, 1.68, 1.77)
mujeres <- c(1.50, 1.62, 1.70)

matriz_estatura <- matrix(c(hombres, mujeres), nrow = 3)
rownames(matriz_estatura) <- c("Gringos", "Mexicanos", "Europeos") # Nombra a las filas
colnames(matriz_estatura) <- c("Hombres", "Mujeres") # Nombra a las columnas

# Si no estás seguro de que se trata de una matriz
# usa la funcion class()
class(matriz_estatura) 

# Y si quieres saber qué tipo de elementos contiene
typeof(matriz_estatura)

# Seleccionar casos de una matriz: [fila, columna]
matriz_estatura[2, 1] 
matriz_estatura[ , 2]
matriz_estatura[2, ]
matriz_estatura["Gringos", ]

# Selecciona sólo a los europeos


# Selecciona a la mexicana de 1.62


# Selecciona a la columna de hombres


# Media de los hombres
mean(matriz_estatura[ ,"hombres"])

# Obten la media de las mujeres


# Aritmética con matrices (no sigue las reglas de álgebra linear por default)

# Estatura en pulgadas
matriz_estatura * 39.3701

# Obten la estatura en cm


# Crea otra matriz con las mismas dimensiones
dim(matriz_estatura)


# Ahora realiza una suma, multiplicación y división con dos de las matrices creadas


# Operaciones matriciales
A <- matrix(1:4, ncol = 2); B <- matrix(5:8, ncol = 2)
A * B # El dault de R es hacer operaciones elemento por elemento
A %*% B # Para las operaciones matriciales es necesario encerrar el operador entre signos de porcentaje


###### DATA.FRAME #####

# Arreglo cuadrado de datos, admiten diferentes tipos de datos, 
# debe ser rectangular (todas las columnas de la misma longitud)
# Es la manera más usada para almacenar datos

# Instala el paquete MASS
install.packages("MASS")

# Carga el paquete MASS
library(MASS)

# R tiene datos cargados por default, por ejemplo "anorexia"
# Explora el dataset "anorexia"
class(anorexia)
head(anorexia)
tail(anorexia)
summary(anorexia)

# El data.frame puede contener factores
class(anorexia[ ,"Treat"])

# Asi como variables numéricas
class(anorexia[ , "Prewt"])

# Obten el tipo de la columna "Postwt"


# Mas sencillo, utiliza la funcion str()
str(anorexia)

# Podemos crear un data.frame
nombre <- c("Mercurio", "Venus", "Tierra", "Marte", "Jupiter", "Saturno", "Urano", "Neptuno")
tipo <- c("Planeta Terrestre", "Planeta Terrestre", "Planeta Terrestre", 
          "Planeta Terrestre", "Gigante de gas", "Gigante de gas", "Gigante de gas", "Gigante de gas")
diametro <- c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883)
rotacion <- c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67)
anillos <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)

# La funcion data.frame une los diferentes tipos de datos
planetas <- data.frame(nombre, tipo, diametro, rotacion, anillos)

# Explora planetas y obten la clase o el tipo de datos que lo conforman





# Obtener valores del data.frame: [row , col]
planetas[ , "nombre"]
planetas[6 , ]

# Obten el diametro, la rotacion y los anillos de los planetas de Gas
planetas[5:8, c(1, 3:5)]

# Obten las mismas variables pero solo para marte


# El operador $ te permite seleccionar elementos (SÓLO COLUMNAS) de un objeto
planetas$nombre
planetas$rotacion

# Selecciona toda la variable diameter y la variable type



# Muestra los planetas sin anillos
planetas[planetas$anillos == FALSE, ]

# Muestra solo los planetas gaseosos y guardalos: gas



#### LISTAS ####

# Permite almacenar diferentes objetos de forma ordenada, sin importar
# si son vectores, matrices, data.frames, funciones, analisis...

mi_vector <- 1:10 
mi_matriz <- matrix(1:9, ncol = 3)
mi_df <- mtcars[1:10,]

# Almacena lo anterior de forma ordenada
mi_list <- list(mi_vector, mi_matriz, mi_df)

# Para acceder a sus elementos, necesitas [[]]
mi_list[[3]]
class(my_list)



