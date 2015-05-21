Codebook for Getting & Cleaning Data class
May 21, 2015
Steve Rowe

#Feature Selection 
=================

This work was based on the data at [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip]

The data was modified from the original.  I will first describe the original and then the modification.  At the bottom is the description of the data in tidy.txt which is the output.

##Original Data 
The original features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ

tGravityAcc-XYZ

tBodyAccJerk-XYZ

tBodyGyro-XYZ

tBodyGyroJerk-XYZ

tBodyAccMag

tGravityAccMag

tBodyAccJerkMag

tBodyGyroMag

tBodyGyroJerkMag

fBodyAcc-XYZ

fBodyAccJerk-XYZ

fBodyGyro-XYZ

fBodyAccMag

fBodyAccJerkMag

fBodyGyroMag

fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean..: Mean value

std..: Standard deviation

mad..: Median absolute deviation 

max..: Largest value in array

min..: Smallest value in array

sma..: Signal magnitude area

energy..: Energy measure. Sum of the squares divided by the number of values. 

iqr..: Interquartile range 

entropy..: Signal entropy

arCoeff..: Autorregresion coefficients with Burg order equal to 4

correlation..: correlation coefficient between two signals

maxInds: index of the frequency component with largest magnitude

meanFreq..: Weighted average of the frequency components to obtain a mean frequency

skewness..: skewness of the frequency domain signal 

kurtosis..: kurtosis of the frequency domain signal 

bandsEnergy..: Energy of a frequency interval within the 64 bins of the FFT of each window.

angle..: Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle.. variable:

gravityMean

tBodyAccMean

tBodyAccJerkMean

tBodyGyroMean

tBodyGyroJerkMean

# Modifications
The names of the original data were updated to be valid R names.  This meant replacing the () with .. (as has been done already above). the dash '-' character was also replace by '.' as it too is not a valid name in R.

The internal table created by run_analysis.R puts the data into a unified and tidy state.  It adds these columns:

subject - the number of the subject

activity - the activity the test was carried out on

It also removes all but the std and mean columns.

##Tidy.txt
This is the summary data.  It's columns are:

subject - the number of the subject under test

activity - the activity the test was carried out on

the std and mean columns from above - The values are the mean values of all such tests for that subject.



