##Merges the training and the test sets to create one data set

if (!file.exists('data')){
  dir.create('data')
}

URL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(URL,destfile = 'data/getdata_projectfiles_UCI HAR Dataset.zip')
unzip('data/getdata_projectfiles_UCI HAR Dataset.zip',exdir = 'data/')

##Download data to R

activity_lab <- read.table('data/UCI HAR Dataset/activity_labels.txt',
                              col.names = c('Category_of_activity','activity'))

features_info <- read.table('data/UCI HAR Dataset/features.txt',
                       col.names = c('Category_of_features','features'))


X_train <- read.table('data/UCI HAR Dataset/train/X_train.txt',
                      col.names = features_info$features,check.names = FALSE)

Y_train <- read.table('data/UCI HAR Dataset/train/y_train.txt')

subject_train <- read.table('data/UCI HAR Dataset/train/subject_train.txt')

X_test <- read.table('data/UCI HAR Dataset/test/X_test.txt',
                     col.names = features_info$features,check.names = FALSE)

Y_test <- read.table('data/UCI HAR Dataset/test/y_test.txt')
subject_test <- read.table('data/UCI HAR Dataset/test/subject_test.txt')

##Merge data bases
train_merged = cbind(Y_train, subject_train, X_train)
test_merged = cbind(Y_test, subject_test, X_test)

Final <- rbind(train_merged, test_merged)
str(Final)

##Extracts only the measurements on the mean and standard deviation for each measurement
final_mean <- Final[ , grepl("mean\\(\\)|std\\(\\)|subject|Category_of_activity", names(Final))]


##Uses descriptive activity names to name the activities in the data set

X_new <- cbind(Final, final_mean)
colnames(X_new)[1] <- 'Category_of_activity'
X_new <- cbind(Final, X_new)
colnames(X_new)[3] <- 'Subject'

X_new <- merge(activity_lab, X_new)
X_new$Category_of_activity <- NULL

##Appropriately labels the data set with descriptive variable names

col_names <- colnames(X_new)
col_names <- gsub(x = col_names,pattern = '^t',replacement = 'Time domain signal: ')
col_names <- gsub(x = col_names,pattern = '^f',replacement = 'Frequency domain signal: ')
col_names <- gsub(x = col_names,pattern = '-',replacement = ', ')
col_names <- gsub(x = col_names,pattern = 'mean\\(\\)',replacement = ' mean value ')
col_names <- gsub(x = col_names,pattern = 'std\\(\\)',replacement = ' standart deviation ')
col_names <- gsub(x = col_names,pattern = '-X',replacement = 'in X direction')
col_names <- gsub(x = col_names,pattern = '-Y',replacement = 'in Y direction')
col_names <- gsub(x = col_names,pattern = '-Z',replacement = 'in Z direction')
col_names <- gsub(x = col_names,pattern = 'AccJerk',replacement = ' acceleration jerk')
col_names <- gsub(x = col_names,pattern = 'Acc',replacement = ' acceleration')
col_names <- gsub(x = col_names,pattern = 'GyroJerk',replacement = ' angular velocity jerk')
col_names <- gsub(x = col_names,pattern = 'Gyro',replacement = ' angular velocity')
col_names <- gsub(x = col_names,pattern = 'Mag',replacement = ' magnitude')
colnames(X_new) <- col_names


##From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject
library(plyr)
tidy_independent = ddply(final_mean, c("Subject","activity"), numcolwise(mean))

write.table(tidy_independent, file = "./data/tidy_independent.txt", row.names = FALSE)
