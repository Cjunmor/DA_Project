###IMPORT DATA TO DATA FOLDER IN YOUR COMPUTER
install.packages("readxl")
library(readxl)

#Bacteria IAA and P concentrations
xl_1 <- "https://dfzljdn9uc3pi.cloudfront.net/2020/9005/1/DatasetS1_Raw_Data__Screening__P_solubilization_and_IAA_production.xlsx"
download.file(xl_1, "Data/Data_1.xls", mode = "wb")

#Green House morphological trait measures
xl_2 <- "https://dfzljdn9uc3pi.cloudfront.net/2020/9005/1/Raw_Data_Greenhouse_tests.xlsx"
download.file(xl_2, "Data/Data_GH.xls", mode = "wb")
