# ----MANOVA ANALYSIS---- 

#install.packages("compositions")
library(compositions)

##----TWO WAY MANOVA with ALL the dependent variables-----

manova_all <- manova(ilr(clo(D_GH[3:11])) ~ D_GH$`Treatments (strains)`*D_GH$Cropname, data = D_GH)

summary(manova_all)
summary(manova_all, test= "Hotelling-Lawley")
summary(manova_all, test= "Roy")
summary(manova_all, test= "Wilks")

##---- ONE WAY MANOVA with ALL the dependent vaiables BEAN----
manova_bean <- manova(ilr(clo(D_Bean[3:11])) ~ D_Bean$`Treatments (strains)`)

summary(manova_bean)
summary(manova_bean, test= "Hotelling-Lawley")
summary(manova_bean, test= "Roy")
summary(manova_bean, test= "Wilks")

##---- ONE WAY MANOVA with ALL the dependent vaiables MAIZE----
manova_maize <- manova(ilr(clo(D_Maize[3:11])) ~ D_Maize$`Treatments (strains)`)

summary(manova_maize)
summary(manova_maize, test= "Hotelling-Lawley")
summary(manova_maize, test= "Roy")
summary(manova_maize, test= "Wilks")

##---- ONE WAY MANOVA with ALL the dependent vaiables SOYBEAN----
manova_soy <- manova(ilr(clo(D_Soy[3:11])) ~ D_Soy$`Treatments (strains)`)

summary(manova_soy)
summary(manova_soy, test= "Hotelling-Lawley")
summary(manova_soy, test= "Roy")
summary(manova_soy, test= "Wilks")

