
# Script to prepare a tidy data set based on instructions given in 
# Getting clean data course project. 
# Instructions provided on Coursera.org 
# https://class.coursera.org/getdata-006/human_grading/view/courses/972584/assessments/3/submissions
# You should create one R script called run_analysis.R that does the following. 
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. Creates a second, independent tidy data set with the average of each variable for 
#    each activity and each subject. 

# Following code is given as an example to check if the files are available on local disk or not
# by David in discussion forum. 
target_url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
target_localfile = "CourseProject.zip"
target_local_uncompressed_file = "UCI HAR Dataset"
if (!file.exists(target_local_uncompressed_file)) {
    
    # download the compressed file
    
    # following line is required on windows platform to download any 
    # file from secured website i.e., using https protocol.
    # TODO: Good idea to check the OS and then protect following line.
    setInternet2(TRUE)
    download.file(target_url, target_localfile, mode="wb")
    
    # uncompress the downloaded file.
    unzip(target_localfile, exdir = ".")
    
    # write meta data about the file.
    library(tools)       # for md5 checksum
    sink("download_metadata.txt")
    print("Download date:")
    print(Sys.time() )
    print("Download URL:")
    print(target_url)
    print("Downloaded file Information")
    print(file.info(target_localfile))
    print("Downloaded file md5 Checksum")
    print(md5sum(target_localfile))
    print("Uncompressed downloaded file or directory:")
    print(target_local_uncompressed_file)
    sink()
}

# Now read files that are in the directory. 
# Assumption: This script assumes the parent directory that is uncompressed is 
# in same directory as in script. For all files script uses relative path.

# read variables listed in features.txt
variables <- read.table("UCI HAR Dataset/features.txt")

# read test data.
test.data <- read.table("./UCI HAR Dataset/test/X_test.txt")
# Add column names using variables data frame to test data.
names(test.data) <- variables$V2

# read activity code data corresponding to each row in test data from y_test.txt.
test.activity <- read.table("./UCI HAR Dataset/test/y_test.txt")
# Add column name (it has single column)
names(test.activity) <- c("activity")

# read subject information corresponding to each row in test data from subject_test.txt.
test.subject <- read.table("./UCI HAR Dataset/test/subject_test.txt")
# Add column name (it has single column)
names(test.subject) <- c("subject")

# merge activity and subject data with test data.
test.df <- cbind(test.activity, test.data)
test.df <- cbind(test.subject, test.df)

# following line looks like redundant.
#names(test.tmp) <- c("subject", "activity", variables$V2)

# read training data.
training.data <- read.table("./UCI HAR Dataset/train/X_train.txt")
# Add column names using variables data frame to training data.
names(training.data) <- variables$V2

# read activity code data corresponding to each row in training data from y_train.txt.
training.activity <- read.table("./UCI HAR Dataset/train/y_train.txt")
# Add column name (it has single column)
names(training.activity) <- c("activity")

# read subject information corresponding to each row in training data from subject_train.txt.
training.subject <- read.table("./UCI HAR Dataset/train/subject_train.txt")
# Add column name (it has single column)
names(training.subject) <- c("subject")

# merge activity and subject data with training data.
training.df <- cbind(training.activity, training.data)
training.df <- cbind(training.subject, training.df)

# merge test and training data into on big data frame. This is only a temporary file.
# since number of columns are exactly same, we just need to merge rows.
tmp.df <- rbind(test.df, training.df)

# we need to reduce data (remove columns, that are not required) as instructed in instructions 
# project requires to keep only mean and standard deviation related data. every thing else 
# is not required.

# get reduced data frame related names using grep function. 
reduced.df.names <- grep("subject|activity|mean|std", names(tmp.df), value = TRUE)

#if need to remove meanFreq() variables, use following line. I am not sure about it. 
# we have a command to remove though. 
# reduced.df.names <- reduced.df.names[!grepl("meanFreq", reduced.df.names)]

# now get the reduced data using column names collected above.
reduced.df <- tmp.df[, reduced.df.names]

# now we need to replace activity code stored in activity column with 
# descriptive names. Descriptive names are available inside activity_labels.txt file
# read that file.
activity.description <- read.table("./UCI HAR Dataset/activity_labels.txt", stringsAsFactors=FALSE)
# add column names.
names(activity.description) <- c("code", "activity")

# get the activity code column in a vector. 
reduced.df.activity <- reduced.df$activity

# this can be done in a loop
# use subsection and replacement
reduced.df.activity[reduced.df.activity == activity.description$code[1]] <- activity.description$activity[1]
reduced.df.activity[reduced.df.activity == activity.description$code[2]] <- activity.description$activity[2]
reduced.df.activity[reduced.df.activity == activity.description$code[3]] <- activity.description$activity[3]
reduced.df.activity[reduced.df.activity == activity.description$code[4]] <- activity.description$activity[4]
reduced.df.activity[reduced.df.activity == activity.description$code[5]] <- activity.description$activity[5]
reduced.df.activity[reduced.df.activity == activity.description$code[6]] <- activity.description$activity[6]

# alternative is to use gsub. for now comment them
#gsub(activity.description$code[1], activity.description$activity[1], reduced.df.activity, fixed=TRUE)
#gsub(activity.description$code[2], activity.description$activity[2], reduced.df.activity, fixed=TRUE)
#gsub(activity.description$code[3], activity.description$activity[3], reduced.df.activity, fixed=TRUE)
#gsub(activity.description$code[4], activity.description$activity[4], reduced.df.activity, fixed=TRUE)
#gsub(activity.description$code[5], activity.description$activity[5], reduced.df.activity, fixed=TRUE)
#gsub(activity.description$code[6], activity.description$activity[6], reduced.df.activity, fixed=TRUE)

# replace the activity code column with activity description.
reduced.df$activity <- reduced.df.activity

# next step is to calculate average of each column based on subject and activity.
library(plyr)
tidy.df <- ddply(reduced.df, .(subject, activity), numcolwise(mean))

# alterantive methods to calculate mean.
#library(reshape2)
#melt.data <- melt(reduced.df, id = c("subject", "activity"))
#tidy.df2 <- dcast(melt.data, subject + activity ~ variable, mean)

# using data.table.
#library(data.table)
#reduced.dt <- as.data.table(reduced.df)
#tidy.dt3 <- reduced.dt[, lapply(.SD, mean), by = c("subject", "activity")]
#tidy.df3 <- as.data.frame(tidy.dt3)
#tidy.df3 <- arrange(tidy.df3, tidy.df3$subject, tidy.df3$activity)

# prepend "avg_" to all column names, except subject and activity.
tidy.df.names <- names(tidy.df)
tidy.df.names.len <- length(tidy.df.names)
tidy.df.names[3:tidy.df.names.len] <- paste("avg_",tidy.df.names[3:tidy.df.names.len], sep="")

# remove the "()" from labels.
tidy.df.names <- gsub("()", "", tidy.df.names, fixed=TRUE)

# replace existing names with modified column names
names(tidy.df) <- tidy.df.names

# write the data set to file in simple text file.
write.table(tidy.df, "./average_tidy_data.txt", row.names=FALSE)

# write column names used for CodeBook.md
#write(tidy.df.names, "./average_tidy_data.cookbook.txt")

# write into csv file.
#write.csv(tidy.df, "./average_tidy_data.csv", row.names=FALSE)

