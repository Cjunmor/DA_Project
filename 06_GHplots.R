

library(ggplot2)


boxplot(D_Bean$`Plant high (Mean - cm)`~D_Bean$`Treatments (strains)`)
D_Bean$`Treatments (strains)`
kruskalbean3$groups[D_Bean$`Treatments (strains)`, "groups"] #to get a varibale with the groups of each strain


### THIS IS FOR COPY PASTE PURPOSES -- WITHOUT KKW--
#ggplot(D_Bean, aes(x=`Treatments (strains)`, y= D_Bean$`Shoot dry mass (g)`, )) +
#  geom_boxplot()+ labs(fill = "Strain groups") +xlab('strain') +ylab('mean')


### THIS IS FOR COPY PASTE PURPOSES -- WITH KKW-- NON SIG
# ggplot(D_Bean, aes(x=`Treatments (strains)`, y=D_Bean$`Plant high (Mean - cm)`, fill=kruskalbean3$groups[`Treatments (strains)`, "groups"])) +
#  geom_boxplot()+ labs(fill = "Strain groups") +xlab('strain') +ylab('mean')




#Plottings for bean

Bplot_Height <- ggplot(D_Bean, aes(x=`Treatments (strains)`, y=`Plant high (Mean - cm)`, fill=kruskalbean3$groups[`Treatments (strains)`, "groups"])) +
  geom_boxplot()+ labs(fill = "Strain groups") +xlab('strain') +ylab('mean')
Bplot_Height

Bplot_Shootmass <- ggplot(D_Bean, aes(x=`Treatments (strains)`, y= `Shoot dry mass (g)`, )) +
    geom_boxplot()+ labs(fill = "Strain groups") +xlab('strain') +ylab('mean')
Bplot_Shootmass

Bplot_Rootmass <- ggplot(D_Bean, aes(x=`Treatments (strains)`, y=`Root dry mass (g)`, )) +
   geom_boxplot()+ labs(fill = "Strain groups") +xlab('strain') +ylab('mean')
Bplot_Rootmass

Bplot_Totalmass <- ggplot(D_Bean, aes(x=`Treatments (strains)`, y=`Total dry mass (g)`, )) +
  geom_boxplot()+ labs(fill = "Strain groups") +xlab('strain') +ylab('mean')
Bplot_Totalmass 

Bplot_Psoil <- ggplot(D_Bean, aes(x=`Treatments (strains)`, y=`P Soil (mg/dm3)`, fill=kruskalbean7$groups[`Treatments (strains)`, "groups"])) +
   geom_boxplot()+ labs(fill = "Strain groups") +xlab('strain') +ylab('mean')
Bplot_Psoil  

Bplot_Pshoot <- ggplot(D_Bean, aes(x=`Treatments (strains)`, y=`P Shoot g/kg`, fill=kruskalbean8$groups[`Treatments (strains)`, "groups"])) +
    geom_boxplot()+ labs(fill = "Strain groups") +xlab('strain') +ylab('mean')
Bplot_Pshoot  

Bplot_Proot <- ggplot(D_Bean, aes(x=`Treatments (strains)`, y=`P Roots g/kg`, fill=kruskalbean9$groups[`Treatments (strains)`, "groups"])) +
    geom_boxplot()+ labs(fill = "Strain groups") +xlab('strain') +ylab('mean')
Bplot_Proot  

Bplot_Nshoot <- ggplot(D_Bean, aes(x=`Treatments (strains)`, y=`N Shoot g/kg`, )) +
    geom_boxplot()+ labs(fill = "Strain groups") +xlab('strain') +ylab('mean')
Bplot_Nshoot
#Significant in 99% not 95%

Bplot_Nroot <- ggplot(D_Bean, aes(x=`Treatments (strains)`, y= `N Roots g/kg`, )) +
  geom_boxplot()+ labs(fill = "Strain groups") +xlab('strain') +ylab('mean')
Bplot_Nroot



Bplot_Height
Bplot_Shootmass
Bplot_Rootmass
Bplot_Totalmass
Bplot_Psoil
Bplot_Pshoot
Bplot_Proot
Bplot_Nshoot
Bplot_Nroot



#Plottings for Soy

Splot_Height <- ggplot(D_Soy, aes(x=`Treatments (strains)`, y=`Plant high (Mean - cm)`, fill=Duncan.Soy3$groups[`Treatments (strains)`, "groups"])) +
  geom_boxplot()+ labs(fill = "Strain groups") +xlab('strain') +ylab('mean')
Splot_Height

Splot_Shootmass <- ggplot(D_Soy, aes(x=`Treatments (strains)`, y= `Shoot dry mass (g)`, )) +
  geom_boxplot()+ labs(fill = "Strain groups") +xlab('strain') +ylab('mean')
Splot_Shootmass

Splot_Rootmass <- ggplot(D_Soy, aes(x=`Treatments (strains)`, y=`Root dry mass (g)`, )) +
  geom_boxplot()+ labs(fill = "Strain groups") +xlab('strain') +ylab('mean')
Splot_Rootmass

Splot_Totalmass <- ggplot(D_Soy, aes(x=`Treatments (strains)`, y=`Total dry mass (g)`, )) +
  geom_boxplot()+ labs(fill = "Strain groups") +xlab('strain') +ylab('mean')
