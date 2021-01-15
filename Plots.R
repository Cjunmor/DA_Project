#Graphs

#Model graph using any data

library(ggplot2)



bean.planthigh <- as.vector(tapply(D_Bean$`Plant high (Mean - cm)`,D_Bean$`Treatments (strains)`, mean))
strain.names <- unique(D_Bean$`Treatments (strains)`)
bean.planthigh.groups <- c("a","a","a","a","b","b","b","b")
d.bean.plot <- data.frame( strain.names, bean.planthigh, bean.planthigh.groups)

ggplot(data = d.bean.plot, aes(x=strain.names, y=bean.planthigh, fill= strain.names)) +
  geom_bar(stat="identity" )+
  geom_text(aes(label=bean.planthigh.groups), vjust=-0.3, size=3.5)+
  scale_x_discrete(limits= strain.names)+
  labs(x = "Strain",y = "Plant Height (cm)")+
  ggtitle("Bean Plant Height")+
  theme(plot.title = element_text(hjust = 0.5))+
  theme(panel.background = element_rect(fill= "white", color= "black"))+
  theme(legend.position = "none")+
  scale_y_continuous(expand = c(0,0))+
  geom_text(aes(x=1, y= 28, label= "", vjust=-1))

