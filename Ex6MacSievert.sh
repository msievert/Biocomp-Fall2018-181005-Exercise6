#Mac Sievert 
#exercise 6

#1. define Rheader function and 2 variables to provide function
Rheader = function(fileName, numLines){
  file = 
read.table(fileName,header=TRUE,sep=",",stringsAsFactors=FALSE)###read in file provided
  print(file[1:numLines,])###print rows from 1 to number provided 
}
Rheader('iris.csv', 5)
#######################################################################
#1 reads in iris.csv. prints last two columns of last two rows
file = read.table('iris.csv',header=TRUE,sep=",",stringsAsFactors=FALSE) 
print(file[149:150, 4:5])

#2 copies all rows for a species to a new data.frame. 
## multiplies number of rows in new dataframe 
##by 4 to get number of observations.
virginica = subset(file, Species =='virginica')
VirObservations=nrow(virginica)*4

setosa = subset(file, Species =='setosa')
SetObservations=nrow(setosa)*4

versicolor = subset(file, Species =='versicolor')
VersObservations=nrow(versicolor)*4

### Brittni: Just for clarification, "observations" is often referred to as the rows, because every row is a different sample. I didn't take any points for this though.

#3 copies all rows with sepal.width > 3.5 to new dataframe
sepal35 = subset(file, Sepal.Width > 3.5)

#4 writes all setosa data to new csv file
write.csv(setosa, file = 'setosa.csv')

#5 mean, min, and max of petal.length from virginica dataframe made in #2
mean(virginica$Petal.Length)
max(virginica$Petal.Length)
min(virginica$Petal.Length)
