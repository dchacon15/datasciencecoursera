#Course Project: Getting and Cleaning Data

This is the GitHub repository for the Getting and Cleaning Data course project created by Daniel Chacon. This project takes a raw data and creates a tidy data file ready to be processed.
This repository folder contains the following items:
* 'run_analysis.R' is a R script in charge of transforming the raw data to the tidy data.
* a code book for the Tidy Data file explaining the variables,and summaries calculated, along with units, and any other relevant information found.
* also includes the raw data used to create the tidy data set.

The 'run_analysis.R' R scripts do the following:
 1. Downloads the raw data in case it doesn't exists and creates a folder with the information
 2. Creates the train and test data set merging data from the following files:
	* subject files: this file contains the subjects for each observation
	* Y files: the file contains the activities for each observation
	* X files: this file contains the observations
 3. Merge the data train and test data sets and name each variable with the correct name
	* each variable name comes from the file 'feature.txt' file and adds the 'activity' and 'subject' variable names
 4. Filters the column variables and only selects the ones that the name contains 'mean' or 'std' also 'activity' and 'subject' are maintained.
 5. The information in the 'activity' column is cast as factor and the levels are changed 
	* the levels are found in the 'activity_lables.txt' file
 6. The names of the variables are changed to more significant names.
 7. Finally a independent tidy data set is created set with the average of each variable for each activity and each subject, and the file is written to disc.
