install.packages("agricolae")
library(agricolae)


#### forget these theyre just random tryouts
##install.packages("rstatix")
##library(rstatix) 
##install.packages("datarium")
##library(datarium)
##anovasoy3 <- aov(D_Soy[[3]]~D_Soy[[1]], data = D_Soy)
##summary(anovasoy3)
##tukey_hsd(anovasoy3, "D_Soy[[1]]")
##TukeyHSD(aov(D_Bean[[3]] ~ test1))
##HSD.test(aov(D_Bean[[3]] ~ test1))
##HSD.test(aov(D_Bean[[3]] ~ as.factor(D_Bean[[1]])), D_Bean[[1]])
##out=HSD.test(anovabean10,"D_Bean[[1]]", group=TRUE, alpha=0.05)
##out$groups
##HSD.test(anovabean3, D_Bean$`Treatments (strains)`)
##duncan.test(anovabean3, D_Bean$`Treatments (strains)`) 
###






## This link helped me with this code http://forums.cirad.fr/logiciel-r/viewtopic.php?t=7632##
###TUKEY
Tukey.Bean3=HSD.test(anovabean3,"D_Bean[[1]]", group=TRUE, alpha=0.05)
Tukey.Bean3$groups
Tukey.Bean4=HSD.test(anovabean4,"D_Bean[[1]]", group=TRUE, alpha=0.05)
Tukey.Bean4$groups
Tukey.Bean5=HSD.test(anovabean5,"D_Bean[[1]]", group=TRUE, alpha=0.05)
Tukey.Bean5$groups
Tukey.Bean6=HSD.test(anovabean6,"D_Bean[[1]]", group=TRUE, alpha=0.05)
Tukey.Bean6$groups
Tukey.Bean8=HSD.test(anovabean8,"D_Bean[[1]]", group=TRUE, alpha=0.05)
Tukey.Bean8$groups
Tukey.Bean9=HSD.test(anovabean9,"D_Bean[[1]]", group=TRUE, alpha=0.05)
Tukey.Bean9$groups
Tukey.Bean10=HSD.test(anovabean10,"D_Bean[[1]]", group=TRUE, alpha=0.05)
Tukey.Bean10$groups
Tukey.Bean11=HSD.test(anovabean11,"D_Bean[[1]]", group=TRUE, alpha=0.05)
Tukey.Bean11$groups



Tukey.Soy3=HSD.test(anovasoy3,"D_Soy[[1]]", group=TRUE, alpha=0.05)
Tukey.Soy3$groups
Tukey.Soy4=HSD.test(anovasoy4,"D_Soy[[1]]", group=TRUE, alpha=0.05)
Tukey.Soy4$groups
Tukey.Soy5=HSD.test(anovasoy5,"D_Soy[[1]]", group=TRUE, alpha=0.05)
Tukey.Soy5$groups
Tukey.Soy6=HSD.test(anovasoy6,"D_Soy[[1]]", group=TRUE, alpha=0.05)
Tukey.Soy6$groups
Tukey.Soy10=HSD.test(anovasoy10,"D_Soy[[1]]", group=TRUE, alpha=0.05)
Tukey.Soy10$groups
Tukey.Soy11=HSD.test(anovasoy11,"D_Soy[[1]]", group=TRUE, alpha=0.05)
Tukey.Soy11$groups

Tukey.Maize3=HSD.test(anovamaize3,"D_Maize[[1]]", group=TRUE, alpha=0.05)
Tukey.Maize3$groups
Tukey.Maize4=HSD.test(anovamaize4,"D_Maize[[1]]", group=TRUE, alpha=0.05)
Tukey.Maize4$groups
Tukey.Maize5=HSD.test(anovamaize5,"D_Maize[[1]]", group=TRUE, alpha=0.05)
Tukey.Maize5$groups
Tukey.Maize6=HSD.test(anovamaize6,"D_Maize[[1]]", group=TRUE, alpha=0.05)
Tukey.Maize6$groups
Tukey.Maize10=HSD.test(anovamaize10,"D_Maize[[1]]", group=TRUE, alpha=0.05)
Tukey.Maize10$groups
Tukey.Maize11=HSD.test(anovamaize11,"D_Maize[[1]]", group=TRUE, alpha=0.05)
Tukey.Maize11$groups




