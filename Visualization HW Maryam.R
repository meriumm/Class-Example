##MARYAM SAEED
###Data Visualization Assignment of PLPA 5820

data("mtcars")
str(mtcars)

####scatter plot function using base .
plot(mtcars$wt, mtcars$mpg,
     xlab = "Car weight",
     ylab = "Miles per gallon",
     main = "Car Data Set",
     font.lab= 6,
     pch = 7, col= "red")
help(pch)


####ggplot
library(ggplot2)
help(ggplot)
ggplot(data = mtcars, aes(x = wt, y =mpg/100))+
  geom_point(pch =20, aes(size = cyl, color = mtcars$hp))+
  geom_smooth(method = lm, se = FALSE, color = "blue")+ #se = TRUE gives shades around the linear line
  xlab(" Car weight")+
  ylab("Miles per gallon")+
  ggtitle("Car Data Set")+
  scale_color_gradient(low = "red", high = "green")+
  scale_y_continuous(labels = scales:: percent)


###gg box plot with categorical X and numerical Y variable

library(readr)
Bull_richness <- read_csv("Bull_richness.csv")
View(Bull_richness)
help(ggplot)
ggplot(data = Bull_richness, aes(x = GrowthStage, y= richness, color = Fungicide))+
  geom_boxplot()+
  geom_point(position = position_jitterdodge(dodge.width = 0.9))+
  xlab("")+
  ylab("Fungal Richness")+
  ggtitle("Bull Ruchness Data")

##bar plots
#color is the outside line and fill is to fill the plot
ggplot(data = Bull_richness, aes(x= GrowthStage, y= richness, color= Fungicide,
                                 fill = Fungicide ))+
  stat_summary(fun = mean, geom = "bar", position = "dodge")+
  stat_summary(fun.data =mean_se, geom = "errorbar", position = "dodge")+
  geom_point(position = position_jitterdodge(dodge.width = 0.9))+
  xlab("")+
  ylab("Fungal Richness")+
  ggtitle("Bull Richness data")

#Lines

ggplot(data = Bull_richness, aes(x= GrowthStage, y= richness, group= Fungicide,
                                 color = Fungicide ))+
  stat_summary(fun = mean, geom = "line")+
  stat_summary(fun.data =mean_se, geom = "errorbar")+
  xlab("")+
  ylab("Fungal Richness")+
  ggtitle("Bull Richness data")

#faceting

ggplot(data = Bull_richness, aes(x= GrowthStage, y= richness, group= Fungicide,
                                 color = Fungicide ))+
  stat_summary(fun = mean, geom = "line")+
  stat_summary(fun.data =mean_se, geom = "errorbar")+
  xlab("")+
  ylab("Fungal Richness")+
  ggtitle("Bull Richness data")+ 
  #facet_wrap(~Treatment *Crop, scales = "free")   # two graphs #scales remove stages that is not present in the graph
  facet_wrap(~Crop * Treatment, scales = "free")
  






