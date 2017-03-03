# run_analysis.R

run_analysis.R is an R script that cleans and organizes data from the Human Activity Recognition Using Smartphones data set.  The data set comprises 561 variables describing smartphone accelerometer and gyro readings, collected thousands of times by 30 volunteers across 6 different types of activities.

The script requires the data set from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip to be unzipped in the working R directory.  It then reads the applicable data from the unzipped files, and performs the following cleaning and analysis:

- Merges the "training" and "test" sets
- Extracts only the recorded mean and standard deviation parameters for each accelerometer and gyro measurement parameter - many other statistical measures are provided in the data set
- Labels the activity factor with descriptive names rather than numerical IDs
- Reads the parameter names from the data set and labels the data frame columns appropriately
- Calculates and stores the mean of each parameter for each unique combination of volunteer and activity type

The output file, project_output.txt, should be read with the command read.table("project_output.txt", header = TRUE) to preserve the column names.