library("MASS")          

Bean.lda <- lda(D_Bean$`Treatments (strains)`~D_Bean$`Plant high (Mean - cm)` +
                  D_Bean$`Shoot dry mass (g)` +
                  D_Bean$`Root dry mass (g)`+ 
                  D_Bean$`Total dry mass (g)` + 
                  D_Bean$`P Soil (mg/dm3)` + 
                  D_Bean$`P Shoot g/kg`+ 
                  D_Bean$`P Roots g/kg` + 
                  D_Bean$`N Shoot g/kg` + 
                  D_Bean$`N Roots g/kg`
                  )


Bean.lda.values <- predict(Bean.lda, D_Bean[3:11])
plot(Bean.lda.values$x[,1],Bean.lda.values$x[,2], ylab = 'LD2', xlab = 'LD1')
text(Bean.lda.values$x[,1],Bean.lda.values$x[,2],D_Bean$`Treatments (strains)`,cex=0.7,pos=4,col="red") # add labels


newdata <- data.frame(type = D_Bean[,1], lda = Bean.lda.values$x)
library(ggplot2)
ggplot(newdata) + geom_point(aes(lda.LD1, lda.LD2, colour = Treatments..strains.), size = 2.5)
~
  