
#FUNCIONES BÁSICAS EN R

#Paquetes a usar

  library(readr)
  library(dplyr)
  library(tidyverse)

  #Base de datos de práctica
  
  #Salud
  salud <- read_csv("Salud.csv")
  
  #Nacimientos
  nacimientos2018 <- read_csv("~/Big_Data/Datasets_personal/DANE_nacimientos/nac2018.csv")

  #Cultura
  cultura2020 <- read_delim("~/Big_Data/Datasets_personal/DANE_cultura/encuesta_consumo_cultural_2020.csv", 
                            delim = ";", escape_double = FALSE, trim_ws = TRUE)
  

#Pasos iniciales
  
  a <- c(1,2,3)
  b <- c("x","y","z")
  c <- c("A","B","C")
  
  w <- data.frame(a,b,c)
  View(w)
  
  setwd("C:/Users/User/Documents/Big_Data/GitHub/Codes_Structure")
  save(w, file = "data_frame_test.RData")
  
    