### DUNCAN
Duncan.Soy3 <- duncan.test(anovasoy3,"D_Soy[[1]]")
Duncan.Soy3$groups
Duncan.Soy4 <- duncan.test(anovasoy4,"D_Soy[[1]]")
Duncan.Soy4$groups
Duncan.Soy5 <- duncan.test(anovasoy5,"D_Soy[[1]]")
Duncan.Soy5$groups
Duncan.Soy6 <- duncan.test(anovasoy6,"D_Soy[[1]]")
Duncan.Soy6$groups
Duncan.Soy10 <- duncan.test(anovasoy10,"D_Soy[[1]]")
Duncan.Soy10$groups
Duncan.Soy11 <- duncan.test(anovasoy11,"D_Soy[[1]]")
Duncan.Soy11$groups

Duncan.Bean3 <- duncan.test(anovabean3,"D_Bean[[1]]")
Duncan.Bean3$groups
Duncan.Bean4 <- duncan.test(anovabean4,"D_Bean[[1]]")
Duncan.Bean4$groups
Duncan.Bean5 <- duncan.test(anovabean5,"D_Bean[[1]]")
Duncan.Bean5$groups
Duncan.Bean6 <- duncan.test(anovabean6,"D_Bean[[1]]")
Duncan.Bean6$groups
Duncan.Bean8 <- duncan.test(anovabean8,"D_Bean[[1]]")
Duncan.Bean8$groups
Duncan.Bean9 <- duncan.test(anovabean9,"D_Bean[[1]]")
Duncan.Bean9$groups
Duncan.Bean10 <- duncan.test(anovabean10,"D_Bean[[1]]")
Duncan.Bean10$groups
Duncan.Bean11 <- duncan.test(anovabean11,"D_Bean[[1]]")
Duncan.Bean11$groups

Duncan.Maize3 <- duncan.test(anovamaize3,"D_Maize[[1]]")
Duncan.Maize3$groups
Duncan.Maize4 <- duncan.test(anovamaize4,"D_Maize[[1]]")
Duncan.Maize4$groups
Duncan.Maize5 <- duncan.test(anovamaize5,"D_Maize[[1]]")
Duncan.Maize5$groups
Duncan.Maize6 <- duncan.test(anovamaize6,"D_Maize[[1]]")
Duncan.Maize6$groups
Duncan.Maize10 <- duncan.test(anovamaize10,"D_Maize[[1]]")
Duncan.Maize10$groups
Duncan.Maize11 <- duncan.test(anovamaize11,"D_Maize[[1]]")
Duncan.Maize11$groups



## Barlett test to test homogeneity of variances - its not important idk i just have it 
bartlett.test(D_Soy[[3]]~D_Soy[[1]], data = D_Soy)
bartlett.test(D_Soy[[4]]~D_Soy[[1]], data = D_Soy)
bartlett.test(D_Soy[[5]]~D_Soy[[1]], data = D_Soy)
bartlett.test(D_Soy[[6]]~D_Soy[[1]], data = D_Soy)
bartlett.test(D_Soy[[10]]~D_Soy[[1]], data = D_Soy)
bartlett.test(D_Soy[[11]]~D_Soy[[1]], data = D_Soy)

##### shakira



#FIRST, NORMALITY MUST BE TESTED

#shapiro tests Bean 

shapiro.test(D_Bean[[3]])
shapiro.test(D_Bean[[4]])
shapiro.test(D_Bean[[5]])
shapiro.test(D_Bean[[6]])
shapiro.test(D_Bean[[7]])
shapiro.test(D_Bean[[8]])
shapiro.test(D_Bean[[9]])
shapiro.test(D_Bean[[10]])
shapiro.test(D_Bean[[11]])

