Course final project

We have the file run_analysys.R which will look for an unzipped copy of: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Please unzip this file in C:\temp OR adjust the variables below:
train_data_file <- "C:\\temp\\UCI HAR Dataset\\train\\X_train.txt"
test_data_file <- "C:\\temp\\UCI HAR Dataset\\test\\X_test.txt"
activity_label_file <- "C:\\temp\\UCI HAR Dataset\\activity_labels.txt"
output_file <- "C:\\temp\\outfile.txt"

The script will proceed to read in train_data_file and test_data_file. It will merge these datasets together as a dataset called all_data. 

It will then generate the Mean and SD for the data for each participant 1 - 561. 

This will then be outputted into the output_file C:\temp\outfile.txt 
