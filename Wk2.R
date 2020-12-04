# Escoger la carpeta
setwd("D:/Proyectos/R/datasciencecoursera")

# Clase Wk2, R Programming in Coursera

# Prueba basica de IF
x <- 6

if (x > 5) {
  y <- 10
} else {
  y <-0
}

y

# Prueba de For

for (i in 1:10) {
  print(i)
}

my_vector <- c("a", "b", "c", "d")

for (i in 1:length(my_vector)) {
  print (my_vector[i])
}

# Nested For Loops

my_matrix <- matrix(1:6, 3, 2)
my_matrix
for (j in 1:2) {
  for(i in 1:3) {
    print(my_matrix[i,j]) # El orden de los indices es 
  }
}

# Ciclos While
cuenta <- 0
while (cuenta < 10) {
  print(cuenta)
  cuenta <- cuenta + 1
}

# Prueba de Next y Break
for (i in 1:10) {
  if (i <= 5) {
    print ("a")
    next                   # le da la salida al if, pero vuelve al ciclo
  }
  print (i)                # sale del ciclo completamente
  break
}

# Prueba de funciones

# Mi primera funcion

add2 <- function(x, y) {
  x + y
}
add2(2,3)

above <- function(my_vector, my_var) {
  use <- my_vector > my_var  # asigna el vector con los T,F que son > 10
  my_vector[use]             # imprimir el vector[con >10], solo los valores
}
above(my_vector, 5)


above <- function(my_vector, my_var = 10) {   # =10 deja el valor fijo y no hay que especificarlo
  use <- my_vector > my_var  # asigna el vector con los T,F que son > 10
  my_vector[use]             # imprimir el vector[con >10], solo los valores
}

above(my_vector)

columnmean <- function(y, removeNA = T) {
  nc <- ncol(y)
  means <- numeric(nc)
  for (i in 1:nc) {
    means[i] <- mean(y[, i], na.rm = removeNA)
  }
  means
}

columnmean(airquality)

# Lexical Scoping

# Funciones dentro de funciones
make.power <- function(n) {
  pow <- function(x) {
    x^n
  }
  pow
}

# Define las funciones internas con valor x (adentro de la funcion)
cube <- make.power(3)
square <- make.power(2)

# Llama la funcion cube que luego llama a make.power para hacer la potencia
cube(4) # 4^3 ... el tres lo saco de make.power
square(10) # El square lo saco de la funcion make.power

ls(environment(cube))
ls(environment(square))

get("n", environment(cube))
get("n", environment(square))

get("x", environment(cube)) # Aqui no funciona porque x es interna y no global

# Practica de Date and Time

x <- as.Date("1977-09-11")
x
unclass(x)  # cuanto tiempo ha pasado desde 1970-01-01
class(x)    # va a mostrar que es de tipo Date, 2810 dias despues
unclass(as.Date("2020-12-04"))


