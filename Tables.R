#Creation of the results dataframe and table
#A dataframe and table for ANOVA is going to be created
#Another dataframe and table is going to be for the pot-hoc analysis

#### required package:
library(tidyverse)
install.packages("kableExtra")
library(kableExtra)

##ANOVA results and NORMALITY (shapiro)
anovaresult.crop <- rep(c("Bean", "Maize", "Soybean"), each = 9)
anovaresult.variable <- rep(c(names(D_GH[,3:11])), 3)
anovaresult.significance.bean <-  c("<0.05", "<0.1", ">0.1", ">0.1", "<0.1", "<0.001", ">0.1", "<0.1", ">0.1")
anovaresult.significance.maize <- c("<0.001", "<0.01", "<0.05", "<0.01", "<0.05", "<0.01", "<0.001", ">0.1", "<0.05")
anovaresult.significance.soy <-  c("<0.05", ">0.1", ">0.1", ">0.1", ">0.1", ">0.1", ">0.1", ">0.1", ">0.1")
anovaresult.significance <- c(anovaresult.significance.bean, anovaresult.significance.maize, anovaresult.significance.soy)
normality.result.bean <- c("Yes","Yes","Yes","Yes","No","No","Yes","Yes","Yes")
normality.result.maize <- c("Yes","Yes","Yes","Yes","No","No","No","Yes","Yes")
normality.result.soy <- c("Yes","Yes","Yes","Yes","No","No","No","Yes","Yes")
normality.result <-  c(normality.result.bean, normality.result.maize, normality.result.soy)
homocedasticity.result.bean <- c("No", "Yes", "Yes", "Yes", "Yes", "Yes", "No", "Yes", "Yes")
homocedasticity.result.maize <- c( "Yes", "Yes", "Yes", "Yes", "Yes", "Yes", "Yes", "Yes", "Yes")
homocedasticity.result.soy <- c( "Yes", "Yes", "Yes", "Yes", "Yes", "Yes", "Yes", "Yes", "Yes")
homocedasticity.result <- c(homocedasticity.result.bean, homocedasticity.result.maize, homocedasticity.result.soy)

anova.dataframe <-  data.frame(anovaresult.crop, anovaresult.variable, anovaresult.significance, normality.result, homocedasticity.result)

anova.dataframe <-  anova.dataframe %>% 
  rename(Crop = anovaresult.crop,
         Variable = anovaresult.variable,
         "ANOVA   *a" = anovaresult.significance,
         "Normality   *b" = normality.result,
         "Homocedasticity  *c"= homocedasticity.result)
