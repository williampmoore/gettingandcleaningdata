Data set cleanser for https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The function run_analysis is the only function you need to run to clean the data from the above URL.
This function takes a string argument which should point to the directory of the unzipped directory above.

Function run_analysis loads and binds the test and training data using LoadData function.

Function LoadData takes a directory name ("test" or "train") as its argument, and will loads
and join the activity label, subject number, mean and standard deviation data for the respective data.
It uses LoadLabelSet, LoadSubjectSet and LoadDataSet to load the three tables

LoadDataSet takes a directory name <dir> (as above) and returns the mean and standard deviation columns
and their column names for the data. The data comes from "<dir>/X_<dir>.txt" and the names from "features.txt".

Function LoadLabelSet takes a directory name <dir> (as above) and returns a table of the activity label
from "activity_labels.txt" for each respective row (from "<dir>/y_<dir>.txt").

Function LoadSubjectSet takes a directory name <dir> (as above) and returns a table containing the subject
data from "<dir>/subject_<dir>.txt".