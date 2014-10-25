# Getting and Cleaning Data - Course Project #

### Human Activity Recognition Using Smartphones Dataset ###
Abstract: Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

The data represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

1. Download and unzip the above data into the working directory
2. Run the script run_analysis.R in the working directory to clean up the data
3. The script will produce a text file, tidy_data.txt in the working directory

### Source Data ###
For this project, the data used are from the following files:
 
* 'activity_labels.txt': Links the class labels with their activity name.

* 'test/subject_test.txt', 'train/subject_train.txt' : Identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.

* 'test/X_test.txt', 'train/X_train.txt': A 561-feature vector with time and frequency domain variables. Features are normalized and bounded within [-1,1].

* 'test/y_test.txt', 'train/y_train.txt': Labels of the activities - WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING. 

### run_analysis.R ###
The script will perform the following steps:

1. Merges the training and the test sets to create one data set.
	* total of 10299 rows x 563 columns (subject, activity labels and 561 features)

2. Extracts only the measurements on the mean and standard deviation for each measurement. 
	* total of 10299 rows x 68 columns (subject, activity labels and 66 features measurements on the mean and standard deviation)

3. Uses descriptive activity names to name the activities in the data set
	* replace 1 with 'WALKING'
	* replace 2 with 'WALKING_UPSTAIRS'
	* replace 3 with 'WALKING_DOWNSTAIRS'
	* replace 4 with 'SITTING'
	* replace 5 with 'STANDING'
	* replace 6 with 'LAYING'

4. Appropriately labels the data set with descriptive variable names.
	* replace '-' with '.' 
	* remove '()'
	* replace variable names beginning with 't' with 'time'
	* replace variable names beginning with 'f' with 'freq'
	* remove repeated 'Body' in variable names
	
	Examples:
	
	* 'tBodyAcc-mean()-X' to become 'timeBodyAcc.mean.X'
	* 'fBodyAcc-mean()-X' to become 'freqBodyAcc.mean.X'
	* 'fBodyBodyAccJerkMag-mean()' to become 'freqBodyAccJerkMag.mean'

5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
 	* for each subject, there are 6 activities, total of 30 subjects x 6 activities = 180 rows
 	* for each rows, there are total of 66 features measurements on the mean and standard deviation. Each feature variable is an average for each activity of the subject. 
 	* total of 180 rows x 68 columns (subject, activity labels and 66 features measurements)

### Variables used in 'tidy_data.txt' ###

Abbreviations used:

* time = time domain
* freq = frequency domain
* BodyAcc = body acceleration signals 
* GravityAcc = gravity acceleration signals
* BodyAccJerk = body acceleration Jerk signals
* BodyGyro = body gyroscope signals
* BodyGyroJerk = body gyroscope Jerk signals
* BodyAccMag = magnitude of 3-dimensional body acceleration signals
* GravityAccMag = magnitude of 3-dimensional gravity acceleration signals
* BodyAccJerkMag = magnitude of 3-dimensional body acceleration Jerk signals 
* BodyGyroMag = magnitude of 3-dimensional body gyroscope signals
* BodyGyroJerkMag = magnitude of 3-dimensional body gyroscope Jerk signals

Variables:

1. subject 
2. activityLabels 
3. timeBodyAcc.mean.X 
4. timeBodyAcc.mean.Y 
5. timeBodyAcc.mean.Z 
6. timeBodyAcc.std.X 
7. timeBodyAcc.std.Y 
8. timeBodyAcc.std.Z 
9. timeGravityAcc.mean.X 
10. timeGravityAcc.mean.Y 
11. timeGravityAcc.mean.Z 
12. timeGravityAcc.std.X 
13. timeGravityAcc.std.Y 
14. timeGravityAcc.std.Z 
15. timeBodyAccJerk.mean.X 
16. timeBodyAccJerk.mean.Y 
17. timeBodyAccJerk.mean.Z 
18. timeBodyAccJerk.std.X 
19. timeBodyAccJerk.std.Y 
20. timeBodyAccJerk.std.Z 
21. timeBodyGyro.mean.X 
22. timeBodyGyro.mean.Y 
23. timeBodyGyro.mean.Z 
24. timeBodyGyro.std.X 
25. timeBodyGyro.std.Y 
26. timeBodyGyro.std.Z 
27. timeBodyGyroJerk.mean.X 
28. timeBodyGyroJerk.mean.Y 
29. timeBodyGyroJerk.mean.Z 
30. timeBodyGyroJerk.std.X 
31. timeBodyGyroJerk.std.Y 
32. timeBodyGyroJerk.std.Z 
33. timeBodyAccMag.mean 
34. timeBodyAccMag.std 
35. timeGravityAccMag.mean 
36. timeGravityAccMag.std 
37. timeBodyAccJerkMag.mean 
38. timeBodyAccJerkMag.std 
39. timeBodyGyroMag.mean 
40. timeBodyGyroMag.std 
41. timeBodyGyroJerkMag.mean 
42. timeBodyGyroJerkMag.std 
43. freqBodyAcc.mean.X 
44. freqBodyAcc.mean.Y 
45. freqBodyAcc.mean.Z 
46. freqBodyAcc.std.X 
47. freqBodyAcc.std.Y 
48. freqBodyAcc.std.Z 
49. freqBodyAccJerk.mean.X 
50. freqBodyAccJerk.mean.Y 
51. freqBodyAccJerk.mean.Z 
52. freqBodyAccJerk.std.X 
53. freqBodyAccJerk.std.Y 
54. freqBodyAccJerk.std.Z 
55. freqBodyGyro.mean.X 
56. freqBodyGyro.mean.Y 
57. freqBodyGyro.mean.Z 
58. freqBodyGyro.std.X 
59. freqBodyGyro.std.Y 
60. freqBodyGyro.std.Z 
61. freqBodyAccMag.mean 
62. freqBodyAccMag.std 
63. freqBodyAccJerkMag.mean 
64. freqBodyAccJerkMag.std 
65. freqBodyGyroMag.mean 
66. freqBodyGyroMag.std 
67. freqBodyGyroJerkMag.mean 
68. freqBodyGyroJerkMag.std