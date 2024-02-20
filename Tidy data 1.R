#Workshop 5
#20/02/2024
#Tidy data 1 

#Three basic rules for tidy data:
#1. Each row is an observation
#2. Each column is a variable
#3. Each value has its own cell 

#this can be written in different variations
beetles1 <- read.csv("dung_beetles_v1.csv")
beetles1

beetles2 <- read.csv("dung_beetles_v2.csv")
beetles2

beetles3 <- read.csv("dung_beetles_v3.csv")
beetles3

beetles4 <- read.csv("dung_beetles_v4.csv")
beetles4

#Which of the three rules does each table fail?

#(beetles1) the species are separated, they are not in the same column
#(beetles2) the months are separated, they are not in the same column 
#(beetles3) the sites are separated, they are not in the same column

#Which of these tables is 'tidy'?
#Beetles4 is tidy

#Count the number of unique sites in 'Beetles1'
usites <- unique(beetles1$Site)
length(usites)

#Count the number of species from 'beetles1'
colnames(beetles1)[3:ncol(beetles1)]
#"Caccobius_bawagenesis" "Catharsius_dayacus" "Catharsius_renaudpauliani

#We do not need to do two different thigns to perform the same calculation on different parts of the dataset 

#Using the 'unique' and 'length' functions to count the number of species using 'beetles3'. How many beetle species are there?
number_of_species <- unique(beetles3$spp)
length(number_of_species)
#3 - there is only 3 species used in this dataset

#Which 'beetles' table lets you count all unique values for Sites, Months and Species?
number_of_sites <- unique(beetles4$Site)
length(number_of_sites)
#5

number_of_months <- unique(beetles4$Month)
length(number_of_months)
#2

number_of_species <- unique(beetles4$spp)
length(number_of_species)
#3

#Not all datasets can be viewed directly in the console; for larger tables R provides you with a range of different functions to get an overview of the data 

str() 
summary()
head()
View()   # <-- this one is in Rstudio only

#Using the above functions have a look at the 'beetles4' table with each of these functions 
str(beetles4) #gives the number of observations and variables

summary(beetles4) #gives the boxplot values

head(beetles4) #it will give the first 6 rows by default

View(beetles4) #opens the file










