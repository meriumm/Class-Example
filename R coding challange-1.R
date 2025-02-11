#R First Coding Challenge
#Question:4
#creating a vector z
z<- (1:200)
#printing mean and standard deviation of z
mean(z)
sd(z)

#Create a logical vector named zlog that is 'TRUE' for z values greater than 30 and 'FALSE' otherwise.
z<- (1:200)
zlog <- z > 30
print(zlog)

#	Make a dataframe with z and zlog as columns. Name the dataframe zdf
zdf<- data.frame(z, zlog)
print(zdf)

#	Change the column names in your new dataframe to equal “zvec” and “zlogic”
colnames(zdf)<- c("zvec", "zlogic")

#	Make a new column in your dataframe equal to zvec squared (i.e., z2). Call the new column zsquared. 
zdf$zvec^2
zdf$zsquared<- zdf$zvec^2
print(zdf)

#Subset the dataframe with and without the subset() function to only include values of zsquared greater than 10 and less than 100 
#using subset function
subset(zdf,zsquared>10 & zsquared<100)
zdf_subset<- subset(zdf, zsquared >10 & zsquared< 100)
print(zdf_subset)

#without subset function
zdf[zdf$zsquared>10 & zdf$zsquared<100,]
zdf_without_subset<- zdf[zdf$zsquared>10 & zdf$zsquared<100,]
print(zdf_without_subset)

#Subset the zdf dataframe to only include the values on row 26
subset(zdf)[26,]
subset_zdf<- subset(zdf)[26,]
print(subset_zdf)

#Subset the zdf dataframe to only include the values in the column zsquared in the 180th row.
 zdf$zsquared[180]
 row_value <- zdf$zsquared[180]
print(row_value)

#Question:5
#Importing excel file with missing reported values.
library(readr)
library(readr)
TipsR <- read_csv("TipsR.csv", na = ".")
View(TipsR)
#data is read correctly by using printing function to the file as the file is showing all the . to NA that means it has been read correctly.You can also go to global option and open the file there to check if all the . is replaced with NA.
