#install.packages("agricolae")
library(agricolae)
#install.packages("lmtest")
library(lmtest)


#Anovas for Bean all columns except for columns 7 and 8 (not normally distributed)
anovabean3 <- aov(D_Bean[[3]]~D_Bean[[1]], data = D_Bean)
summary(anovabean3)
anovabean4 <- aov(D_Bean[[4]]~D_Bean[[1]], data = D_Bean)
summary(anovabean4)
anovabean5 <- aov(D_Bean[[5]]~D_Bean[[1]], data = D_Bean)
summary(anovabean5)
anovabean6 <- aov(D_Bean[[6]]~D_Bean[[1]], data = D_Bean)
summary(anovabean6)
anovabean7 <- aov(D_Bean[[7]]~D_Bean[[1]], data = D_Bean)
summary(anovabean7)
anovabean8 <- aov(D_Bean[[8]]~D_Bean[[1]], data = D_Bean)
summary(anovabean8)
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
anovasoy7 <- aov(D_Soy[[7]]~D_Soy[[1]], data = D_Soy)
summary(anovasoy7)
anovasoy8 <- aov(D_Soy[[8]]~D_Soy[[1]], data = D_Soy)
summary(anovasoy8)
anovasoy9 <- aov(D_Soy[[9]]~D_Soy[[1]], data = D_Soy)
summary(anovasoy9)
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
anovamaize7 <- aov(D_Maize[[7]]~D_Maize[[1]], data = D_Maize)
summary(anovamaize7)
anovamaize8 <- aov(D_Maize[[8]]~D_Maize[[1]], data = D_Maize)
summary(anovamaize8)
anovamaize9 <- aov(D_Maize[[9]]~D_Maize[[1]], data = D_Maize)
summary(anovamaize9)
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

#TWO WAY ANOVA for ALL 
anovaall3 <- aov(D_GH[[3]]~D_GH[[1]] + D_GH[[12]], data = D_GH)
summary(anovaall3)
anovaall4 <- aov(D_GH[[4]]~D_GH[[1]]+ D_GH[[12]], data = D_GH)
summary(anovaall4)
anovaall5 <- aov(D_GH[[5]]~D_GH[[1]]+ D_GH[[12]], data = D_GH)
summary(anovaall5)
anovaall6 <- aov(D_GH[[6]]~D_GH[[1]]+ D_GH[[12]], data = D_GH)
summary(anovaall6)
anovaall7 <- aov(D_GH[[7]]~D_GH[[1]]+ D_GH[[12]], data = D_GH)
summary(anovaall7)
anovaall8 <- aov(D_GH[[8]]~D_GH[[1]]+ D_GH[[12]], data = D_GH)
summary(anovaall8)
anovaall9 <- aov(D_GH[[9]]~D_GH[[1]]+ D_GH[[12]], data = D_GH)
summary(anovaall9)
anovaall10 <- aov(D_GH[[10]]~D_GH[[1]]+ D_GH[[12]], data = D_GH)
summary(anovaall10)
anovaall11 <- aov(D_GH[[11]]~D_GH[[1]]+ D_GH[[12]], data = D_GH)
summary(anovaall11)

listall <- vector(mode = "list", length = 9)
i <- 1
for (i in 3:11){
  listall[[i-1]] <- aov(D_GH[[i]]~D_GH[[1]] + D_GH[[12]])
}

summary(listall[[2]])
summary(listall[[3]])
summary(listall[[4]])
summary(listall[[5]])
summary(listall[[6]])
summary(listall[[7]])
summary(listall[[8]])
summary(listall[[9]])
summary(listall[[10]])

#NORMALITY TEST OBVER THE RESIDUALS OF ANOVA
#shapiro tests Bean 

shapiro.test(anovabean3$residuals)
shapiro.test(anovabean4$residuals)
shapiro.test(anovabean5$residuals)
shapiro.test(anovabean6$residuals)
shapiro.test(anovabean7$residuals)
shapiro.test(anovabean8$residuals)
shapiro.test(anovabean9$residuals)
shapiro.test(anovabean10$residuals)
shapiro.test(anovabean11$residuals)

#shapiro test Maize
shapiro.test(anovamaize3$residuals)
shapiro.test(anovamaize4$residuals)
shapiro.test(anovamaize5$residuals)
shapiro.test(anovamaize6$residuals)
shapiro.test(anovamaize7$residuals)
shapiro.test(anovamaize8$residuals)
shapiro.test(anovamaize9$residuals)
shapiro.test(anovamaize10$residuals)
shapiro.test(anovamaize11$residuals)

#shapiro test Soy
shapiro.test(anovasoy3$residuals)
shapiro.test(anovasoy4$residuals)
shapiro.test(anovasoy5$residuals)
shapiro.test(anovasoy6$residuals)
shapiro.test(anovasoy7$residuals)
shapiro.test(anovasoy8$residuals)
shapiro.test(anovasoy9$residuals)
shapiro.test(anovasoy10$residuals)
shapiro.test(anovasoy11$residuals)

#shapiro test ALL
shapiro.test(anovaall3$residuals)
shapiro.test(anovaall4$residuals)
shapiro.test(anovaall5$residuals)
shapiro.test(anovaall6$residuals)
shapiro.test(anovaall7$residuals)
shapiro.test(anovaall8$residuals)
shapiro.test(anovaall9$residuals)
shapiro.test(anovaall10$residuals)
shapiro.test(anovaall11$residuals)

#Homoecedasticity Tests: Breusch-Pagan

#BEAN
bptest(anovabean3)
bptest(anovabean4)
bptest(anovabean5)
bptest(anovabean6)
bptest(anovabean7)
bptest(anovabean8)
bptest(anovabean9)
bptest(anovabean10)
bptest(anovabean11)

#MAIZE
bptest(anovamaize3)
bptest(anovamaize4)
bptest(anovamaize5)
bptest(anovamaize6)
bptest(anovamaize7)
bptest(anovamaize8)
bptest(anovamaize9)
bptest(anovamaize10)
bptest(anovamaize11)

#SOY
bptest(anovasoy3)
bptest(anovasoy4)
bptest(anovasoy5)
bptest(anovasoy6)
bptest(anovasoy7)
bptest(anovasoy8)
bptest(anovasoy9)
bptest(anovasoy10)
bptest(anovasoy11)

#ALL
bptest(anovaall3)
bptest(anovaall4)
bptest(anovaall5)
bptest(anovaall6)
bptest(anovaall7)
bptest(anovaall8)
bptest(anovaall9)
bptest(anovaall10)
bptest(anovaall11)


#NON PARAMETRIC KRUSKAL-WALLIS TEST FOR THOSE WHO DO NOT FOLLOW NORMALITY

#Kruskal-Wallis for Bean (columns 4 and 7)
kruskalbean3 <- kruskal(D_Bean[[3]],D_Bean[[1]], alpha = 0.05)
kruskalbean7 <- kruskal(D_Bean[[7]],D_Bean[[1]], alpha = 0.05)
kruskalbean8 <- kruskal(D_Bean[[8]],D_Bean[[1]], alpha = 0.05)
kruskalbean9 <- kruskal(D_Bean[[9]],D_Bean[[1]], alpha = 0.05)

kruskalbean3
kruskalbean7
kruskalbean8
kruskalbean9

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
kruskalGH7 <- kruskal(D_GH[[7]],D_GH[[1]], alpha = 0.05)
kruskalGH8 <- kruskal(D_GH[[8]],D_GH[[1]], alpha = 0.05)

kruskalGH3
kruskalGH4
kruskalGH5
kruskalGH7
kruskalGH8
