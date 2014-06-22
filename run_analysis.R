library(MASS)
library(data.table)
library(plyr)
train_data_file <- "C:\\temp\\UCI HAR Dataset\\train\\X_train.txt"
test_data_file <- "C:\\temp\\UCI HAR Dataset\\test\\X_test.txt"
activity_label_file <- "C:\\temp\\UCI HAR Dataset\\activity_labels.txt"
output_file <- "C:\\temp\\outfile.txt"

train_data <- read.table(train_data_file)
test_data <- read.table(test_data_file)
all_data <- rbind(test_data, train_data)

activity_label <- read.table(activity_label_file)

rownames(all_data) <- c("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING", "STANDING", "LAYING")

out_sd <- llply(all_data, function(x) {
  j  <- sd(x)
  return(j)
  })

out_mean <- llply(all_data, function(x) {
  k <- mean(x)
  return(k)
  })
out_res <- rbind(out_mean, out_sd)

capture.output(out_res, output_file) 
