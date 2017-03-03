# Codebook for run_analysis.R output file

For each unique combination of volunteer and activity type, the average of 64 parameters is calculated and recorded in the project_ouput.txt file by run_analysis.R.  To read the file into R, the command read.table("project_output.txt", header = TRUE) should be used to preserve the column names of the data frame.

The following variables are in the output file:

subject_id: An integer between 1 and 30 identifying the unique volunteer whose statistics reside in the row

activity_type: A factor indicating which of 6 activity types the statistics in the row correspond to

tBodyAcc_mean_[X/Y/Z]: mean of the mean time domain body acceleration measurements in each of three Cartesian dimensions

tBodyAcc_std_[X/Y/Z]: mean of the standard deviation of the time domain body acceleration measurements in each of three Cartesian dimensions

tGravityAcc_mean_[X/Y/Z]: mean of the mean time domain gravity acceleration measurements in each of three Cartesian dimensions

tGravityAcc_std_[X/Y/Z]: mean of the standard deviation of the time domain gravity acceleration measurements in each of three Cartesian dimensions

tBodyAccJerk_mean_[X/Y/Z]: mean of the mean time domain body jerk measurements in each of three Cartesian dimensions

tBodyAccJerk_std_[X/Y/Z]: mean of the standard deviation of the time domain body jerk measurements in each of three Cartesian dimensions

tBodyGyro_mean_[X/Y/Z]: mean of the mean time domain body angular acceleration measurements in each of three Cartesian dimensions

tBodyGyro_std_[X/Y/Z]: mean of the standard deviation of the time domain body angular acceleration measurements in each of three Cartesian dimensions

tBodyGyroJerk_mean_[X/Y/Z]: mean of the mean time domain body angular jerk measurements in each of three Cartesian dimensions

tBodyGyroJerk_std_[X/Y/Z]: mean of the standard deviation of the time domain body angular jerk measurements in each of three Cartesian dimensions

tBodyAccMag_mean: mean of the mean time domain body acceleration measurements in each of three Cartesian dimensions

tBodyAccMag_std: mean of the standard deviation of the time domain body acceleration measurements in each of three Cartesian dimensions

tGravityAccMag_mean: mean of the mean time domain gravity acceleration measurement magnitude

tGravityAccMag_std: mean of the standard deviation of the time domain gravity acceleration measurement magnitude

tBodyAccJerkMag_mean: mean of the mean time domain body jerk measurement magnitude

tBodyAccJerkMag_std: mean of the standard deviation of the time domain body jerk measurement magnitude

tBodyGyroMag_mean: mean of the mean time domain body angular acceleration measurement magnitude

tBodyGyroMag_std: mean of the standard deviation of the time domain body angular acceleration measurement magnitude

tBodyGyroJerkMag_mean: mean of the mean time domain body angular jerk measurement magnitude

tBodyGyroJerkMag_std: mean of the standard deviation of the time domain body angular jerk measurement magnitude

fBodyAcc_mean_[X/Y/Z]: mean of the mean frequency domain body acceleration measurements in each of three Cartesian dimensions

fBodyAcc_std_[X/Y/Z]: mean of the standard deviation of the time domain body acceleration measurements in each of three Cartesian dimensions

fBodyAccJerk_mean_[X/Y/Z]: mean of the mean frequency domain body jerk measurements in each of three Cartesian dimensions

fBodyAccJerk_std_[X/Y/Z]: mean of the standard deviation of the frequency domain body jerk measurements in each of three Cartesian dimensions

fBodyGyro_mean_[X/Y/Z]: mean of the mean frequency domain body angular acceleration measurements in each of three Cartesian dimensions

fBodyGyro_std_[X/Y/Z]: mean of the standard deviation of the frequency domain body angular acceleration measurements in each of three Cartesian dimensions

fBodyGyroJerk_mean_[X/Y/Z]: mean of the mean frequency domain body angular jerk measurements in each of three Cartesian dimensions

fBodyGyroJerk_std_[X/Y/Z]: mean of the standard deviation of the frequency domain body angular jerk measurements in each of three Cartesian dimensions

fBodyAccMag_mean: mean of the mean frequency domain body acceleration measurements in each of three Cartesian dimensions

fBodyAccMag_std: mean of the standard deviation of the frequency domain body acceleration measurements in each of three Cartesian dimensions

fBodyAccJerkMag_mean: mean of the mean frequency domain body jerk measurement magnitude

fBodyAccJerkMag_std: mean of the standard deviation of the frequency domain body jerk measurement magnitude

fBodyGyroMag_mean: mean of the mean frequency domain body angular acceleration measurement magnitude

fBodyGyroMag_std: mean of the standard deviation of the frequency domain body angular acceleration measurement magnitude

fBodyGyroJerkMag_mean: mean of the mean frequency domain body angular jerk measurement magnitude

fBodyGyroJerkMag_std: mean of the standard deviation of the frequency domain body angular jerk measurement magnitude
