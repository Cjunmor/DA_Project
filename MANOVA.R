# ----MANOVA ANALYSIS---- 

#install.packages("compositions")
library(compositions)
manova2 <- manova(ilr(clo(bind)) ~ D_GH$`Treatments (strains)`*D_GH$Cropname, data = D_GH)
summary(manova2)
summary(manova2, test= "Hotelling-Lawley")
summary(manova2, test= "Roy")
summary(manova2, test= "Wilks")
