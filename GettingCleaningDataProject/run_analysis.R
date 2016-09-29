##
## This R file converts the Raw Data of the UCI HAR Dataset
## into a tidy data that can be analyzed
##
## Created date: 09/28/2016

library(data.table)
library(dplyr)


# Reads the Activity Labels file and returns a Vector
ReadActivityLabels <- function(){
    dataSet <- read.table("./UCI HAR Dataset/activity_labels.txt",
                          col.names = c("Id","activity"))
    as.character(dataSet$activity)
}

# Reads the features file and returns a Set
ReadFeatures <- function () {
    dataSet <- read.table("./UCI HAR Dataset/features.txt",
                          col.names = c("Id","feature"))
    as.character(paste(dataSet$Id,dataSet$feature,sep = "."))
}

# This function reads the test or train files and returns a data set
ReadData <- function (activityLabelSet, featuresSet, isTest=F) {
    if(isTest){
        option <- "test"
    }
    else{
        option <- "train"
    }
    activities <- read.table(gsub("%file%",option, 
                                 "./UCI HAR Dataset/%file%/Y_%file%.txt"),
                             col.names = c("activity"))
    activities$activity<-as.factor(activities$activity)
    levels(activities$activity)<-activityLabelSet
    subjects <- read.table(gsub("%file%",option, 
                               "./UCI HAR Dataset/%file%/subject_%file%.txt"),
                          col.names = c("subject"))
    info<-fread(gsub("%file%",option, 
                    "./UCI HAR Dataset/%file%/X_%file%.txt"))
    names(info) <- featuresSet
    info<-info%>%select(contains("mean"),contains("std"),-contains("angle"))
    table<-cbind(subjects,activities,info)
    names(table) <- sub("^[0-9]*[.]","",names(table))
    table
}

activityLabels<-ReadActivityLabels()
features<-ReadFeatures()
trainDataSet<-ReadData(activityLabels, features,FALSE)
testDataSet<-ReadData(ReadActivityLabels(), features,TRUE)
remove(activityLabels,features)
mergedData<-rbind(testDataSet,trainDataSet)