Splot_Totalmass 

Splot_Psoil <- ggplot(D_Soy, aes(x=`Treatments (strains)`, y=`P Soil (mg/dm3)`, fill=kruskalsoy7$groups[`Treatments (strains)`, "groups"])) +
  geom_boxplot()+ labs(fill = "Strain groups") +xlab('strain') +ylab('mean')
Splot_Psoil  

Splot_Pshoot <- ggplot(D_Soy, aes(x=`Treatments (strains)`, y=`P Shoot g/kg`, fill=kruskalsoy8$groups[`Treatments (strains)`, "groups"])) +
  geom_boxplot()+ labs(fill = "Strain groups") +xlab('strain') +ylab('mean')
Splot_Pshoot  

Splot_Proot <- ggplot(D_Soy, aes(x=`Treatments (strains)`, y=`P Roots g/kg`, fill=kruskalsoy9$groups[`Treatments (strains)`, "groups"])) +
  geom_boxplot()+ labs(fill = "Strain groups") +xlab('strain') +ylab('mean')
Splot_Proot  

Splot_Nshoot <- ggplot(D_Soy, aes(x=`Treatments (strains)`, y=`N Shoot g/kg`, )) +
  geom_boxplot()+ labs(fill = "Strain groups") +xlab('strain') +ylab('mean')
Splot_Nshoot
#Significant in 99% not 95%

Splot_Nroot <- ggplot(D_Soy, aes(x=`Treatments (strains)`, y= `N Roots g/kg`, )) +
  geom_boxplot()+ labs(fill = "Strain groups") +xlab('strain') +ylab('mean')
Splot_Nroot



Splot_Height
Splot_Shootmass
Splot_Rootmass
Splot_Totalmass
Splot_Psoil
Splot_Pshoot
Splot_Proot
Splot_Nshoot
Splot_Nroot




#Plottings for Maize

Mplot_Height <- ggplot(D_Maize, aes(x=`Treatments (strains)`, y=`Plant high (Mean - cm)`, fill=Duncan.Maize3$groups[`Treatments (strains)`, "groups"])) +
  geom_boxplot()+ labs(fill = "Strain groups") +xlab('strain') +ylab('mean')
Mplot_Height

Mplot_Shootmass <- ggplot(D_Maize, aes(x=`Treatments (strains)`, y= `Shoot dry mass (g)`,fill=Duncan.Maize4$groups[`Treatments (strains)`, "groups"] )) +
  geom_boxplot()+ labs(fill = "Strain groups") +xlab('strain') +ylab('mean')
Mplot_Shootmass

Mplot_Rootmass <- ggplot(D_Maize, aes(x=`Treatments (strains)`, y=`Root dry mass (g)`, fill=Duncan.Maize5$groups[`Treatments (strains)`, "groups"] )) +
  geom_boxplot()+ labs(fill = "Strain groups") +xlab('strain') +ylab('mean')
Mplot_Rootmass

Mplot_Totalmass <- ggplot(D_Maize, aes(x=`Treatments (strains)`, y=`Total dry mass (g)`,fill=Duncan.Maize6$groups[`Treatments (strains)`, "groups"] )) +
  geom_boxplot()+ labs(fill = "Strain groups") +xlab('strain') +ylab('mean')
Mplot_Totalmass 

Mplot_Psoil <- ggplot(D_Maize, aes(x=`Treatments (strains)`, y=`P Soil (mg/dm3)`, fill=kruskalmaize7$groups[`Treatments (strains)`, "groups"])) +
  geom_boxplot()+ labs(fill = "Strain groups") +xlab('strain') +ylab('mean')
Mplot_Psoil  

Mplot_Pshoot <- ggplot(D_Maize, aes(x=`Treatments (strains)`, y=`P Shoot g/kg`, fill=kruskalmaize8$groups[`Treatments (strains)`, "groups"])) +
  geom_boxplot()+ labs(fill = "Strain groups") +xlab('strain') +ylab('mean')
Mplot_Pshoot  

Mplot_Proot <- ggplot(D_Maize, aes(x=`Treatments (strains)`, y=`P Roots g/kg`, fill=kruskalmaize9$groups[`Treatments (strains)`, "groups"])) +
  geom_boxplot()+ labs(fill = "Strain groups") +xlab('strain') +ylab('mean')
Mplot_Proot  

Mplot_Nshoot <- ggplot(D_Maize, aes(x=`Treatments (strains)`, y=`N Shoot g/kg`, )) +
  geom_boxplot()+ labs(fill = "Strain groups") +xlab('strain') +ylab('mean')
Mplot_Nshoot
#Significant in 99% not 95%

Mplot_Nroot <- ggplot(D_Maize, aes(x=`Treatments (strains)`, y= `N Roots g/kg`, fill=Duncan.Maize11$groups[`Treatments (strains)`, "groups"] )) +
  geom_boxplot()+ labs(fill = "Strain groups") +xlab('strain') +ylab('mean')
Mplot_Nroot



Mplot_Height
Mplot_Shootmass
Mplot_Rootmass
Mplot_Totalmass
Mplot_Psoil
Mplot_Pshoot
Mplot_Proot
Mplot_Nshoot
Mplot_Nroot


