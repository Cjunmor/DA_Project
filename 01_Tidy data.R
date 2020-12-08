### TIDYING THE DATAFRAMES ###

# install.packages("dplyr")
# install.packages("readxl")
# install.packages("tidyr")

library(readxl)
library(tidyr)
library(dplyr)

#Bacteria IAA and P concentrations

#readxl::excel_sheets("Data/Data_1.xlsx")  To check the sheet names
D_Phosphorus<- readxl::read_excel("Data/Data_1.xlsx", sheet = 1)
D_IndolA<- readxl::read_excel("Data/Data_1.xlsx", sheet = 2)

  #Filling in the LSM strain column
D_Phosphorus <- D_Phosphorus %>%
  fill(`LSM strain`)

D_IndolA <- D_IndolA %>%
  fill(`LSM strain`)

  #Merge the 2 dataframes
IAA_pg <- D_IndolA$`µg AIA/ g biomass`
D_Biochem <- cbind.data.frame(D_Phosphorus, IAA_pg)
names(D_Biochem)[names(D_Biochem) == "IAA_pg"] <- "µg IAA/ g biomass" #rename IAA column

#Green House morphological trait measures

#readxl::excel_sheets("Data/Data_GH.xlsx")
D_Bean <- readxl::read_excel("Data/Data_GH.xlsx", sheet = 1)
D_Maize <- readxl::read_excel("Data/Data_GH.xlsx", sheet = 2)
D_Soy <- readxl::read_excel("Data/Data_GH.xlsx", sheet = 3)

  #Filling in the treatments
D_Bean <- D_Bean %>%
  fill (`Treatments (strains)`)
D_Maize <- D_Maize %>%
  fill (`Treatments (strains)`)
D_Soy <- D_Soy %>%
  fill (`Treatments (strains)`)

  #Adding the crop name column
D_Bean$Cropname <- "Bean"
D_Maize$Cropname <- "Maize"
D_Soy$Cropname <- "Soybean"

  #Eliminate N Soil (%) column from D_Soy
D_Soy <- D_Soy[-which(names(D_Soy) == "N Soil (%)")] # - (eliminate) which column name in D_Soy is N Soil (%) (column 8)

  #Eliminate last two rows
D_Bean <- head(D_Bean, -2)
D_Maize <- head(D_Maize, -2)
D_Soy <- head(D_Soy, -2)

  #Merge the 3 dataframes
D_GH <- union(D_Bean, D_Maize) #check 2 lines between each merged dataframe, union_all for duplicates not to be removed
D_GH <- union(D_GH, D_Soy)