#install.packages("lmtest")
#install.packages("agricolae")

library(lmtest)
library(agricolae)

##Normal residues? P
ANOVA_P<- aov (D_Phosphorus$P_pg ~ D_Phosphorus$LSM_strain, data= D_Phosphorus)
print(summary(ANOVA_P))
nortest::lillie.test(ANOVA_P$residuals)
#P residues are normal P-value = 0.01259 for normality, a very significant difference (0 ***) in ANOVA

##Normal residues IAA
ANOVA_IAA<- aov (D_IAA$IAA_pg ~ D_IAA$LSM_strain, data= D_IAA)
print(summary(ANOVA_IAA))
nortest::lillie.test(ANOVA_IAA$residuals)
#IAA residues are not normal p-value = 8.405e-16

qqline(ANOVA_IAA$residuals, distribution = qnorm) #plot it to see the skew of the data, this data showed a right skew, transformations used according to https://medium.com/analytics-vidhya/a-guide-to-data-transformation-9e5fa9ae1ca3

####Normalizing the data residuals
# ##Square root transformation
# n_IAA <- sqrt(D_IAA$IAA_pg)
# n_D_IAA <- data.frame(n_IAA, D_IAA$LSM_strain)
# hist(n_D_IAA$n_IAA)
# ANOVA_n_IAA<- aov (n_D_IAA$n_IAA ~ n_D_IAA$D_IAA.LSM_strain, data= n_D_IAA)
# print(summary(ANOVA_n_IAA))
# nortest::lillie.test(ANOVA_n_IAA$residuals)
# #Residuals are not normal p-value = 1.985e-06
# nortest::lillie.test(n_D_IAA$n_IAA)
# #values are not normal p-value = 4.286e-06
# 
# ##cube root transformation
# n_IAA <- (D_IAA$IAA_pg)^(1/3)
# n_D_IAA <- data.frame(n_IAA, D_IAA$LSM_strain)
# hist(n_D_IAA$n_IAA)
# ANOVA_n_IAA<- aov (n_D_IAA$n_IAA ~ n_D_IAA$D_IAA.LSM_strain, data= n_D_IAA)
# print(summary(ANOVA_n_IAA))
# qqline(ANOVA_n_IAA$residuals, distribution = qnorm) #plot it to see the skew of the data, this data showed a right skew, transformations used according to https://medium.com/analytics-vidhya/a-guide-to-data-transformation-9e5fa9ae1ca3
# nortest::lillie.test(ANOVA_n_IAA$residuals)
# #Residuals are not normal p-value = p-value = 0.0001497
# 
# ##5 root transformation
# n_IAA <- (D_IAA$IAA_pg)^(1/5)
# n_D_IAA <- data.frame(n_IAA, D_IAA$LSM_strain)
# #hist(n_D_IAA$n_IAA)
# ANOVA_n_IAA<- aov (n_D_IAA$n_IAA ~ n_D_IAA$D_IAA.LSM_strain, data= n_D_IAA)
# print(summary(ANOVA_n_IAA))
# qqline(ANOVA_n_IAA$residuals, distribution = qnorm) 
# #plot it to see the skew of the data, this data showed a right skew, transformations used according to https://medium.com/analytics-vidhya/a-guide-to-data-transformation-9e5fa9ae1ca3
# nortest::lillie.test(ANOVA_n_IAA$residuals)
# #Residuals are not normal p-value = 0.003408

##log transformation
n_IAA <- log(D_IAA$IAA_pg)
n_D_IAA <- data.frame(n_IAA, D_IAA$LSM_strain)
#hist(n_D_IAA$n_IAA)
ANOVA_n_IAA<- aov (n_D_IAA$n_IAA ~ n_D_IAA$D_IAA.LSM_strain, data= n_D_IAA)
print(summary(ANOVA_n_IAA))
qqline(ANOVA_n_IAA$residuals, distribution = qnorm) 
#plot it to see the skew of the data, this data showed a right skew, transformations used according to https://medium.com/analytics-vidhya/a-guide-to-data-transformation-9e5fa9ae1ca3
nortest::lillie.test(ANOVA_n_IAA$residuals)
#Residuals ARE normal p-value= 0.05988



# ##Others
# # “center”: Subtract mean. “scale”: Divide by standard deviation. “standardize” DID NOT WORK
# n_D_IAA <- BBmisc::normalize(D_IAA$IAA_pg, method = "standardize")
# n_D_IAA <- data.frame(n_IAA, D_IAA$LSM_strain)
# hist(n_D_IAA$n_IAA)
# ANOVA_n_IAA<- aov (n_D_IAA$n_IAA ~ n_D_IAA$D_IAA.LSM_strain, data= n_D_IAA)
# print(summary(ANOVA_n_IAA))
# nortest::lillie.test(ANOVA_n_IAA$residuals)
# #Each one of the normalization methods results in the same p value for the ANOVA residuals p-value = 1.985e-06, not normal
# nortest::lillie.test(n_D_IAA$n_IAA)
# #Each one of the normalization methods results in the same p-value, not normal


##Homocedasticity test (Breush Pagan Test)
#P is homescedastic
lmtest::bptest(ANOVA_P)
#BP = 2.505, df = 1, p-value = 0.1135

#IAA is homoscedastic
lmtest::bptest(ANOVA_n_IAA)  # Breusch-Pagan test
#BP = 0.010051, df = 1, p-value = 0.9201

##Fisher test: no se puede
##Posthoc: Tukey
ag <- HSD.test(ANOVA_n_IAA,n_D_IAA$n_IAA, group = TRUE, alpha = 0.05)
ag$groups
##Posthoc: Duncan