# Getting and Cleaning Data - Course Project #


### Source of Data ###

==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit? degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 



Code book that describes the variables, the data, and any transformations or work that you performed to clean up the data 



The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

You should create one R script called run_analysis.R that does the following: 
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

average of each variable for each activity and each subject.

* subject 
activityLabels 
timeBodyAcc.mean.X 
timeBodyAcc.mean.Y 
timeBodyAcc.mean.Z 
timeBodyAcc.std.X 
timeBodyAcc.std.Y 
timeBodyAcc.std.Z 
timeGravityAcc.mean.X 
timeGravityAcc.mean.Y 
timeGravityAcc.mean.Z 
timeGravityAcc.std.X 
timeGravityAcc.std.Y 
timeGravityAcc.std.Z 
timeBodyAccJerk.mean.X 
timeBodyAccJerk.mean.Y 
timeBodyAccJerk.mean.Z 
timeBodyAccJerk.std.X 
timeBodyAccJerk.std.Y 
timeBodyAccJerk.std.Z 
timeBodyGyro.mean.X 
timeBodyGyro.mean.Y 
timeBodyGyro.mean.Z 
timeBodyGyro.std.X 
timeBodyGyro.std.Y 
timeBodyGyro.std.Z 
timeBodyGyroJerk.mean.X 
timeBodyGyroJerk.mean.Y 
timeBodyGyroJerk.mean.Z 
timeBodyGyroJerk.std.X 
timeBodyGyroJerk.std.Y 
timeBodyGyroJerk.std.Z 
timeBodyAccMag.mean 
timeBodyAccMag.std 
timeGravityAccMag.mean 
timeGravityAccMag.std 
timeBodyAccJerkMag.mean 
timeBodyAccJerkMag.std 
timeBodyGyroMag.mean 
timeBodyGyroMag.std 
timeBodyGyroJerkMag.mean 
timeBodyGyroJerkMag.std 
freqBodyAcc.mean.X 
freqBodyAcc.mean.Y 
freqBodyAcc.mean.Z 
freqBodyAcc.std.X 
freqBodyAcc.std.Y 
freqBodyAcc.std.Z 
freqBodyAccJerk.mean.X 
freqBodyAccJerk.mean.Y 
freqBodyAccJerk.mean.Z 
freqBodyAccJerk.std.X 
freqBodyAccJerk.std.Y 
freqBodyAccJerk.std.Z 
freqBodyGyro.mean.X 
freqBodyGyro.mean.Y 
freqBodyGyro.mean.Z 
freqBodyGyro.std.X 
freqBodyGyro.std.Y 
freqBodyGyro.std.Z 
freqBodyAccMag.mean 
freqBodyAccMag.std 
freqBodyAccJerkMag.mean 
freqBodyAccJerkMag.std 
freqBodyGyroMag.mean 
freqBodyGyroMag.std 
freqBodyGyroJerkMag.mean 
freqBodyGyroJerkMag.std