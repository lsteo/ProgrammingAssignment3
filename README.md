# Getting and Cleaning Data - Course Project #

### Overview ###

The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. 

The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

This repo explains how all of the scripts work and how they are connected.  


## Installation ##

Prerequisites:

1. download run_analysis.R from this repo into your working directory in R
2. download the data from the link above and unzip it and save the folder in your working directory

Note: Set your working directory in R


## Usage ##

The script run_analysis.R will perform the following:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject and output this data set to a text file - tidy_data.txt in your working directory. To read this table, you can use the following 2 lines:

		tidy.data <- read.table("./tidy_data.txt", header = TRUE)
		view(tidy.data)

## Additional Information ##

The script uses ddply from plyr package to manipulate and summarise the data for Step 5 above. The script will install the package if it is not installed.

For more information, please refer to the full documentation 
http://cran.r-project.org/web/packages/plyr/plyr.pdf