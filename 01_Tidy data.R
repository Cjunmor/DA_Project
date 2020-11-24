### TIDYING THE DATAFRAMES ###

library(readxl)

#Bacteria IAA and P concentrations
#readxl::excel_sheets("Data/Data_1.xlsx")  To check the sheet names
D1_s1<- readxl::read_excel("Data/Data_1.xlsx", sheet = 1)
D1_s2<- readxl::read_excel("Data/Data_1.xlsx", sheet = 2)

#Green House morphological trait measures
#readxl::excel_sheets("Data/Data_GH.xlsx")
D_B <- readxl::read_excel("Data/Data_GH.xlsx", sheet = 1)
D_M <- readxl::read_excel("Data/Data_GH.xlsx", sheet = 2)
D_S <- readxl::read_excel("Data/Data_GH.xlsx", sheet = 3)