#shapiro test Maize
shapiro.test(D_Maize[[3]])
shapiro.test(D_Maize[[4]])
shapiro.test(D_Maize[[5]])
shapiro.test(D_Maize[[6]])
shapiro.test(D_Maize[[7]])
shapiro.test(D_Maize[[8]])
shapiro.test(D_Maize[[9]])
shapiro.test(D_Maize[[10]])
shapiro.test(D_Maize[[11]])

#shapiro test Soy
shapiro.test(D_Soy[[3]])
shapiro.test(D_Soy[[4]])
shapiro.test(D_Soy[[5]])
shapiro.test(D_Soy[[6]])
shapiro.test(D_Soy[[7]])
shapiro.test(D_Soy[[8]])
shapiro.test(D_Soy[[9]])
shapiro.test(D_Soy[[10]])
shapiro.test(D_Soy[[11]])

#shapiro test ALL
shapiro.test(D_GH[[3]])
shapiro.test(D_GH[[4]])
shapiro.test(D_GH[[5]])
shapiro.test(D_GH[[6]])
shapiro.test(D_GH[[7]])
shapiro.test(D_GH[[8]])
shapiro.test(D_GH[[9]])
shapiro.test(D_GH[[10]])
shapiro.test(D_GH[[11]])

#FOR THOSE WHOSE DATA FOLLOW A NORMAL DISTRIBUTION A ONE-WAY ANOVA IS DONE


#Anovas for Bean all columns except for columns 7 and 8 (not normally distributed)
anovabean3 <- aov(D_Bean[[3]]~D_Bean[[1]], data = D_Bean)
summary(anovabean3)
anovabean4 <- aov(D_Bean[[4]]~D_Bean[[1]], data = D_Bean)
summary(anovabean4)
anovabean5 <- aov(D_Bean[[5]]~D_Bean[[1]], data = D_Bean)
summary(anovabean5)
anovabean6 <- aov(D_Bean[[6]]~D_Bean[[1]], data = D_Bean)
summary(anovabean6)
anovabean9 <- aov(D_Bean[[9]]~D_Bean[[1]], data = D_Bean)
summary(anovabean9)
anovabean10 <- aov(D_Bean[[10]]~D_Bean[[1]], data = D_Bean)
summary(anovabean10)
anovabean11 <- aov(D_Bean[[11]]~D_Bean[[1]], data = D_Bean)
summary(anovabean11)

## the same can be done saving every anova in a list
listbean <- vector(mode = "list", length = 9)
i <- 1
for (i in 3:11){
  listbean[[i-1]] <- aov(D_Bean[[i]]~D_Bean[[1]])
}

summary(listbean[[2]])
summary(listbean[[3]])
summary(listbean[[4]])
summary(listbean[[5]])
summary(listbean[[6]])
summary(listbean[[7]])
summary(listbean[[8]])
summary(listbean[[9]])
summary(listbean[[10]])


#Anovas for Soy all columns except for columns 7, 8 and 9 (not normally distributed)
anovasoy3 <- aov(D_Soy[[3]]~D_Soy[[1]], data = D_Soy)
summary(anovasoy3)
anovasoy4 <- aov(D_Soy[[4]]~D_Soy[[1]], data = D_Soy)
summary(anovasoy4)
anovasoy5 <- aov(D_Soy[[5]]~D_Soy[[1]], data = D_Soy)
summary(anovasoy5)
anovasoy6 <- aov(D_Soy[[6]]~D_Soy[[1]], data = D_Soy)
summary(anovasoy6)
anovasoy10 <- aov(D_Soy[[10]]~D_Soy[[1]], data = D_Soy)
summary(anovasoy10)
anovasoy11 <- aov(D_Soy[[11]]~D_Soy[[1]], data = D_Soy)
summary(anovasoy11)

## the same can be done saving every anova in a list
listsoy <- vector(mode = "list", length = 9)
i <- 1
for (i in 3:11){
  listsoy[[i-1]] <- aov(D_Soy[[i]]~D_Soy[[1]])
}

summary(listsoy[[2]])
summary(listsoy[[3]])
summary(listsoy[[4]])
summary(listsoy[[5]])
summary(listsoy[[6]])
summary(listsoy[[7]])
summary(listsoy[[8]])
summary(listsoy[[9]])
summary(listsoy[[10]])

