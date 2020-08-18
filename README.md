** Final Project for Getting and Cleaning Data Course 

The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. 

Four files is located at this github repository:

1. run_analysis.R - an R script that merges and transforms the Samsung data sets per given requirements

(1) Merges the training and the test sets to create one data set.
(2) Extracts only the measurements on the mean and standard deviation for each measurement.
(3) Uses descriptive activity names to name the activities in the data set
(4) Appropriately labels the data set with descriptive variable names.
(5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

2. tidy_mean.txt - a text file with a table, that contains tidy set with averages as requested in step number (5)
3. CodeBook.md -> explaining variables and variables transformation
4. README.md - explaining the provided materials.
5. features_info.txt - for references only: original description of all variables of Samsung Set


------------------------------------

run_analysis.R performs the following steps:

1. changes to "UCI HAR Dataset" directory (should be executed in a working directory where "UCI HAR Dataset" is placed.

2. Loads the following sets:

test/X_test.txt  - 561 variables vector for testing
test/Y_test.txt  - matching test activity labels
test/subject_test.txt - matching test subject codes
train/X_train.txt - 561 variables vector for training
train/Y_train.txt -  matching training activity labels
train/subject_train.txt - matching training subject codes
features.txt - Names for all 561 variables
activity_labels.txt - Codes and Labels for activities

3. Combines rows for training and test 561 Vector
4. Combines rows for training and test labels
5. Combines and Merges descriptive activity names and activity labels for test and training labels
6. Joins activities, subjects and sets into one data frame.
7. Fixes descriptive column names for data frame
8. Creates a separate tidy set with averages for each variable grouped by subject and activity
9. Saves a tidy set into a separate text file.

More details about the variables are in CodeBook.md


