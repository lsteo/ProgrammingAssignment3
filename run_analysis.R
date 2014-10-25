## Getting and Cleaning Data - Course Data

## check if package "plyr" is installed
if (!is.element("plyr", installed.packages()[, 1])) {
        install.packages("plyr")
}
library(plyr)

## 1. Merges the training and the test sets to create one data set.

## read the 3 txt files - subject_test.txt, X_test.txt and y_test.txt in subfolder test
subject.test <- read.table("./UCI HAR Dataset/test/subject_test.txt", sep = "", header = FALSE)
X.test <- read.table("./UCI HAR Dataset/test/X_test.txt", sep = "", header = FALSE)
y.test <- read.table("./UCI HAR Dataset/test/y_test.txt", sep="", header = FALSE)

## merge the data in the above 3 data.frame into 1 data.frame - test_data,
## col 1 contains subject, col 2 contains labels, col 3 onwards contain data from X_test
test.data <- cbind(subject.test, y.test, X.test)
rm(subject.test)
rm(X.test)
rm(y.test)

## read the 3 txt files - subject_train.txt, X_train.txt and y_train.txt in subfolder train 
subject.train <- read.table("./UCI HAR Dataset/train/subject_train.txt", sep = "", header = FALSE)
X.train <- read.table("./UCI HAR Dataset/train/X_train.txt", sep = "", header = FALSE)
y.train <- read.table("./UCI HAR Dataset/train/y_train.txt", sep="", header = FALSE)

## merge the data in the above 3 data.frame into 1 data.frame - train_data,
## col 1 contains subject, col 2 contains labels, col 3 onwards contain data from X_train
train.data <- cbind(subject.train, y.train, X.train)
rm(subject.train)
rm(X.train)
rm(y.train)

## merged the 2 data.frame - test.data and train.data into 1 data.frame
merged.data <- rbind(test.data, train.data)
rm(test.data)
rm(train.data)

## 2. Extracts only the measurements on the mean and standard deviation for each measurement.

## read features.txt into data.frame features
features <- read.table("./UCI HAR Dataset/features.txt", sep = "", header = FALSE)

## determine the row numbers from features that measures mean and standard deviation
mean.std.col <- grep(".*mean[(].*|.*std[(].*", features[, 2])

## extract columns containing subject (col 1), labels (col 2) and the columns that contain measurements
## on the mean and standard deviation, mean.std.col + 2 to take into account the 1st two columns that
## contain subject and labels
mean.std.data <- merged.data[, c(1, 2, mean.std.col + 2)] 
rm(merged.data)

## 3. Uses descriptive activity names to name the activities in the data set

## read activity_labels.txt into data.frame activity.labels
activity.labels <- read.table("./UCI HAR Dataset/activity_labels.txt", sep="", header = FALSE)

## replace mean_std_data[, 2] containing labels with its corresponding descriptive activity names in activity_labels[, 2] 
mean.std.data[,2] <- activity.labels[,2][match(mean.std.data[,2], activity.labels[,1])]
rm(activity.labels)

## 4. Appropriately labels the data set with descriptive variable names.

## extract the list of variable names that measures mean and standard deviation  
mean.std.colnames <- features[mean.std.col, 2]
rm(features)

## replace "-" with "."
mean.std.colnames <- gsub("-", ".", mean.std.colnames)

## replace "()" with ""
mean.std.colnames <- gsub("[()]", "", mean.std.colnames)

## replace variable names beginning with "t" with "time"
mean.std.colnames <- gsub("^t", "time", mean.std.colnames)

## replace variable names beginning with "f" with "freq"
mean.std.colnames <- gsub("^f", "freq", mean.std.colnames)

## remove repeated "Body" in variable names
mean.std.colnames <- gsub("BodyBody", "Body", mean.std.colnames)

colnames(mean.std.data) <- c("subject", "activityLabels", paste(as.vector(mean.std.colnames), sep = "", collapse = NULL))
rm(mean.std.col)
rm(mean.std.colnames)

## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each 
## activity and each subject.
tidy.data <- ddply(mean.std.data, .(subject, activityLabels), numcolwise(mean, na.rm = TRUE))

## export tidy_data to a txt file tidy_data.txt without the row names
write.table(tidy.data, file = "./tidy_data.txt", row.names = FALSE)
rm(mean.std.data)
rm(tidy.data)