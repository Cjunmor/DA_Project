# ----MANOVA ANALYSIS---- 

#install.packages("compositions")
library(compositions)
#bind all the dependent variables that will be used in a single object

bind_all <- cbind(D_GH$`Plant high (Mean - cm)`,D_GH$`Shoot dry mass (g)`,D_GH$`Root dry mass (g)`,D_GH$`Total dry mass (g)`, D_GH$`P Soil (mg/dm3)`,D_GH$`P Shoot g/kg`, D_GH$`P Roots g/kg`, DGH)

manova_all <- manova(ilr(clo(bind_all)) ~ D_GH$`Treatments (strains)`*D_GH$Cropname, data = D_GH)

summary(manova_all)
summary(manova_all, test= "Hotelling-Lawley")
summary(manova_all, test= "Roy")
summary(manova_all, test= "Wilks")

bind_bean <-  cbind(D_Bean$`Plant high (Mean - cm)`,D_Bean$`Shoot dry mass (g)`,D_Bean$`Root dry mass (g)`,D_Bean$`Total dry mass (g)`)


