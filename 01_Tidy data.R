### TIDYING THE DATAFRAMES ###

# install.packages("readxl")
# install.packages("tidyr")

library(readxl)
library(tidyr)

#Bacteria IAA and P concentrations

#readxl::excel_sheets("Data/Data_1.xlsx")  To check the sheet names
D1_s1<- readxl::read_excel("Data/Data_1.xlsx", sheet = 1)
D1_s2<- readxl::read_excel("Data/Data_1.xlsx", sheet = 2)
as.data.frame(D1_s1)

  #Filling in the LSM strain column
D1_s1 <- D1_s1 %>%
  fill(`LSM strain`)

D1_s2 <- D1_s2 %>%
  fill(`LSM strain`)


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

