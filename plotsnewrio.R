
library(ggplot2)

boxplot(D_Bean$`Plant high (Mean - cm)`~D_Bean$`Treatments (strains)`)
D_Bean$`Treatments (strains)`
kruskalbean3$groups[D_Bean$`Treatments (strains)`, "groups"] #to get a varibale with the groups of each strain 




boxplot(D_Bean$`Plant high (Mean - cm)`~kruskalbean3$groups[D_Bean$`Treatments (strains)`, "groups"])


#final boxplot
ggplot(D_Bean, aes(x=D_Bean$`Treatments (strains)`, y=D_Bean$`Plant high (Mean - cm)`, fill=kruskalbean3$groups[D_Bean$`Treatments (strains)`, "groups"])) +
  geom_boxplot()+ labs(fill = "Strain groups") +xlab('strain') +ylab('mean')


#trying to order them by strain group (didnt work)
D_Bean$`Treatments (strains)`#to be ordered by strain group then make it as a factor
treatmentssort.Bhight =factor(D_Bean$`Treatments (strains)`)
levels(treatmentssort.Bhight)=c("Control", "LSM 183" ,  "LSM 14" ,  "LSM 24",  "LSM 65", "LSM 62", "LSM 68", "LSM 179"     )
ggplot(D_Bean, aes(x=treatmentssort.Bhight, y=D_Bean$`Plant high (Mean - cm)`, fill=treatmentssort.Bhight)) +
  geom_boxplot()+ labs(fill = "Strain groups") +xlab('strain') +ylab('mean')