kbl(anova.dataframe, align = "c") %>%
  collapse_rows(1, valign = "middle") %>% 
  column_spec(2, color= ifelse(anovaresult.significance == "<0.1" | anovaresult.significance == ">0.1", "red", "black")) %>% 
  kable_material(c("striped", "hover")) %>% 
  footnote(general = "Table with the results of ANOVA analysis for the different dependent variables in each crop, and the tests for normality and homoscedaticity required. Degrees of freedom = 7. 
           a: ANOVA's P-value. Red color indicates P-values over 0.05, adressing low signifficance. 
           b: Normality tested with Shapiro-Wilk test.*
           c: Homocedasticity tested with the Breusch-Pagan test", general_title = "")

##Strain selection dataframe and table

#Bean

strain.bean <-  c("Control","NA", "NA", "NA", "Control", "LSM_183/LSM_68/LSM_179","LSM_14", "NA",  "NA")
posthoc.bean <- c("Kruskal-Wallis", "Not significant", "Not significant", "Not significant", "Kruskal-Wallis","Kruskal-Wallis","Kruskal-Wallis", "Not significant", "Not significant")
var.name.bean <- c("Plant Height", "Shoot dry mass", "Root dry mass", "Total dry mass", "P soil", "P shoot", "P root", "N shoot", "N root")
bean.name <- c(rep("Bean", 9))
bean.groups <- c("a, ab, abc, abc, abc, bcd, cd, d","a, a, a, a, a, a, a, a", "a, a, a, a, a, a, a, a","a, a, a, a, a, a, a, a","a, ab, ab, b, b, b, b, b", "a, a, a, b, b, b, b, b", "a, ab, ab, ab, ab, ab, ab, b","a, a, a, a, a, a, a, a", "a, a, a, a, a, a, a, a")
data.strains.beans <- data.frame(bean.name, var.name.bean, posthoc.bean,bean.groups, strain.bean)

data.strains.beans <-  data.strains.beans %>% 
  rename("Crop" = bean.name,
         "Variable" = var.name.bean,
         "Post-hoc analysis" = posthoc.bean,
         "Groups"= bean.groups,
         "Optimal strain" = strain.bean)
kbl(data.strains.beans) %>% 
  kable_styling(bootstrap_options = c("hover"))%>%
  column_spec(1, bold = T) %>%
  column_spec(c(1:4), border_left = FALSE, border_right = FALSE) %>% 
  collapse_rows(columns = 1, valign = "middle") %>% 
  footnote(general = "Optimal strains for each variable measured in bean greenhouse experiments adressed by Kruskal-Wallis, or Duncan analysis when significant differences are found. NA: Not applicable", general_title = "")

#Maize
strain.maize <-  c("LSM_65","LSM_65","Control","Control/LSM_65", "LSM_24", "LSM_24", "Control/LSM_65/LSM_14/LSM_24/LSM_62", "NA","LSM_65/LSM_24")
posthoc.maize <-  c("Duncan","Duncan","Duncan","Duncan","Kruskal-Wallis","Kruskal-Wallis","Kruskal-Wallis", "Not significant", "Duncan" )
var.name.maize <- c("Plant Height", "Shoot dry mass","Root dry mass", "Total dry mass", "P soil", "P shoot", "P root","N shoot", "N root" )
maize.name <-  c(rep("Maize", 9))
maize.groups <- c("a, ab, bc, bc, cd, cd, de, e","a, ab, ab, ab, abc, bc, bc, c","a, ab, abc, abc, bc, bc, c, c","a, a, ab, ab, abc, bc, bc, c","a, ab, abc, abc, abc, bc, bc, bc, c", "a, ab, ab, bc, bc, c, c, c", "a, a, a, a, a, b, b, b", "a, a, a, a, a, a, a, a", "a,a,ab,ab,ab,ab,bc,c")
data.strains.maize <-  data.frame(maize.name, var.name.maize, posthoc.maize,maize.groups, strain.maize)

data.strains.maize <- data.strains.maize %>% 
  rename("Crop" = maize.name,
          "Variable" = var.name.maize,
          "Post-hoc analysis" = posthoc.maize,
         "Groups"= maize.groups,
          "Optimal strain" = strain.maize)
kbl(data.strains.maize) %>% 
  kable_styling(bootstrap_options = c("hover"))%>%
  column_spec(1, bold = T) %>%
  column_spec(c(1:4), border_left = FALSE, border_right = FALSE) %>% 
  collapse_rows(columns = 1:2, valign = "middle") %>% 
  footnote(general = "Optimal strains for each variable measured in maize greenhouse experiments adressed by Kruskal-Wallis or Duncan analysis when significant differences are found. NA: Not applicable.", general_title = "")

#Soy
strain.soy <- c("LSM_179", "NA", "NA",  "NA", "All", "LSM_14/LSM_24/LSM_62", "LSM_183/LSM_179", "NA","NA")
posthoc.soy <- c("Duncan", "Duncan", "Duncan", "Duncan","Kruskal-Wallis","Kruskal-Wallis","Kruskal-Wallis", "Duncan", "Duncan" )
var.name.soy <- c("Plant Height",  "Shoot dry mass","Root dry mass",  "Total dry mass",  "P soil", "P shoot", "P root","N shoot",  "N root" )
soy.name <-  c(rep("Soybean", 9))
soy.groups <- c("a, ab, ab, abc, abc, bc, bc, c", "a, a, a, a, a, a, a, a", "a, a, a, a, a, a, a, a", "a, a, a, a, a, a, a, a", "a, a, a, a, a, a, a, a", "a, a, a, ab, ab, ab, ab, b", "a, a, ab, ab, ab, ab, ab, b", "a, a, a, a, a, a, a, a", "a, a, a, a, a, a, a, a")
data.strains.soy <-  data.frame(soy.name, var.name.soy, posthoc.soy, soy.groups, strain.soy)

data.strains.soy <- data.strains.soy %>% 
  rename("Crop" = soy.name,
         "Variable" = var.name.soy,
         "Post-hoc analysis" = posthoc.soy,
         "Optimal strain" = strain.soy)
kbl(data.strains.soy) %>% 
  kable_styling(bootstrap_options = c("hover"))%>%
  column_spec(1, bold = T) %>%
  column_spec(c(1:4), border_left = FALSE, border_right = FALSE) %>% 
  collapse_rows(columns = 1:2, valign = "middle") %>% 
  footnote(general = "Optimal strains for each variable measured in soybean greenhouse experiments adressed by Kruskal-Wallis, or Duncan analysis when significant differences are found. NA: Not applicable.", general_title = "")

