# ----MANOVA ANALYSIS---- 

#install.packages("compositions")
library(compositions)
#bind all the dependent variables that will be used in a single object
bind <- cbind(D_GH$`Plant high (Mean - cm)`,D_GH$`Shoot dry mass (g)`,D_GH$`Root dry mass (g)`,D_GH$`Total dry mass (g)`)

manova <- manova(ilr(clo(bind)) ~ D_GH$`Treatments (strains)`*D_GH$Cropname, data = D_GH)

summary(manova)
summary(manova, test= "Hotelling-Lawley")
summary(manova, test= "Roy")
summary(manova, test= "Wilks")
