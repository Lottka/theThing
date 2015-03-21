#Setting working directory to folder containg data located in working directory
setwd("UCI HAR Dataset")

#Obtaining "test" and "train" data set
setwd("test")
test <-  cbind(read.table("X_test.txt", header = F), read.table("y_test.txt", header = F), 
               read.table("subject_test.txt", header = F))
setwd("..")
setwd("train")
train <- cbind(read.table("X_train.txt", header = F), read.table("y_train.txt", header = F),
               read.table("subject_train.txt", header = F))
setwd("..")
setwd("..")

#Merging test and train into data and naming columns
data <- rbind(test, train)
names <- read.table("features.txt")
colnames(data) <- names[,2]
colnames(data)[562] <- "activity"
colnames(data)[563] <- "subject"

#Changing numeric to descriptive values in "activity" column
activities <- read.table("activity_labels.txt")
list <- factor(data[,562], levels = activities[,2])
for(i in 1:6) {
  for(j in 1:nrow(data)) {
    if(data[j,562] == i) {
      list[j] <- activities[i, 2]
    }
  }
}
data[,562] <- list

#Extracting means and standard deviations
stdVector <- grepl("std()", colnames(data))
meanVector <- grepl("mean()", colnames(data))
adjustment <- vector(mode = "logical", length = 563)
adjustment[562:563] <- TRUE
vector <- stdVector | meanVector | adjustment
data <- data[,vector]

#Creating data set with averages of every variable for each activity and subject
averages <- aggregate(data[,1:79], by = data[, 80:81], mean)

#Clearing workspace, leaving only averages data set as output
rm(i, j, activities, adjustment, data, list, meanVector, names, stdVector, test, 
   train, vector)