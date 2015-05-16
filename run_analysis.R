# run_analysis.R
# created by Steve Rowe May 15, 2015

#libraries
library(dplyr)

#
#merge training and test sets to create one data set
#

# load data
X_train <- read.table("train/X_train.txt")
y_train <- read.table("train/y_train.txt")
subject_train <- read.table("train/subject_train.txt")
X_test <- read.table("test/X_test.txt")
y_test <- read.table("test/y_test.txt")
subject_test <- read.table("test/subject_test.txt")
activity_labels <- read.table("activity_labels.txt")
features <- read.table("features.txt", stringsAsFactors=FALSE)

#add column names
samsung <- rbind(X_train, X_test)
names(samsung) <- features[,2]

#
#select only std and mean columns
# This means only columns which were called std() or mean().
#

#valid names cannot include ().  Fix this or select() gives us errors.
names(samsung) <- make.names(names(samsung), unique=T)
samsung <- select(samsung, contains("std.."), contains("mean.."), -contains("gravityMean")) #excludeGravityMean because one slips in due to name mangling

#now add the activity and subject columns
subjects <- rbind(subject_train, subject_test)
names(subjects)<-"subject"
activity <- rbind(y_train, y_test)
names(activity)<-"activity"
samsung <-cbind(subjects, activity, samsung)
samsung <-transform(samsung, activity=factor(activity))
levels(samsung$activity)<- activity_labels$V2

#
# create summary table
#
gb <- group_by(samsung, subject, activity)
tidy <- summarise_each(gb, funs(mean))

#
# write out the tidy data set
#
write.table(tidy, "tidy.txt", row.name=FALSE)
