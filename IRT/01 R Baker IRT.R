#****Primer Script en R sobre IRT**** by DrV

theta <- seq(-3, 3, .1)
#assign("theta", seq(-3,3,.1))
#seq(-3, 3, .1) -> theta

bmedium <- 0
amoderate <- 1
P <- 1 / (1 + exp(-amoderate * (theta - bmedium)))
plot(theta, P) 
plot(theta, P, type="l")

help("plot")
?plot

##### Figura mejorada

par(lab=c(7,10,1)) #Asigna en los parámetros la separación que tendrán
theta <- seq(-3, 3, .1)
b <- 0
a <- 1
P <- 1 / (1 + exp(-a * (theta - b)))
plot(theta, P, type="o", xlim=c(-3,3), ylim=c(0,1), 
     xlab=expression(paste("Habilidad, ",theta)),
     ylab=expression(paste("Probabilidad de responder correctamente, P (",theta,")")))


#### Figura más mejorada!

par(lab=c(7,10,1))
theta <- seq(-3, 3, .1)
b <- 0
a <- 1
P <- 1 / (1 + exp(-a * (theta - b)))
plot(theta, P, type="o", xlim=c(-3,3), ylim=c(0,1), 
     main="Figura 1. Curva característica de un item con dificultad media
     y discriminación moderada",
     sub="Ver Baker y Kim (2016).",
     xlab=expression(paste("Habilidad, ",theta)),
     ylab=expression(paste("Probabilidad de responder correctamente, P (",theta,")")))

#### Su primer funci??n "ICC"

iccplot <- function(b, a) {
  par(lab=c(7,3,3))
  theta <- seq(-3, 3, .1)
  P <- 1 / (1 + exp(-a * (theta - b)))
  plot(theta, P, type="l", xlim=c(-3,3), ylim=c(0,1),
       xlab="Habilidad", ylab="Probabilidad de responder correctamente")
}


iccplot(0, 1)

iccplot(a=1, b=0) # Si cambian los valores de los parámetros a y b se modifica la forma general de la figura

#Dificultades
bmuyfacil <- -2.625
bfacil <- -1.5
bmedia <- 0
bdificil <- 1.5
bmuydificil <- 2.625

#Discriminaciones
anula <- 0
abaja <- 0.4
amoderada <- 1
aalta <- 2.1
aperfecta <- 999

#Plots simultáneos

iccplot(bmedia, amoderada)
par(new=T)
iccplot(bfacil, abaja)

#Otro ejemplo

iccplot(bfacil, amoderada)
par(new=TRUE)
iccplot(bmedia, amoderada)
par(new=TRUE)
iccplot(bdificil, amoderada)

#Ejercicios

iccplot(bfacil, aalta) #Ejercicio 1

iccplot(bdificil, abaja) #Ejercicio 2

iccplot(bmedia, abaja) #Ejercicio 3

iccplot(bmedia, anula) #Ejercicio 4
par(new=T)
iccplot(bmedia, abaja)
par(new=T)
iccplot(bmedia, amoderada)
par(new=T)
iccplot(bmedia, aalta)
par(new=T)
iccplot(bmedia, aperfecta)


iccplot(bmuyfacil, amoderada) #Ejercicio 5
par(new=T)
iccplot(bfacil, amoderada)
par(new=T)
iccplot(bmedia, amoderada)
par(new=T)
iccplot(bdificil, amoderada)
par(new=T)
iccplot(bmuydificil, amoderada)

