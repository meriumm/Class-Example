#Homework R Coding Practice
#Addition
2+2
#substraction
2-2

#Division
2/2
#Multiplication
2*2
#Creation of an Object
x=2
y=3
x+y
x-y
x/y
x*y

#creating objects using non numerical data
#This is character variabe
name<- "zach"
seven<- "-7" # because we enclose -7 in inverted comma R recognize it as character variable.

x + seven
#Function
class(seven) # we used class function here to know the data type
class(x)

#concatinate function
vec <- c(1,2,3,4,5,6,7) # its a numeric vextor
vec1<-(1:7) # colon create a sequence in the vector
vec<-1:7
vec2 <-c("zach","jie", "Mitch") # character vector
vec3<- c(TRUE, FALSE, TRUE) # its a logical factor
vec[4]
vec2[2]
vec +2
#Basic Function in R
vec
print(vec)
mean(vec) #mean
sd(vec) #standard deviation
max(vec) # maximum
min(vec) # minimum
summary(vec)
#function for absolute values
abs(vec) # to get the absolute value that is positive value doesn't change and negative value converted into positive value
sqrt(vec) #square root
sqrt(sum(vec))
log(vec) #natural log
log10(vec) # log base 10
exp(vec) # power of e

### Logical Operators
#> greater than
# <less than
# | or
# & and
# = equal ( used to assign values from left to right)
# == exact equal ( used to show equlaity between values)
# >= greater than or equal to
# != not equals to
1>2
1<2
1<= 2
1 == 1 #asking is 1 equal to 1
# 1=1 this will not work because both of them is numeric
one = 1
t <- 1:10
t[t>8]
#value of t greater than 8 or less than 5
t[(t > 8)| (t < 5)]

#values of t that is greater than 8 or less than 10
t[(t>8) | (t<10)]
t[ (t>8) & (t<10)]
# elements of t that is not exact equals to 2
t[t!=2]
# ask R if a number exist in a vector
32 %in% t
  1 %in% t
  #Data Types
  #scalar objects
  x
#vector
  t
#matrix
  #example of a numeric matrix
  mat1<-matrix(data = c(1,2,3),nrow = 3,ncol = 3)
  #character matrix
  mat2<- matrix(data = c("Zach","Jie","Mitch"),nrow = 3, ncol= 3)
  t[5]
mat1[1]  
mat1[2]  
mat1[3]  
mat1[4]  
mat1[9]  
mat1[1,3] #first row, third column
mat1[1,] # only first row
mat1[,3] # third column

#Data Frames
#Data frames are basically like matricies but with multiple data classes or data types( i.e., logical and numeric)
df<- data.frame(mat1[,1],mat2[,1])
df

#changing the upper column names of the data frame
colnames(df)<- c("value", "name")
df
df[1]
df[1,2]
df[1] # first column
df[,"value"]
df$value #accessing columns

df$value[1]
df$name[3]

#subseting or indexing


#the element of the column value such that names is equal to jie
# return the elements of the column value within the data frame df such that name is not equal to jie and mitch
df$value[df$name == "jie"]
df$value[df$name %in% c("jie", "Mitch")]


#subset function
subset(df,name == "jie")

#making a new column in the data frame
df$log_value <- log(df$value)
df

#Next Topic is installing packages

#tidyverse
#lme 4
#purrr
install.packages("tidyverse") #install the package from CRAn repository
library(tidyverse) # load the function into R

#Reading data into R
#csv file or TXT file

read.csv("location of the file", na.strings = "na")

csv<- read.csv("location of the file", na.strings = "na")

csv2<- file.choose()
csv3<- read.csv("file.choose()", na.strings = "na")





















  
  
  
  
  