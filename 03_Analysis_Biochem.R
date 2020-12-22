#03_analisis_DBiochem
#install.packages("rstatix")
#install.packages("nortest")
#install.packages("BBmisc")
#install.packages("dunn.test")
#install.packages("agricolae")

library(dunn.test)
library(BBmisc)
library (rstatix)
library (nortest)
library(agricolae)

plot(D_Phosphorus$P_pg ~ D_Phosphorus$LSM_strain)
hist(D_Phosphorus$P_pg)

##Normality 
# IAA
D_IAA <- D_IndolA[-which(names(D_IndolA) == "Repetition")] # - (eliminate) which column name in D_Soy is N Soil (%) (column 8)
names(D_IAA)[names(D_IAA) == "µg AIA/ g biomass"] <- "IAA_pg" #rename µg P/ g biomass column
names(D_IAA)[names(D_IAA) == "LSM strain"] <- "LSM_strain" #rename µg P/ g biomass column

#A pesar de que continuamente se alude al test Kolmogorov-Smirnov como un test válido para contrastar la normalidad, esto no es del todo cierto. El Kolmogorov-Smirnov asume que se conoce la media y varianza poblacional, lo que en la mayoría de los casos no es posible. Esto hace que el test sea muy conservador y poco potente. Para solventar este problema, se desarrolló una modificación del Kolmogorov-Smirnov conocida como test Lilliefors. El test Lilliefors asume que la media y varianza son desconocidas, estando especialmente desarrollado para contrastar la normalidad. Es la alternativa al test de Shapiro-Wilk cuando el número de observaciones es mayor de 50. La función lillie.test() del paquete nortest permite aplicarlo https://rpubs.com/Joaquin_AR/218465
nortest::lillie.test(D_IAA$IAA_pg)
shapiro_test(D_IAA, IAA_pg) #este no porque hay mas de 50 observaciones
ks.test(D_IAA$IAA_pg, pnorm) #este no porque no se conoce la media ni la desviacion estandard de la poblacion

# P
names(D_Phosphorus)[names(D_Phosphorus) == "µg P/ g biomass"] <- "P_pg" #rename µg P/ g biomass column
names(D_Phosphorus)[names(D_Phosphorus) == "LSM strain"] <- "LSM_strain" #rename LSM strain column

nortest::lillie.test(D_Phosphorus$P_pg)
#No es normal tampoco

##Non-parametric test Kruskal-Wallis
#Instead the null hypothesis to be tested is very general and usually assumes that the two populations are equal (in terms of their central tendency)
kruskal_test(D_IAA, IAA_pg ~ LSM_strain)
#p = 0.00000239 


##Post-hoc comparison, Holm test
kr <- agricolae::kruskal(D_IAA[2], D_IAA[1], alpha = 0.05, p.adj ="holm", group=TRUE)
plot (kr) #groups get created
#dunn.test::dunn.test(D_Phosphorus$P_pg, g= D_Phosphorus$LSM_strain, method= "bonferroni", kw=FALSE, label=TRUE, list = TRUE)
#What is Z-score: (1st number in the result), the z-score is a measure that shows how much away (below or above) of the mean is a specific value (individual) in a given dataset.

sq_P <- sqrt(IS$count)
sq_D_Phosphorus <- data.frame(sq_c, IS$spray)
##Homoedasticity test
##Fisher test: no se puede
##ANOVA: no se puede
##Posthoc: Tukey
##Posthoc: Duncan
