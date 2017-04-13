## (1) Merges the training and the test sets to create one data set
## reading features variable names from file
features <- read.table("./features.txt", sep = "" , header = F , na.strings ="", stringsAsFactors= F)

## reading activity labels from file
activity_labels <- read.table("./activity_labels.txt", sep = "" , header = F , na.strings ="", stringsAsFactors= F)

## TEST DATA
## reading test data from files
x_test <- read.table("./test/X_test.txt", sep = "" , header = F , na.strings ="", stringsAsFactors= F)
y_test <- read.table("./test/y_test.txt", sep = "" , header = F , na.strings ="", stringsAsFactors= F)
subject_test <- read.table("./test/subject_test.txt", sep = "" , header = F , na.strings ="", stringsAsFactors= F)

## (4a) Appropriately label the data set with descriptive variable names.
## Adding variable names (rownames) to test data
colnames(x_test) <- features[,2]
colnames(y_test) <- c("activity")
colnames(subject_test) <- c("subject")

## merging test data into single data frame
test.data <- cbind(cbind(subject_test,y_test),x_test)

## TRAIN DATA
## reading train data from files
x_train <- read.table("./train/X_train.txt", sep = "" , header = F , na.strings ="", stringsAsFactors= F)
y_train <- read.table("./train/y_train.txt", sep = "" , header = F , na.strings ="", stringsAsFactors= F)
subject_train <- read.table("./train/subject_train.txt", sep = "" , header = F , na.strings ="", stringsAsFactors= F)

## (4b) Appropriately label the data set with descriptive variable names.
## Adding variable names (rownames) to train data
colnames(x_train) <- features[,2]
colnames(y_train) <- c("activity")
colnames(subject_train) <- c("subject")
## merging train data into single data frame
train.data <- cbind(cbind(subject_train,y_train),x_train)

## COMBINE TEST AND TRAIN DATA
combined.data <- rbind(test.data, train.data)

## cleaning up intermediate data frames 
## TODO (maybe in a next life)

## (3) Uses descriptive activity names to name the activities in the data set
## Activity column from Numeric to Character (descriptive activity names)
combined.data$activity[combined.data$activity == 1] <- "walking"
combined.data$activity[combined.data$activity == 2] <- "walking-upstairs"
combined.data$activity[combined.data$activity == 3] <- "walking-downstairs"
combined.data$activity[combined.data$activity == 4] <- "sitting"
combined.data$activity[combined.data$activity == 5] <- "standing"
combined.data$activity[combined.data$activity == 6] <- "laying"
## Activity column from Character to Factor
combined.data$activity <- as.factor(combined.data$activity)

## Subject column from numeric to factor
combined.data$subject <- as.factor(combined.data$subject)


## (2) Extracts only the measurements on the mean and standard deviation for each measurement.
## remove columns without "mean()" or "std()" (excluding subject and activity columns)
## from combined.data
combined.data.colnames <- colnames(combined.data)
keep.these <- combined.data.colnames %in% grep("mean\\(\\)|std\\(\\)", combined.data.colnames, value = TRUE)
keep.these[1] <- TRUE # subject
keep.these[2] <- TRUE # activity
remove.me <- combined.data.colnames[!keep.these]
combined.data <- combined.data[ , -which(names(combined.data) %in% remove.me)]

## (4c) Appropriately label the data set with descriptive variable names.
## Use camelcase for all column names
names(combined.data) <- gsub("mean\\(\\)","Mean", names(combined.data))
names(combined.data) <- gsub("std\\(\\)","Std", names(combined.data))
names(combined.data) <- gsub("-","", names(combined.data))

## sort data 
library(plyr)
combined.data <- arrange(combined.data, subject, activity)


## (5) create second independent dataset
library(dplyr)
grouped <- group_by(combined.data, subject, activity)
grouped.mean <- summarise_each(grouped, funs(mean))

## adjust colnames (add 'Mean' to end of colnames except for subject and activity)
colnames(grouped.mean) <- paste(colnames(grouped.mean), "Mean", sep = "")
colnames(grouped.mean)[1] <- "subject"
colnames(grouped.mean)[2] <- "activity"

## write new dataset to file
write.table(grouped.mean, file="./result.txt" ,row.names = FALSE)

## how to read data back
## testread <- read.table("./result.txt", sep = "" , header = T , na.strings ="")

