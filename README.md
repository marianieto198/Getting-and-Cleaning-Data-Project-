# Getting-and-Cleaning-Data-Project-

The following scripts and explanations are for getting and cleaning a raw data set in order to make it tidy and facilitate the analysis.

The present repository contains:

1)An script with all the transformations and instruccions made to turn the raw data into a tidy one (run_analysis.R).

2)A code book that describes the raw data set, the variables and the transformations used to clean up the data (CodeBook.md). 

3) The present file (README.md) explaining how all of the scripts work and how they are connected.

The data used represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project:

 https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  

The transformations made were as followed:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
6. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
