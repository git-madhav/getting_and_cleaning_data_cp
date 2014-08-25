# Code Book : Human Activity Recognition Using Smartphones Dataset #

## Group Averages of mean and standard deviation values for each subject and activity ##

### Version 1.0 ###

### Raw data set reference ###

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

### Reference: ###

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.

Smartlab - Non Linear Complex Systems Laboratory

DITEN - Università degli Studi di Genova.

Via Opera Pia 11A, I-16145, Genoa, Italy.

activityrecognition@smartlab.ws

www.smartlab.ws

### Experimental and calculation description ###

```

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor accelerometer signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' in original data provided at reference for more details.

The variables selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz.  Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.  Similarly, the accelerometer signal was then separated into body and gravity accelerometer signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for each pattern:
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

```


### Dataset description ###

Data set represents group averages of mean and standard deviation for each subject (volunteer) and activity as mentioned in experimental description.

This data set is obtained from original raw data downloaded from web at :

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Run the script : run_analysis.R in R console or R studio to obtain the tidy
data set `` average_tidy_data.txt. ``


### Dataset variable description ###


Variable Name | Variable | Values or Explanation
------------- | -------- | ---------------------
subject | Volunteer ID. | 30 volunteers participated. Values range from 1 to 30.
activity | Activity for which measurement is taken | WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
avg_tBodyAcc-mean-X | Group Average of estimated mean of Accelerometer (Body) Signal in X direction | Average is per volunter and activity. Measured in time domain.
avg_tBodyAcc-mean-Y | Group Average of estimated mean of Accelerometer (Body) Signal in Y direction | Average is per volunter and activity. Measured in time domain.
avg_tBodyAcc-mean-Z | Group Average of estimated mean of Accelerometer (Body) Signal in Z direction | Average is per volunter and activity. Measured in time domain.
avg_tBodyAcc-std-X  | Group Average of estimated standard deviation of Accelerometer (Body) Signal in X direction | Average is per volunter and activity. Measured in time domain.
avg_tBodyAcc-std-Y  | Group Average of estimated standard deviation of Accelerometer (Body) Signal in Y direction | Average is per volunter and activity. Measured in time domain.
avg_tBodyAcc-std-Z  | Group Average of estimated standard deviation of Accelerometer (Body) Signal in Z direction | Average is per volunter and activity. Measured in time domain.
avg_tGravityAcc-mean-X  | Group Average of estimated mean of Accelerometer (Gravity) Signal in X direction | Average is per volunter and activity. Measured in time domain.
avg_tGravityAcc-mean-Y  | Group Average of estimated mean of Accelerometer (Gravity) Signal in Y direction | Average is per volunter and activity. Measured in time domain.
avg_tGravityAcc-mean-Z  | Group Average of estimated mean of Accelerometer (Gravity) Signal in Z direction | Average is per volunter and activity. Measured in time domain.
avg_tGravityAcc-std-X  | Group Average of estimated standard deviation of Accelerometer (Gravity) Signal in X direction | Average is per volunter and activity. Measured in time domain.
avg_tGravityAcc-std-Y  | Group Average of estimated standard deviation of Accelerometer (Gravity) Signal in X direction | Average is per volunter and activity. Measured in time domain.
avg_tGravityAcc-std-Z  | Group Average of estimated standard deviation of Accelerometer (Gravity) Signal in X direction | Average is per volunter and activity. Measured in time domain.
avg_tBodyAccJerk-mean-X | Group Average of estimated mean of Accelerometer (Body) Jerk Signal in X direction | Average is per volunter and activity. Jerk signals are calculated from linear acceleration and angular velocity. Measured in time domain.
avg_tBodyAccJerk-mean-Y | Group Average of estimated mean of Accelerometer (Body) Jerk Signal in Y direction | Average is per volunter and activity. Jerk signals are calculated from linear acceleration and angular velocity. Measured in time domain.
avg_tBodyAccJerk-mean-Z | Group Average of estimated mean of Accelerometer (Body) Jerk Signal in Z direction | Average is per volunter and activity. Jerk signals are calculated from linear acceleration and angular velocity. Measured in time domain.
avg_tBodyAccJerk-std-X  | Group Average of estimated standard deviation of Accelerometer (Body) Jerk Signal in X direction | Average is per volunter and activity. Jerk signals are calculated from linear acceleration and angular velocity. Measured in time domain.
avg_tBodyAccJerk-std-Y  | Group Average of estimated standard deviation of Accelerometer (Body) Jerk Signal in Y direction | Average is per volunter and activity. Jerk signals are calculated from linear acceleration and angular velocity.  Measured in time domain.
avg_tBodyAccJerk-std-Z  | Group Average of estimated standard deviation of Accelerometer (Body) Signal in Z direction | Average is per volunter and activity. Jerk signals are calculated from linear acceleration and angular velocity. Measured in time domain.
avg_tBodyGyro-mean-X  | Group Average of estimated mean of Gyroscope (Body) Signal in X direction | Average is per volunter and activity. Measured in time domain.
avg_tBodyGyro-mean-Y  | Group Average of estimated mean of Gyroscope (Body) Signal in Y direction | Average is per volunter and activity. Measured in time domain.
avg_tBodyGyro-mean-Z  | Group Average of estimated mean of Gyroscope (Body) Signal in Z direction | Average is per volunter and activity. Measured in time domain.
avg_tBodyGyro-std-X   | Group Average of estimated standard deviation of Gyroscope (Body) Signal in X direction | Average is per volunter and activity. Measured in time domain.
avg_tBodyGyro-std-Y   | Group Average of estimated standard deviation of Gyroscope (Body) Signal in X direction | Average is per volunter and activity. Measured in time domain.
avg_tBodyGyro-std-Z   | Group Average of estimated standard deviation of Gyroscope (Body) Signal in X direction | Average is per volunter and activity. Measured in time domain.
avg_tBodyGyroJerk-mean-X  | Group Average of estimated mean of Gyroscope (Body) Jerk Signal in X direction | Average is per volunter and activity. Jerk signals are calculated from linear acceleration and angular velocity. Measured in time domain.
avg_tBodyGyroJerk-mean-Y  | Group Average of estimated mean of Gyroscope (Body) Jerk Signal in Y direction | Average is per volunter and activity. Jerk signals are calculated from linear acceleration and angular velocity Measured in time domain.
avg_tBodyGyroJerk-mean-Z  | Group Average of estimated mean of Gyroscope (Body) Jerk Signal in Z direction | Average is per volunter and activity. Jerk signals are calculated from linear acceleration and angular velocity. Measured in time domain.
avg_tBodyGyroJerk-std-X   | Group Average of estimated standard deviation of Gyroscope (Body) Jerk Signal in X direction | Average is per volunter and activity. Jerk signals are calculated from linear acceleration and angular velocity. Measured in time domain.
avg_tBodyGyroJerk-std-Y   | Group Average of estimated standard deviation of Gyroscope (Body) Jerk Signal in Y direction | Average is per volunter and activity. Jerk signals are calculated from linear acceleration and angular velocity. Measured in time domain.
avg_tBodyGyroJerk-std-Z   | Group Average of estimated standard deviation of Gyroscope (Body) Jerk Signal in Z direction | Average is per volunter and activity. Jerk signals are calculated from linear acceleration and angular velocity. Measured in time domain.
avg_tBodyAccMag-mean | Group Average of estimated mean of Accelerometer (Body) Signal magnitude | magnitude of these signals is calculated using the Euclidean norm.  Measured in time domain.
avg_tBodyAccMag-std  | Group Average of estimated standard deviation of Accelerometer (Body) Signal magnitude | magnitude of these signals is calculated using the Euclidean norm. Measured in time domain.
avg_tGravityAccMag-mean  | Group Average of estimated mean of Accelerometer (Gravity) Signal magnitude | magnitude of these signals is calculated using the Euclidean norm. Measured in time domain.
avg_tGravityAccMag-std   | Group Average of estimated standard deviation of Accelerometer (Gravity) Signal magnitude | magnitude of these signals is calculated using the Euclidean norm. Measured in time domain.
avg_tBodyAccJerkMag-mean | Group Average of estimated mean of Accelerometer (Body) Jerk Signal magnitude | magnitude of these signals is calculated using the Euclidean norm. Measured in time domain.
avg_tBodyAccJerkMag-std  | Group Average of estimated standard deviation of Accelerometer (Body) Jerk Signal magnitude | magnitude of these signals is calculated using the Euclidean norm.  Measured in time domain.
avg_tBodyGyroMag-mean  | Group Average of estimated mean of Gyroscope (Body) Signal magnitude | magnitude of these signals is calculated using the Euclidean norm. Measured in time domain.
avg_tBodyGyroMag-std   | Group Average of estimated standard deviation of Gyroscope (Body) Signal magnitude | magnitude of these signals is calculated using the Euclidean norm. Measured in time domain.
avg_tBodyGyroJerkMag-mean | Group Average of estimated mean of Gyroscope (Body) Jerk Signal magnitude | magnitude of these signals is calculated using the Euclidean norm. Measured in time domain.
avg_tBodyGyroJerkMag-std  | Group Average of estimated standard deviation of Gyroscope (Body) Jerk Signal magnitude | magnitude of these signals is calculated using the Euclidean norm. Measured in time domain.
avg_fBodyAcc-mean-X  | Group Average of estimated mean of Accelerometer (Body) Signal in X direction | Average is per volunter and activity. Measured in frequency domain using FFT analysis of time domain signals.
avg_fBodyAcc-mean-Y  | Group Average of estimated mean of Accelerometer (Body) Signal in Y direction | Average is per volunter and activity. Measured in frequency domain using FFT analysis of time domain signals.
avg_fBodyAcc-mean-Z  | Group Average of estimated mean of Accelerometer (Body) Signal in Z direction | Average is per volunter and activity. Measured in frequency domain using FFT analysis of time domain signals.
avg_fBodyAcc-std-X   | Group Average of estimated standard deviation of Accelerometer (Body) Signal in X direction | Average is per volunter and activity. Measured in frequency domain using FFT analysis of time domain signals.
avg_fBodyAcc-std-Y   | Group Average of estimated standard deviation of Accelerometer (Body) Signal in Y direction | Average is per volunter and activity. Measured in frequency domain using FFT analysis of time domain signals.
avg_fBodyAcc-std-Z   | Group Average of estimated standard deviation of Accelerometer (Body) Signal in Z direction | Average is per volunter and activity. Measured in frequency domain using FFT analysis of time domain signals.
avg_fBodyAcc-meanFreq-X  | Group Average of estimated mean frequency of Accelerometer (Body) Signal in X direction | Average is per volunter and activity. Measured in frequency domain using FFT analysis of time domain signals. Weighted average of the frequency components to obtain a mean frequency.
avg_fBodyAcc-meanFreq-Y  | Group Average of estimated mean frequency of Accelerometer (Body) Signal in Y direction | Average is per volunter and activity. Measured in frequency domain using FFT analysis of time domain signals. Weighted average of the frequency components to obtain a mean frequency.
avg_fBodyAcc-meanFreq-Z  | Group Average of estimated mean frequency of Accelerometer (Body) Signal in Z direction | Average is per volunter and activity. Measured in frequency domain using FFT analysis of time domain signals. Weighted average of the frequency components to obtain a mean frequency.
avg_fBodyAccJerk-mean-X  | Group Average of estimated mean of Accelerometer (Body) Jerk Signal in X direction | Average is per volunter and activity. Jerk signals are calculated from linear acceleration and angular velocity. Measured in frequency domain using FFT analysis of time domain signals.
avg_fBodyAccJerk-mean-Y  | Group Average of estimated mean of Accelerometer (Body) Jerk Signal in Y direction | Average is per volunter and activity. Jerk signals are calculated from linear acceleration and angular velocity. Measured in frequency domain using FFT analysis of time domain signals.
avg_fBodyAccJerk-mean-Z  | Group Average of estimated mean of Accelerometer (Body) Jerk Signal in Z direction | Average is per volunter and activity. Jerk signals are calculated from linear acceleration and angular velocity. Measured in frequency domain using FFT analysis of time domain signals.
avg_fBodyAccJerk-std-X   | Group Average of estimated standard deviation of Accelerometer (Body) Jerk Signal in X direction | Average is per volunter and activity. Jerk signals are calculated from linear acceleration and angular velocity. Measured in frequency domain using FFT analysis of time domain signals.
avg_fBodyAccJerk-std-Y   | Group Average of estimated standard deviation of Accelerometer (Body) Jerk Signal in Y direction | Average is per volunter and activity. Jerk signals are calculated from linear acceleration and angular velocity. Measured in frequency domain using FFT analysis of time domain signals.
avg_fBodyAccJerk-std-Z   | Group Average of estimated standard deviation of Accelerometer (Body) Jerk Signal in Z direction | Average is per volunter and activity. Jerk signals are calculated from linear acceleration and angular velocity. Measured in frequency domain using FFT analysis of time domain signals.
avg_fBodyAccJerk-meanFreq-X  | Group Average of estimated mean frequency of Accelerometer (Body) Jerk Signal in X direction | Average is per volunter and activity. Jerk signals are calculated from linear acceleration and angular velocity. Measured in frequency domain using FFT analysis of time domain signals. Weighted average of the frequency components to obtain a mean frequency.
avg_fBodyAccJerk-meanFreq-Y  | Group Average of estimated mean frequency of Accelerometer (Body) Jerk Signal in Y direction | Average is per volunter and activity. Jerk signals are calculated from linear acceleration and angular velocity. Measured in frequency domain using FFT analysis of time domain signals. Weighted average of the frequency components to obtain a mean frequency.
avg_fBodyAccJerk-meanFreq-Z  | Group Average of estimated mean frequency of Accelerometer (Body) Jerk Signal in Z direction | Average is per volunter and activity. Jerk signals are calculated from linear acceleration and angular velocity. Measured in frequency domain using FFT analysis of time domain signals. Weighted average of the frequency components to obtain a mean frequency.
avg_fBodyGyro-mean-X  | Group Average of estimated mean of Gyroscope (Body) Signal in X direction | Average is per volunter and activity. Measured in frequency domain using FFT analysis of time domain signals.
avg_fBodyGyro-mean-Y  | Group Average of estimated mean of Gyroscope (Body) Signal in Y direction | Average is per volunter and activity. Measured in frequency domain using FFT analysis of time domain signals.
avg_fBodyGyro-mean-Z  | Group Average of estimated mean of Gyroscope (Body) Signal in Z direction | Average is per volunter and activity. Measured in frequency domain using FFT analysis of time domain signals.
avg_fBodyGyro-std-X   | Group Average of estimated standard deviation of Gyroscope (Body) Signal in X direction | Average is per volunter and activity. Measured in frequency domain using FFT analysis of time domain signals.
avg_fBodyGyro-std-Y   | Group Average of estimated standard deviation of Gyroscope (Body) Signal in Y direction | Average is per volunter and activity. Measured in frequency domain using FFT analysis of time domain signals.
avg_fBodyGyro-std-Z   | Group Average of estimated standard deviation of Gyroscope (Body) Signal in Z direction | Average is per volunter and activity. Measured in frequency domain using FFT analysis of time domain signals.
avg_fBodyGyro-meanFreq-X  | Group Average of estimated mean frequency of Gyroscope (Body) Signal in X direction | Average is per volunter and activity. Measured in frequency domain using FFT analysis of time domain signals. Weighted average of the frequency components to obtain a mean frequency.
avg_fBodyGyro-meanFreq-Y  | Group Average of estimated mean frequency of Gyroscope (Body) Signal in Y direction | Average is per volunter and activity. Measured in frequency domain using FFT analysis of time domain signals. Weighted average of the frequency components to obtain a mean frequency.
avg_fBodyGyro-meanFreq-Z  | Group Average of estimated mean frequency of Gyroscope (Body) Signal in Z direction | Average is per volunter and activity. Measured in frequency domain using FFT analysis of time domain signals. Weighted average of the frequency components to obtain a mean frequency.
avg_fBodyAccMag-mean  | Group Average of estimated mean of Accelerometer (Body) Signal magnitude | magnitude of these signals is calculated using the Euclidean norm. Measured in frequency domain using FFT analysis of time domain signals.
avg_fBodyAccMag-std   | Group Average of estimated standard deviation of Accelerometer (Body) Signal magnitude | magnitude of these signals is calculated using the Euclidean norm. Measured in frequency domain using FFT analysis of time domain signals.
avg_fBodyAccMag-meanFreq
avg_fBodyBodyAccJerkMag-mean  | Group Average of estimated mean of Accelerometer (Body) Jerk Signal magnitude | magnitude of these signals is calculated using the Euclidean norm. Measured in frequency domain using FFT analysis of time domain signals.
avg_fBodyBodyAccJerkMag-std   | Group Average of estimated standard deviation of Accelerometer (Body) Jerk Signal magnitude | magnitude of these signals is calculated using the Euclidean norm. Measured in frequency domain using FFT analysis of time domain signals.
avg_fBodyBodyAccJerkMag-meanFreq
avg_fBodyBodyGyroMag-mean  | Group Average of estimated mean of Gyroscope (Body) Signal magnitude | magnitude of these signals is calculated using the Euclidean norm. Measured in frequency domain using FFT analysis of time domain signals.
avg_fBodyBodyGyroMag-std   | Group Average of estimated standard deviation of Gyroscope (Body) Signal magnitude | magnitude of these signals is calculated using the Euclidean norm. Measured in frequency domain using FFT analysis of time domain signals.
avg_fBodyBodyGyroMag-meanFreq  | Group Average of estimated mean frequency of Gyroscope (Body) Signal magnitude.  | magnitude of these signals is calculated using the Euclidean norm. Measured in frequency domain using FFT analysis of time domain signals. Weighted average of the frequency components to obtain a mean frequency.
avg_fBodyBodyGyroJerkMag-mean  | Group Average of estimated mean of Gyroscope (Body) Jerk Signal magnitude | magnitude of these signals is calculated using the Euclidean norm. Measured in frequency domain using FFT analysis of time domain signals.
avg_fBodyBodyGyroJerkMag-std   | Group Average of estimated standard deviation of Gyroscope (Body) Jerk Signal magnitude | magnitude of these signals is calculated using the Euclidean norm. Measured in frequency domain using FFT analysis of time domain signals.
avg_fBodyBodyGyroJerkMag-meanFreq


