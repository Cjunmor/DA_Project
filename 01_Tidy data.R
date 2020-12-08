### TIDYING THE DATAFRAMES ###

# install.packages("dplyr")
# install.packages("readxl")
# install.packages("tidyr")

library(readxl)
library(tidyr)
library(dplyr)

#Bacteria IAA and P concentrations

#readxl::excel_sheets("Data/Data_1.xlsx")  To check the sheet names
D_P_IAA1<- readxl::read_excel("Data/Data_1.xlsx", sheet = 1)
D_P_IAA2<- readxl::read_excel("Data/Data_1.xlsx", sheet = 2)

  #Filling in the LSM strain column
D_P_IAA1 <- D_P_IAA1 %>%
  fill(`LSM strain`)

D_P_IAA2 <- D_P_IAA2 %>%
  fill(`LSM strain`)

  #Merge the 2 dataframes
IAA_pg <- D_P_IAA2$`µg AIA/ g biomass`
D_P_IAA <- cbind.data.frame(D_P_IAA1, IAA_pg)
names(D_P_IAA)[names(D_P_IAA) == "IAA_pg"] <- "µg IAA/ g biomass" #rename IAA column

#Green House morphological trait measures

#readxl::excel_sheets("Data/Data_GH.xlsx")
D_B <- readxl::read_excel("Data/Data_GH.xlsx", sheet = 1)
D_M <- readxl::read_excel("Data/Data_GH.xlsx", sheet = 2)
D_S <- readxl::read_excel("Data/Data_GH.xlsx", sheet = 3)

  #Filling in the treatments
D_B <- D_B %>%
  fill (`Treatments (strains)`)
D_M <- D_M %>%
  fill (`Treatments (strains)`)
D_S <- D_S %>%
  fill (`Treatments (strains)`)

  #Adding the crop name column
D_B$Cropname <- "Bean"
D_M$Cropname <- "Maize"
D_S$Cropname <- "Soybean"

  #Eliminate N Soil (%) column from D_S
D_S <- D_S[-which(names(D_S) == "N Soil (%)")] # - (eliminate) which column name in D_S is N Soil (%) (column 8)

  #Eliminate last two rows
D_B <- head(D_B, -2)
D_M <- head(D_M, -2)
D_S <- head(D_S, -2)

  #Merge the 3 dataframes
D_GH <- union(D_B, D_M) #check 2 lines between each merged dataframe, union_all for duplicates not to be removed
D_GH <- union(D_GH, D_S)