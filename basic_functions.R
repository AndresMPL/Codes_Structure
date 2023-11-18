
#FUNCIONES BÁSICAS EN R

#Paquetes a usar

library(pacman)
p_load(readr, dplyr, tidyverse,stargazer)

#Básicos
  
  a <- c(1,2,3)
  b <- c("x","y","z")
  c <- c("A","B","C")
  
  w <- data.frame(a,b,c)
  View(w)
  
  setwd("C:/Users/User/Documents/Big_Data/GitHub/Codes_Structure")
  save(w, file = "data_frame_test.RData")
  
#Directorios
  
  #Fijar un directorio
  setwd("C:/Users/User/Documents/Big_Data/GitHub/Codes_Structure")
  
  #Obtener la ruta del directorio actual
  getwd()
  
#Manipulación de la BD
  
  dim(salud)
  summary(salud$P6127) #Estado de salud
  summary(salud$P6100) #Regimen de afiliacion
  
  