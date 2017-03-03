run_analysis = function(){
  
  # Read in raw data, along with subject and activity IDs
  test_data = matrix(scan("UCI HAR Dataset/test/X_test.txt"), ncol = 561, byrow = TRUE)
  test_subjects = matrix(scan("UCI HAR Dataset/test/subject_test.txt"), ncol = 1)
  test_activities = matrix(scan("UCI HAR Dataset/test/Y_test.txt"), ncol = 1)
  training_data = matrix(scan("UCI HAR Dataset/train/X_train.txt"), ncol = 561, byrow = TRUE)
  training_subjects = matrix(scan("UCI HAR Dataset/train/subject_train.txt"), ncol = 1)
  training_activities = matrix(scan("UCI HAR Dataset/train/Y_train.txt"), ncol = 1)
  
  # Read in variable names and pull out column numbers and names for means and stds
  variable_names = read.table("UCI HAR Dataset/features.txt")
  applicable_variables = grep("mean\\(\\)|std\\(\\)", as.character(variable_names$V2))
  applicable_variable_names = as.character(variable_names$V2)[applicable_variables]
  
  # Remove parens and replace dashes with underscores to make the variable names more readable
  applicable_variable_names = gsub("\\(", "", applicable_variable_names)
  applicable_variable_names = gsub("\\)", "", applicable_variable_names)
  applicable_variable_names = gsub("-", "_", applicable_variable_names)
  
  # Concatenate the test and training data, pulling out just the mean and std columns
  data = rbind(test_data[, applicable_variables], training_data[, applicable_variables])
  subjects = rbind(test_subjects, training_subjects)
  activities = rbind(test_activities, training_activities)

  # Name the columns of the data matrix
  colnames(data) = applicable_variable_names
  
  # Change the activity ID into a factor
  activities_factor = factor(activities, labels = c("Walking", "Walking_Upstairs", "Walking_Downstairs", "Sitting", "Standing", "Laying"))
  
  # Create big data frame
  final_data = data.frame(subject_id = subjects, activity_type = activities_factor, data)
  
  # Use aggregate to calculate statistics on each subject/activity combination
  aggregated_data = aggregate(final_data[, 3:66], by = list("subject_id" = test$subject_id, "activity_type" = test$activity_type), mean)
  write.table(aggregated_data, file = "project_output.txt", row.names = FALSE)
  aggregated_data
}