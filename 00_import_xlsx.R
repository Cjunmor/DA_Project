###IMPORT DATA TO DATA FOLDER IN YOUR COMPUTER
install.packages("readxl")
install.packages("gdata")
library(readxl)
library(gdata)



xl_1 <- "https://dfzljdn9uc3pi.cloudfront.net/2020/9005/1/DatasetS1_Raw_Data__Screening__P_solubilization_and_IAA_production.xlsx"
xl_2 <- "https://dfzljdn9uc3pi.cloudfront.net/2020/9005/1/Raw_Data_Greenhouse_tests.xlsx"
download.file(xl_2, "Data/Data_GH.xlsx")
data_s1<- readxl::read_excel(Webcsv, sheet = 1)
 

(Webcsv, header = T, sep = "\t")
Data <- read.table(Webcsv, header = T, sep = "\t")
print(Data)                    # Check if it has been correctly imported

u <- "http://www.abc.com/abc.zip"
basename(u) # "abc.zip"

download.file(u, file.path("foo", basename(u)))