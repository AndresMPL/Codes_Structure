
library(pacman)
p_load(readr, dplyr, tidyverse,stargazer)

#Base de datos de práctica

  #Salud
  salud <- read_csv("C:/Users/User/Documents/Big_Data/Datasets_personal/DANE_salud/Salud.csv")
  
  #Nacimientos
  #Diccionario: https://microdatos.dane.gov.co/index.php/catalog/775/data-dictionary/F31?file_name=nac2021
  nacimientos2021 <- read_csv("C:/Users/User/Documents/Big_Data/Datasets_personal/DANE_nacimientos/nac2021.csv")
  
  #Cultura
  
  cultura2020 <- read_delim("C:/Users/User/Documents/Big_Data/Datasets_personal/DANE_cultura/encuesta_consumo_cultural_2020.csv", 
                            delim = ";", escape_double = FALSE, trim_ws = TRUE)
  
  #Bienes1
  #Información de los gastos del hogar
  #https://microdatos.dane.gov.co/index.php/catalog/204/data-dictionary
  
  Ig_gs_hogar <- read_delim("C:/Users/User/Documents/Big_Data/Datasets_personal/DANE_bienes/Ig_gs_hogar.txt", 
                            delim = "\t", escape_double = FALSE, na = "NA", trim_ws = TRUE)

  #Bienes2
  #Información del artículo, cantidad, la unidad de medida expresada en cm3 o gramos, 
  #cantidad, forma de adquisición, lugar de compra, valor pagado o estimado del bien o servicio
  #https://microdatos.dane.gov.co/index.php/catalog/204/data-dictionary
  
  Ig_gsdu_gas_dia <- read_delim("C:/Users/User/Documents/Big_Data/Datasets_personal/DANE_bienes/Ig_gsdu_gas_dia.txt", 
                                delim = "\t", escape_double = FALSE,na = "NA", trim_ws = TRUE)
  
  #Bienes3
  #Información de bienes o servicios adquiridos por los hogares de contado y a crédito
  #https://microdatos.dane.gov.co/index.php/catalog/204/data-dictionary
    
  Ig_gsmf_compra <- read_delim("C:/Users/User/Documents/Big_Data/Datasets_personal/DANE_bienes/Ig_gsmf_compra.txt", 
                              delim = "\t", escape_double = FALSE, na = "NA", trim_ws = TRUE)
  
  #GEIH - Dic 2016
  #https://microdatos.dane.gov.co/index.php/catalog/782/data-dictionary/F64?file_name=Ocupados
  
  geih_ocupados <- read.csv("C:/Users/User/Documents/Big_Data/Datasets_personal/DANE_GEIH/2023_Abril/Ocupados.CSV")
