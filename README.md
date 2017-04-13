Purpose of the files in this repo
=========================================

This repo contains code written in the R language to run an analysis on the UCI HAR dataset.
The code will:
- merge the data of UCI HAR dataset in a single tidy dataset
- Extracts only the measurements on the mean and standard deviation for each measurement
- creates a tidy data set with the average of each variable for each activity and each subject.


UCI HAR dataset
=========================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0

A full description of this dataset can be found here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Dowload link:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


This repo includes the following files:
=========================================

- 'README.txt' The file you are reading now
- 'CodeBook.md'Codebook explaining the variables and summaries calculated
- 'run_analysis.R' R code that runs an analysis on the UCI HAR dataset
- 'result.txt' Output of the 'run_analysis.R' file


How to use and run this code:
=========================================

- Download the UCI HAR dataset (see download link)
- Extract the zip file 
- Notice the following directory structure:

UCI HAR Dataset
|-test
|-train

- copy 'run_analysis.R' to the top dir of directory structure (UCI HAR Dataset)
- in R, make top directory your working directory
- run 'run_analysis.R' inside your working directory
- Notice how 'run_analysis.R' wil generate a new file in you working directory ('result.txt')

- The 2 last line of 'run_analysis.R' shows example code for reading 'result.txt'


function of 'run_analysis.R'
=========================================

The 'run_analysis.R' code will do the following:

1) read the data in the 'test' directory of the UCI HAR dataset (subject_test.txt, X_test.txt, y_test.txt)
2) merge (column wise) the data in the 3 files together, resulting in a table with 563 columns

3) read the data in the 'train' directory of the UCI HAR dataset (subject_train.txt, X_train.txt, y_train.txt)
4) merge (column wise) the data in the 3 files together, resulting in a table with 563 columns

5) merge (row wise) the tables generated in step 2 and 4 together 
6) labels the data set with descriptive variable names
7) Extracts only the measurements on the mean and standard deviation for each measurement
8) Uses descriptive activity names to name the activities in the data set
9) From the data set in step 8, creates a tidy data set with the average of each variable for each activity and each subject.
10) Every variable-name averaged in step 9 gets a 'Mean' postfix
11) The resulting table (with a dimension of 180 rows X 68 columns) will be written to file ('result.txt')

