# CodeBook

## Initial Data Set
The initial data set is downloaded from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## This is an version of the data available here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Tidy Data Set:
The tidy data set is created by running the R Script: CleanData(dir) where
dir is a string pointing to the top level directory of the unzipped initial
data set.

The tidy data set contains the training and test data for the activity, subject, mean
and standard deviation data from the initial data set. This is arranged in the following
columns:
 - Activity (string: test/y_test.txt and train/y_train.txt joined with the label from activity_labels.txt)
 - Subject number (int: test/subject_test.txt and train/subject_train.txt)
 - T Body Acceleration Mean; X (numeric: test/X_test.txt and train/X_train.txt: column 1)
 - T Body Acceleration Mean; Y (numeric: test/X_test.txt and train/X_train.txt: column 2)
 - T Body Acceleration Mean; Z (numeric: test/X_test.txt and train/X_train.txt: column 3)
 - T Gravity Acceleration Mean; X (numeric: test/X_test.txt and train/X_train.txt: column 41)
 - T Gravity Acceleration Mean; Y (numeric: test/X_test.txt and train/X_train.txt: column 42)
 - T Gravity Acceleration Mean; Z (numeric: test/X_test.txt and train/X_train.txt: column 43)
 - T Body Acceleration Jerk Mean; X (numeric: test/X_test.txt and train/X_train.txt: column 81)
 - T Body Acceleration Jerk Mean; Y (numeric: test/X_test.txt and train/X_train.txt: column 82)
 - T Body Acceleration Jerk Mean; Z (numeric: test/X_test.txt and train/X_train.txt: column 83)
 - T Body Gyro Mean; X (numeric: test/X_test.txt and train/X_train.txt: column 121)
 - T Body Gyro Mean; Y (numeric: test/X_test.txt and train/X_train.txt: column 122)
 - T Body Gyro Mean; Z (numeric: test/X_test.txt and train/X_train.txt: column 123)
 - T Body Gyro Jerk Mean; X (numeric: test/X_test.txt and train/X_train.txt: column 161)
 - T Body Gyro Jerk Mean; Y (numeric: test/X_test.txt and train/X_train.txt: column 162)
 - T Body Gyro Jerk Mean; Z (numeric: test/X_test.txt and train/X_train.txt: column 163)
 - T Body Acceleration Magnitude Mean (numeric: test/X_test.txt and train/X_train.txt: column 201)
 - T Gravity Acceleration Magnitude Mean (numeric: test/X_test.txt and train/X_train.txt: column 214)
 - T Body Acceleration Jerk Magnitude Mean (numeric: test/X_test.txt and train/X_train.txt: column 227)
 - T Body Gyro Magnitude Mean (numeric: test/X_test.txt and train/X_train.txt: column 240)
 - T Body Gyro Jerk Magnitude Mean (numeric: test/X_test.txt and train/X_train.txt: column 253)
 - F Body Acceleration Mean; X (numeric: test/X_test.txt and train/X_train.txt: column 266)
 - F Body Acceleration Mean; Y (numeric: test/X_test.txt and train/X_train.txt: column 267)
 - F Body Acceleration Mean; Z (numeric: test/X_test.txt and train/X_train.txt: column 268)
 - F Body Acceleration Jerk Mean; X (numeric: test/X_test.txt and train/X_train.txt: column 345)
 - F Body Acceleration Jerk Mean; Y (numeric: test/X_test.txt and train/X_train.txt: column 346)
 - F Body Acceleration Jerk Mean; Z (numeric: test/X_test.txt and train/X_train.txt: column 347)
 - F Body Gyro Mean; X (numeric: test/X_test.txt and train/X_train.txt: column 424)
 - F Body Gyro Mean; Y (numeric: test/X_test.txt and train/X_train.txt: column 425)
 - F Body Gyro Mean; Z (numeric: test/X_test.txt and train/X_train.txt: column 426)
 - F Body Acceleration Magnitude Mean (numeric: test/X_test.txt and train/X_train.txt: column 503)
 - F Body Acceleration Jerk magnitude Mean (numeric: test/X_test.txt and train/X_train.txt: column 516)
 - F Body Gyro Magnitude Mean (numeric: test/X_test.txt and train/X_train.txt: column 529)
 - F Body Gyro Jerk magnitude Mean (numeric: test/X_test.txt and train/X_train.txt: column 542)
 - T Body Acceleration Standard Deviation; X (numeric: test/X_test.txt and train/X_train.txt: column 4)
 - T Body Acceleration Standard Deviation; Y (numeric: test/X_test.txt and train/X_train.txt: column 5)
 - T Body Acceleration Standard Deviation; Z (numeric: test/X_test.txt and train/X_train.txt: column 6)
 - T Gravity Acceleration Standard Deviation; X (numeric: test/X_test.txt and train/X_train.txt: column 44)
 - T Gravity Acceleration Standard Deviation; Y (numeric: test/X_test.txt and train/X_train.txt: column 45)
 - T Gravity Acceleration Standard Deviation; Z (numeric: test/X_test.txt and train/X_train.txt: column 46)
 - T Body Acceleration Jerk Standard Deviation; X (numeric: test/X_test.txt and train/X_train.txt: column 84)
 - T Body Acceleration Jerk Standard Deviation; Y (numeric: test/X_test.txt and train/X_train.txt: column 85)
 - T Body Acceleration Jerk Standard Deviation; Z (numeric: test/X_test.txt and train/X_train.txt: column 86)
 - T Body Gyro Standard Deviation; X (numeric: test/X_test.txt and train/X_train.txt: column 124)
 - T Body Gyro Standard Deviation; Y (numeric: test/X_test.txt and train/X_train.txt: column 125)
 - T Body Gyro Standard Deviation; Z (numeric: test/X_test.txt and train/X_train.txt: column 126)
 - T Body Gyro Jerk Standard Deviation; X (numeric: test/X_test.txt and train/X_train.txt: column 164)
 - T Body Gyro Jerk Standard Deviation; Y (numeric: test/X_test.txt and train/X_train.txt: column 165)
 - T Body Gyro Jerk Standard Deviation; Z (numeric: test/X_test.txt and train/X_train.txt: column 166)
 - T Body Acceleration Magnitude Standard Deviation (numeric: test/X_test.txt and train/X_train.txt: column 202)
 - T Gravity Acceleration Magnitude Standard Deviation (numeric: test/X_test.txt and train/X_train.txt: column 215)
 - T Body Acceleration Jerk Magnitude Standard Deviation (numeric: test/X_test.txt and train/X_train.txt: column 228)
 - T Body Gyro Magnitude Standard Deviation (numeric: test/X_test.txt and train/X_train.txt: column 241)
 - T Body Gyro Jerk Magnitude Standard Deviation (numeric: test/X_test.txt and train/X_train.txt: column 254)
 - F Body Acceleration Standard Deviation; X (numeric: test/X_test.txt and train/X_train.txt: column 269)
 - F Body Acceleration Standard Deviation; Y (numeric: test/X_test.txt and train/X_train.txt: column 270)
 - F Body Acceleration Standard Deviation; Z (numeric: test/X_test.txt and train/X_train.txt: column 271)
 - F Body Acceleration Jerk Standard Deviation; X (numeric: test/X_test.txt and train/X_train.txt: column 348)
 - F Body Acceleration Jerk Standard Deviation; Y (numeric: test/X_test.txt and train/X_train.txt: column 349)
 - F Body Acceleration Jerk Standard Deviation; Z (numeric: test/X_test.txt and train/X_train.txt: column 350)
 - F Body Gyro Standard Deviation; X (numeric: test/X_test.txt and train/X_train.txt: column 427)
 - F Body Gyro Standard Deviation; Y (numeric: test/X_test.txt and train/X_train.txt: column 428)
 - F Body Gyro Standard Deviation; Z (numeric: test/X_test.txt and train/X_train.txt: column 429)
 - F Body Acceleration Magnitude Standard Deviation (numeric: test/X_test.txt and train/X_train.txt: column 504)
 - F Body Acceleration Jerk magnitude Standard Deviation (numeric: test/X_test.txt and train/X_train.txt: column 517)
 - F Body Gyro Magnitude Standard Deviation (numeric: test/X_test.txt and train/X_train.txt: column 530)
 - F Body Gyro Jerk magnitude Standard Deviation (numeric: test/X_test.txt and train/X_train.txt: column 543)
 