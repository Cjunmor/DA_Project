###PCA
#install.packages('FactoMineR')
#install.packages('factoextra')

library(factoextra)
library(ggplot2)

#Adding column for individual identification of points based on the treatment
D_GH$Name <- paste(D_GH$`Treatments (strains)`,"_",D_GH$`Repetition (pots)`)
      #eliminate this name column

#Data for PCA 
#D_PCA <- D_GH [-2]
#D_PCA <- D_GH [3:11]
#data (D_GH)

#General PCA
C_pca <- prcomp(D_GH [3:11], scale = TRUE)
factoextra::fviz_eig(C_pca)
factoextra::fviz_pca_ind(C_pca,
             col.ind = "cos2", # Color by the quality of representation
             gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07", "#FF0066"),
             repel = TRUE     # Avoid text overlapping
)
#PCA with colored crops
groups_c <- as.factor(D_GH$Cropname)
factoextra::fviz_pca_ind(C_pca,
             col.ind = groups_c, # color by groups
             palette = c("#00AFBB", "#E7B800", "#FC4E07", "#FF0066"),
             addEllipses = TRUE, # Concentration ellipses
             ellipse.type = "confidence",
             legend.title = "Crops",
             repel = TRUE
)
max.overlaps?

#Biplot about crops
factoextra::fviz_pca_biplot(C_pca,
                           col.ind = groups_c, # color by groups
                           palette = c("#00AFBB", "#E7B800", "#FC4E07", "#FF0066"),
                           addEllipses = TRUE, # Concentration ellipses
                           ellipse.type = "confidence",
                           legend.title = "Crops",
                           repel = TRUE
)
#Opposite direction arrows indicate negative correlations between the variables

#PCA for each crop (dif colors), discriminating treatments with names
D1 <- D_GH [, 3:11]
rownames(D1) <- paste0(D_GH$Cropname, D_GH$Name)
T_pca <- prcomp(D1, scale = TRUE)
factoextra::fviz_pca_ind(T_pca,
                         col.ind = groups_c,
                         palette = c("#00AFBB", "#E7B800", "#FC4E07", "#FF0066"),
                         addEllipses = TRUE, # Concentration ellipses
                         ellipse.type = "confidence",
                         legend.title = "Treatments",
                         repel = TRUE
)

#PCA with different colored treatments (shows that we need to subset each crop)
groups_t <- as.factor(D_GH$`Treatments (strains)`)
factoextra::fviz_pca_ind(C_pca,geom ="point",
                         col.ind = groups_t, # color by groups
                         #palette = c("#00AFBB", "#E7B800", "#FC4E07", "#FF0066"),
                         #addEllipses = TRUE, # Concentration ellipses
                         #ellipse.type = "confidence",
                         legend.title = "Strains",
                         repel = FALSE
)
#Subset each species with each name
##Bean
D_GHb<- D_GH[,c(3:13)]
D_GHb <- D_GHb[D_GHb$Cropname == "Bean",]
Name <- D_GHb$Name
D_GHb <- D_GHb [1:9]
rownames(D_GHb)<-Name
B_pca <- prcomp(D_GHb, scale = TRUE)
factoextra::fviz_pca_ind(B_pca,
                         geom = c("point", "text"),
                         #col.ind = groups_t,
                         #palette = c("#00AFBB", "#E7B800", "#FC4E07", "#FF0066"),
                         addEllipses = TRUE, # Concentration ellipses
                         ellipse.type = "confidence",
                         #legend.title = "Treatments",
                         repel = FALSE
)

factoextra::fviz_pca_var(B_pca,
                         col.var = "contrib", # Color by contributions to the PC
                         gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"),
                         repel = TRUE
)

##Soybean
D_GHs<- D_GH[,c(3:13)]
D_GHs<- D_GHs[D_GHs$Cropname == "Soybean",]
Name <- D_GHs$Name
D_GHs <- D_GHs [1:9]
rownames(D_GHs)<-Name
S_pca <- prcomp(D_GHs, scale = TRUE)
factoextra::fviz_pca_ind(S_pca,
                         geom = c("point", "text"),
                         #col.ind = groups_t,
                         #palette = c("#00AFBB", "#E7B800", "#FC4E07", "#FF0066"),
                         #addEllipses = TRUE, # Concentration ellipses
                         #ellipse.type = "confidence",
                         #legend.title = "Treatments",
                         repel = FALSE
)

factoextra::fviz_pca_var(S_pca,
                         col.var = "contrib", # Color by contributions to the PC
                         gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"),
                         repel = TRUE
)
##Maize
D_GHm<- D_GH[,c(3:13)]
D_GHm <- D_GHm[D_GHm$Cropname == "Maize",]
Name <- D_GHm$Name
D_GHm <- D_GHm [1:9]
rownames(D_GHm)<-Name
M_pca <- prcomp(D_GHm, scale = TRUE)
factoextra::fviz_pca_ind(M_pca,
                         geom = c("point", "text"),
                         #col.ind = groups_t,
                         #palette = c("#00AFBB", "#E7B800", "#FC4E07", "#FF0066"),
                         #addEllipses = TRUE, # Concentration ellipses
                         #ellipse.type = "confidence",
                         #legend.title = "Treatments",
                         repel = FALSE
)

factoextra::fviz_pca_var(M_pca,
                         col.var = "contrib", # Color by contributions to the PC
                         gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"),
                         repel = TRUE
)
#Height and dry mass seem to be the parameters that separate the strains the most in all crops
