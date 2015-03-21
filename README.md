#Read Me
Project for Johns Hopkins's "Getting and Cleaning Data" course on Coursera

#Code
##Constructing data set
First reaching into folders containing data I created "test" and "train" data sets combining by columns data and info on subjects and activities. Data sets were then combined by rows into one set called "data".

The columns obtained from "X_test" and "X_train" files were named using "features" file, I took the liberty to name columns containing subject and activity info "subject" and "activity".

##Changing numeric to descriptive values in "activity" column
I then created "list" object containing activity names for each row corresponding with numbers provided using "activity_labels" file as a guide and replaced "activity" column in data with said list.
Sidenote: "list" object is not really a list. I just couldn't find appropriate words for it and went with this one.

##Subsetting the data
Using grepl I constructed logical vector pointing out variables with "mean" or "std" in their column names as well as activity and subject column and then subsetted data based on that vector.

##Creating final data set
Using aggregate function from stats package in System Library I applied mean function to all variables (except subject and activity) divided by subject and activity. The results are stored in "averages" data set.

For the output to consist of only final data set (averages) the environment required some cleaning which is the last thing in the code.