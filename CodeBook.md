
##Information about the data set and the variables

The database used  for this assignment is built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

*Data Set Characteristics: Multivariate, Time-Series  
*Number of Instances: 10299

The next information is extracted from the UCI Machine Learning Repository:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

The files found in the raw data set were the following:

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

##Information of the tidy data set 

The dimensions of the tidy data set are 180 rows and 68 columns, each row represents a subject and an activity (averaged from the observations in the raw data). 


The measurementss in the tidy data set are:

TimeBodyAccelerometerMeanX
TimeBodyAccelerometerMeanY
TimeBodyAccelerometerMeanZ
TimeGravityAccelerometerMeanX
TimeGravityAccelerometerMeanY
TimeGravityAccelerometerMeanZ
TimeBodyAccelerometerJerkMeanX
TimeBodyAccelerometerJerkMeanY
TimeBodyAccelerometerJerkMeanZ
TimeBodyGyroscopeMeanX
TimeBodyGyroscopeMeanY
TimeBodyGyroscopeMeanZ
TimeBodyGyroscopeJerkMeanX
TimeBodyGyroscopeJerkMeanY
TimeBodyGyroscopeJerkMeanZ
TimeBodyAccelerometerMagnitudeMean
TimeGravityAccelerometerMagnitudeMean
TimeBodyAccelerometerJerkMagnitudeMean
TimeBodyGyroscopeMagnitudeMean
TimeBodyGyroscopeJerkMagnitudeMean
FrequencyBodyAccelerometerMeanX
FrequencyBodyAccelerometerMeanY
FrequencyBodyAccelerometerMeanZ
FrequencyBodyAccelerometerJerkMeanX
FrequencyBodyAccelerometerJerkMeanY
FrequencyBodyAccelerometerJerkMeanZ
FrequencyBodyGyroscopeMeanX
FrequencyBodyGyroscopeMeanY
FrequencyBodyGyroscopeMeanZ
FrequencyBodyAccelerometerMagnitudeMean
FrequencyBodyAccelerometerJerkMagnitudeMean
FrequencyBodyGyroscopeMagnitudeMean
FrequencyBodyGyroscopeJerkMagnitudeMean
TimeBodyAccelerometerStdX
TimeBodyAccelerometerStdY
TimeBodyAccelerometerStdZ
TimeGravityAccelerometerStdX
TimeGravityAccelerometerStdY
TimeGravityAccelerometerStdZ
TimeBodyAccelerometerJerkStdX
TimeBodyAccelerometerJerkStdY
TimeBodyAccelerometerJerkStdZ
TimeBodyGyroscopeStdX
TimeBodyGyroscopeStdY
TimeBodyGyroscopeStdZ
TimeBodyGyroscopeJerkStdX
TimeBodyGyroscopeJerkStdY
TimeBodyGyroscopeJerkStdZ
TimeBodyAccelerometerMagnitudeStd
TimeGravityAccelerometerMagnitudeStd
TimeBodyAccelerometerJerkMagnitudeStd
TimeBodyGyroscopeMagnitudeStd
TimeBodyGyroscopeJerkMagnitudeStd
FrequencyBodyAccelerometerStdX
FrequencyBodyAccelerometerStdY
FrequencyBodyAccelerometerStdZ
FrequencyBodyAccelerometerJerkStdX
FrequencyBodyAccelerometerJerkStdY
FrequencyBodyAccelerometerJerkStdZ
FrequencyBodyGyroscopeStdX
FrequencyBodyGyroscopeStdY
FrequencyBodyGyroscopeStdZ
FrequencyBodyAccelerometerMagnitudeStd
FrequencyBodyAccelerometerJerkMagnitudeStd
FrequencyBodyGyroscopeMagnitudeStd
FrequencyBodyGyroscopeJerkMagnitudeStd

##Information about the summary choices maded and the eperimental design used (TRANSFORMATION)
The transformations made to turn the raw data into a tidy one are as follows: 

1. Merged the training and test sets to create one final data set.

2. Extracted only the measurements on the mean and standard deviation for each measurement.

3. Used descriptive activity names to name the activities in the data set.

4. Appropriately labeled the data set with descriptive variable names.

5. From the data set in step 4, created a second, independent tidy data set with the average of each variable for each activity and each subject.

More explicitly these transformations can be found in the R Script named "run_analysis.R" in the repository.

##STUDY DESIGN (description of how the data was collected)

The raw data used for this assignment represent data collected from the accelerometers from the Samsung Galaxy S smartphone. The data is found in the UCI Machine Learning Repository.
The data was obtained from the next website:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

And it is compiled in the next link:

 https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  