#Anovas for Maize all columns except for columns 7, 8 and 9 (not normally distributed)
anovamaize3 <- aov(D_Maize[[3]]~D_Maize[[1]], data = D_Maize)
summary(anovamaize3)
anovamaize4 <- aov(D_Maize[[4]]~D_Maize[[1]], data = D_Maize)
summary(anovamaize4)
anovamaize5 <- aov(D_Maize[[5]]~D_Maize[[1]], data = D_Maize)
summary(anovamaize5)
anovamaize6 <- aov(D_Maize[[6]]~D_Maize[[1]], data = D_Maize)
summary(anovamaize6)
anovamaize10 <- aov(D_Maize[[10]]~D_Maize[[1]], data = D_Maize)
summary(anovamaize10)
anovamaize11 <- aov(D_Maize[[11]]~D_Maize[[1]], data = D_Maize)
summary(anovamaize11)


## the same can be done saving every anova in a list
listmaize <- vector(mode = "list", length = 9)
i <- 1
for (i in 3:11){
  listmaize[[i-1]] <- aov(D_Maize[[i]]~D_Maize[[1]])
}

summary(listmaize[[2]])
summary(listmaize[[3]])
summary(listmaize[[4]])
summary(listmaize[[5]])
summary(listmaize[[6]])
summary(listmaize[[7]])
summary(listmaize[[8]])
summary(listmaize[[9]])
summary(listmaize[[10]])


#NON PARAMETRIC KRUSKAL-WALLIS TEST FOR THOSE WHO DO NOT FOLLOW NORMALITY

#Kruskal-Wallis for Bean (columns 7 and 8)
kruskalbean7 <- kruskal(D_Bean[[7]],D_Bean[[1]], alpha = 0.05)
kruskalbean8 <- kruskal(D_Bean[[8]],D_Bean[[1]], alpha = 0.05)

kruskalbean7
kruskalbean8

#Kruskal-Wallis for Soy (columns 7,8 and 9)
kruskalsoy7 <- kruskal(D_Soy[[7]],D_Soy[[1]], alpha = 0.05)
kruskalsoy8 <- kruskal(D_Soy[[8]],D_Soy[[1]], alpha = 0.05)
kruskalsoy9 <- kruskal(D_Soy[[9]],D_Soy[[1]], alpha = 0.05)

kruskalsoy7
kruskalsoy8
kruskalsoy9

#Kruskal-Wallis for Maize (columns 7,8 and 9)
kruskalmaize7 <- kruskal(D_Maize[[7]],D_Maize[[1]], alpha = 0.05)
kruskalmaize8 <- kruskal(D_Maize[[8]],D_Maize[[1]], alpha = 0.05)
kruskalmaize9 <- kruskal(D_Maize[[9]],D_Maize[[1]], alpha = 0.05)

kruskalmaize7
kruskalmaize8
kruskalmaize9

#Kruskal-Wallis for ALL (All columns are not normal)

kruskalGH3 <- kruskal(D_GH[[3]],D_GH[[1]], alpha = 0.05)
kruskalGH4 <- kruskal(D_GH[[4]],D_GH[[1]], alpha = 0.05)
kruskalGH5 <- kruskal(D_GH[[5]],D_GH[[1]], alpha = 0.05)
kruskalGH6 <- kruskal(D_GH[[6]],D_GH[[1]], alpha = 0.05)
kruskalGH7 <- kruskal(D_GH[[7]],D_GH[[1]], alpha = 0.05)
kruskalGH8 <- kruskal(D_GH[[8]],D_GH[[1]], alpha = 0.05)
kruskalGH9 <- kruskal(D_GH[[9]],D_GH[[1]], alpha = 0.05)
kruskalGH10 <- kruskal(D_GH[[10]],D_GH[[1]], alpha = 0.05)
kruskalGH11 <- kruskal(D_GH[[11]],D_GH[[1]], alpha = 0.05)

kruskalGH3
kruskalGH4
kruskalGH5
kruskalGH6
kruskalGH7
kruskalGH8
kruskalGH9
kruskalGH10
kruskalGH11
