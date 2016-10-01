##
## This R file converts the Raw Data of the UCI HAR Dataset
## into a tidy data that can be analyzed
##
library(data.table)
library(dplyr)

#if file don't exists downloads and creates a new one
if(!file.exists("./UCI HAR Dataset")){
    download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
                  destfile = "FUCI_HAR_Dataset.zip",method = "curl")
    unzip("FUCI_HAR_Dataset.zip")
}

# Create train and test data sets to be merged
trainFile  <- fread("./UCI HAR Dataset/train/X_train.txt")
activities <- read.table("./UCI HAR Dataset/train/Y_train.txt")
subjects <- read.table("./UCI HAR Dataset/train/subject_train.txt")
trainFile <- cbind(activities,subjects,trainFile)

testFile <- fread("./UCI HAR Dataset/test/X_test.txt")
activities <- read.table("./UCI HAR Dataset/test/Y_test.txt")
subjects <- read.table("./UCI HAR Dataset/test/subject_test.txt")
testFile <- cbind(activities,subjects,testFile)

# 1.Merges the training and the test sets to create one data set.
mergeData       <- rbind(trainFile,testFile)
featuresFile    <- read.table("./UCI HAR Dataset/features.txt",
                            col.names = c("id","feature"))
featuresVector   <- as.character(paste(featuresFile$id, featuresFile$feature,
                                       sep = "."))
names(mergeData) <- append(c("activity","subject"),featuresVector)

# 2.Extracts only the measurements on the mean and standard deviation for each measurement.
mergeData <- mergeData %>%
                select(activity,subject,contains("mean()"),contains("std()"))

# 3.Uses descriptive activity names to name the activities in the data set
activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt",
                          col.names = c("id","activity"))
activityLabels <- as.character(activityLabels$activity)
mergeData$activity <- as.factor(mergeData$activity)
levels(mergeData$activity) <- activityLabels

# 4.Appropriately labels the data set with descriptive variable names.
names(mergeData) <- sub("^[0-9]*[.]","",names(mergeData))
names(mergeData) <- gsub("Gyro","Gyroscope",names(mergeData))
names(mergeData) <- gsub("Acc","Acceleration",names(mergeData))
names(mergeData) <- gsub("mean","Mean",names(mergeData))
names(mergeData) <- gsub("std","Std",names(mergeData))
names(mergeData) <- gsub("^t","time",names(mergeData))
names(mergeData) <- gsub("^f","frequency",names(mergeData))
names(mergeData) <- gsub("Mag","Magnitude",names(mergeData))
names(mergeData) <- gsub("BodyBody","Body",names(mergeData))
names(mergeData) <- gsub("-","",names(mergeData))
names(mergeData) <- gsub("\\(\\)","",names(mergeData))

# 5.From the data set in step 4, creates a second, independent tidy data 
#   set with the average of each variable for each activity and each subject.
aggregateData<-aggregate(.~activity+subject,mergeData,mean)
write.table(aggregateData,"TidiData.txt",col.names = TRUE,row.names = FALSE)
