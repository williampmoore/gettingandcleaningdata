## Function expects address to point to UCI HAR Dataset top directory
run_analysis <- function(address)
{
  initialDirectory <- getwd();
  setwd(address);
  
  ## Get the test and training data
  trainingData <- LoadData("train");
  testData <- LoadData("test");
  
  ## Bind the rows of the test and training data
  output <- rbind(testData, trainingData);
  
  setwd(initialDirectory);
  
  ## Return the bound data
  return(output);
}

## Load data takes a directory name ("test", or "train") and returns a table containing
## activity type, subject number, mean and standard deviation data.
LoadData <- function(directory)
{
  initialDirectory <- getwd();
  setwd(directory);
  
  ## Get the data from the activity_labels, y_... subject_..., and X_... files
  labelSet <- LoadLabelSet(directory);
  subjectSet <- LoadSubjectSet(directory);
  dataSet <- LoadDataSet(directory);
  
  ## Bind the collumns
  output <- cbind(labelSet, subjectSet, dataSet);
  
  setwd(initialDirectory);
  
  ## Return the bound data
  return(output);
}

## Returns the data set for the mean and std dev columns
LoadDataSet <- function(directory)
{
  ## List the row numbers for the mean and standard deviation rows
  meanRows <- c(1,2,3,41,42,43,81,82,83,121,122,123,161,162,163,201,214,227,240,253,266,267,268,345,346,347,424,435,436,503,516,529,542);
  stdevRows <- c(4,5,6,44,45,46,84,85,86,124,125,126,164,165,166,202,215,228,241,254,269,270,271,348,349,350,427,428,429,504,517,530,543);
  rows <- c(meanRows, stdevRows);
  
  ## Get the column names
  colLabelFile <- "../features.txt";
  colLabels <- read.table(colLabelFile)[,2];
  
  ## Read the data file
  dataFile <- paste0("X_", directory, ".txt", collapse="");
  dataSet <- read.table(dataFile, col.names = colLabels);
  
  ## Return the subset of the data (subset by mean and stddev rows)
  return(dataSet[rows]);
}

## Returns the activity labels for each row
LoadLabelSet <- function(directory)
{
  ## Load the activity labels
  activityLabelsFile <- "../activity_labels.txt";
  activityLablesColNames <- c("ActivityID", "Activity")
  activityLabels <- read.table(activityLabelsFile, col.names = activityLablesColNames);
  
  ## Load and index the activity data
  labelFile <- paste0("y_", directory, ".txt", collapse="");
  labels <- read.table(labelFile, col.names = c("ActivityID"));
  labels$Position  <- 1:nrow(labels);
  
  ## Merge the activity data with the labels, preserving the order of the data
  labelSet <- merge(x = labels, y = activityLabels, by = "ActivityID", all.x = TRUE)
  orderedLables <- labelSet[order(labelSet$Position),]
  
  ## Return the indexed labels
  return(orderedLables[3]);
}

## Returns the subjet data
LoadSubjectSet <- function(directory)
{
  subjectFile <- paste0("subject_", directory, ".txt", collapse="");
  subjectSet <- read.table(subjectFile, col.names = c("SubjectNumber"));
  
  return(subjectSet);
}