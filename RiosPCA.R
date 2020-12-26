Mypr <- prcomp(D_GH[,3:11], scale = TRUE)
Mypr
summary(Mypr)
plot(Mypr, type = 'l')
biplot(Mypr, scale ='0')
str(Mypr)
Mypr$x

NewD_GH <- cbind(D_GH,Mypr$x[,1:2])
head(NewD_GH)

install.packages("ggplot2")
library(ggplot2)
cropgraph <- ggplot(NewD_GH, aes(PC1, PC2, col = Cropname, fill = Cropname)) +
         stat_ellipse(geom ="polygon", col ="black", alpha = 0.5)+
           geom_point(shape = 21, col = "black") 
cropgraph
         
rlang::last_error() 
rlang::last_trace() 


straingraph <- ggplot(NewD_GH, aes(PC1, PC2, col = `Treatments (strains)` , fill = `Treatments (strains)`)) +
  stat_ellipse(geom ="polygon", col ="black", alpha = 0.5)+
  geom_point(shape = 21, col = "black") 
straingraph
