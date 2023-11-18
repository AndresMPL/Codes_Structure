
#Libro
#Introducción a la microeconometría con aplicaciones en R

#Listas
  
  a <- 10
  vectorc = c(1,2,3,4,5)
  
  install.packages("AER")
  library(AER)
  data("CPS1985")
  CPS1985$wage

  lista_ejemplo = list(numero = a, vector = vectorc, base = CPS1985) 
  lista_ejemplo

  lista_ejemplo$numero
  lista_ejemplo$vector
  lista_ejemplo$base

  names(lista_ejemplo)

#Import
  
  salud <- read.csv("C:/Users/User/Documents/Big_Data/Datasets_personal/DANE_salud/Salud.csv")
  geih_ocupados <- read.csv("C:/Users/User/Documents/Big_Data/Datasets_personal/DANE_GEIH/2023_Abril/Ocupados.csv", sep = ";")
  nacimientos2021 <- read_csv("C:/Users/User/Documents/Big_Data/Datasets_personal/DANE_nacimientos/nac2021.csv")
  
  View(nacimientos2021)
  names(nacimientos2021)
  length(nacimientos2021)
  
#Modelo Lineal
    
    nac_99 <- nacimientos2021 %>% subset(EDAD_MADRE == 99)
    dim1 <- nrow(nacimientos2021)
    nacimientos2021 <- nacimientos2021[nacimientos2021$EDAD_MADRE < 99, ]
    dim2 <- nrow(nacimientos2021)
    dim1 - dim2
  
    x <- EDAD_MADRE
    y <- PESO_NAC
    
    summary(nacimientos2021$EDAD_MADRE)
    summary(nacimientos2021$PESO_NAC)  
    
    table(EDAD_MADRE)
    table(PESO_NAC)
    
    beta1 <- cov(EDAD_MADRE,PESO_NAC)/var(EDAD_MADRE)
    beta1
    
    beta0 <- mean(PESO_NAC) - (beta1 * mean(EDAD_MADRE))
    beta0

    modelo1 <- lm(PESO_NAC~EDAD_MADRE)
    modelo1
    coef(modelo1)
    
    plot(nacimientos2021$EDAD_MADRE,nacimientos2021$PESO_NAC)
    abline(modelo1)
    
    pairs(nacimientos2021$EDAD_MADRE~nacimientos2021$PESO_NAC)

    anovamod1 = anova(modelo1)    
    anovamod1
    
    str(anovamod1, strict.width = "wrap")

    SEC = anovamod1$`Sum Sq`[1]
    SRC = anovamod1$`Sum Sq`[2]
    STC = SEC + SRC
    
    R2 = SEC/STC
    R2
    R2 * 100

    modelo2 <- lm(PESO_NAC ~ TIPO_PARTO,data=nacimientos2021)
    stargazer(modelo2, type = "text")

    grafico1 <- ggplot(data=nacimientos2021) + geom_point(aes(TIPO_PARTO, PESO_NAC))
    grafico1
            