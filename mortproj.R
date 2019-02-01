# Mortality forecasting based on Hyndman et. al (2011) and Spedicato (2013).
# Code replicated from "Mortality projection with demography and lifecontingencies packages"
# adapated to spanish population.

rm(list=ls())
library(demography)
library(lifecontingencies)
library(forecast)

# Load data from HMD
# In our case: Spain
spainDemo<-hmd.mx(country="COUNTRY ABBREVIATION", username="username",
password = "password", label = "Country") 

#load(file="mortalityDatasets.RData")

par(mfrow=c(1,3))
plot(spainDemo,series="male",datatype="rate", main="Tasa Masculina", xlab = "Edad")
plot(spainDemo,series="female",datatype="rate", main="Tasa Femenina", xlab = "Edad")
plot(spainDemo,"total",datatype="rate", main="Tasa Total", xlab = "Edad")

par(mfrow=c(1,3))
plot(spainDemo, series = "male", datatype = "rate",
    plot.type = "time", main ="Tasa Masculina",xlab = "Años")
plot(spainDemo, series = "female", datatype = "rate",
    plot.type = "time", main = "Tasa Femenina", xlab = "Años")
plot(spainDemo, series = "total", datatype = "rate",
    plot.type = "time", main = "Tasa Total", xlab ="Años")

spainLcaM<-lca(spainDemo,series="male",max.age=100)
spainLcaF<-lca(spainDemo,series="female",max.age=100)
spainLcaT<-lca(spainDemo,series="total",max.age=100)

par(mfrow=c(1,3))
plot(spainLcaT$ax, main = "ax", xlab = "Edad",ylab = "ax", type = "l")
lines(x = spainLcaF$age, y = spainLcaF$ax, main = "ax", col = "red")
lines(x = spainLcaM$age, y = spainLcaM$ax, main = "ax", col = "blue")
legend("topleft" , c("Masculino","Femenino","Total"),
       cex = 0.8, col = c("blue","red","black"),lty = 1);
plot(spainLcaT$bx, main = "bx", xlab = "Edad", ylab = "bx", type = "l")
lines(x = spainLcaF$age, y = spainLcaF$bx, main = "bx", col = "red")
lines(x = spainLcaM$age, y = spainLcaM$bx, main = "bx", col = "blue")
legend("topright" , c("Masculino","Femenino","Total"),
        cex = 0.8, col = c("blue","red","black"),lty = 1);
plot(spainLcaT$kt, main = "kt", xlab = "Año", ylab = "kt", type = "l")
lines(x = spainLcaF$year, y = spainLcaF$kt, main="kt", col="red")
lines(x = spainLcaM$year, y = spainLcaM$kt, main="kt", col="blue")
legend("topright" , c("Masculino","Femenino","Total"),
        cex = 0.8, col = c("blue","red","black"),lty = 1);

fM <- forecast(spainLcaM, h = 110)
fF <- forecast(spainLcaF, h = 110)
fT <- forecast(spainLcaT, h = 110)

par(mfrow = c(1,3))
plot(fM$kt.f,main="Masculino")
plot(fF$kt.f,main="Femenino")
plot(fT$kt.f,main="Total")

ratesM<-cbind(spainDemo$rate$male[1:100,],fM$rate$male[1:100,])
ratesF<-cbind(spainDemo$rate$female[1:100,],fF$rate$female[1:100,])
ratesT<-cbind(spainDemo$rate$total[1:100,],fT$rate$total[1:100,])

par(mfrow=c(1,1))
plot(seq(min(spainDemo$year),max(spainDemo$year)+110),ratesF[65,],
        col="red",xlab="Años",ylab="Tasas de fallecimiento",type="l")
lines(seq(min(spainDemo$year),max(spainDemo$year)+110),ratesM[65,],
        col="blue",xlab="Años",ylab="Tasas de fallecimiento")
lines(seq(min(spainDemo$year),max(spainDemo$year)+110),ratesT[65,],
        col="black",xlab="Años",ylab="Tasas de fallecimiento")
legend("topright" , c("Masculino","Femenino","Total"),
        cex=0.8,col=c("blue","red","black"),lty=1);

