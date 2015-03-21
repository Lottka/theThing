#Code Book

##Variables:

- activity - factor, with 6 levels ("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"), informing about type of activity taken by subject

- subject - numeric, indicating one of 30 subjects


Rest of variables are numeric, presenting the averages of mean (suffix "mean()") and standard deviation (suffix "std()"), where basic measurements are:
- BodyAcc - body acceleration
- GravityAcc - gravitational acceleration
- BodyGyro - rate of change of the angles around axes

Prefix "f"" indicates frequency and prefix "t"" - time.

Additionally some of the variables are measured in three dimensions, separately for each axis, what is indicated by suffixes "X", "Y" and "Z".

In some cases the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (indicated by suffix "Jerk"). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (indicated by suffix "Mag").


##Records:

Records contain of values of the variables described above calculated for each variable for each activity and each subject. There are 30 subjects and 6 activities adding up to 180 records in this data set.