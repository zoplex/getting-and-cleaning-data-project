### Codebook.md file


The script run_analysis.R performs the following steps in transforming the data:

- reads the unzipped file into the data frame - one frame for each data type measurement, as well as for activity list and features. 
- merges train and test data sets into one frame alldata, and adds/joines in the aactivity description.
- loads feature names and uses it to set descriptive names for the main data set in alldata data frame
- select subset for mean and standard deviation columns mean_stdev_df 
- expands parts of the column names with the full attribute words - like replacing 'f' with 'frequency' at the beginning of the selected column names
- aggregates alldata data frame into tidy_df  

The final tidy data frame columns are:

subject_id
activity_name
timeBodyAccelerometer-mean()-X
timeBodyAccelerometer-mean()-Y
timeBodyAccelerometer-mean()-Z
timeGravityAccelerometer-mean()-X
timeGravityAccelerometer-mean()-Y
timeGravityAccelerometer-mean()-Z
timeBodyAccelerometerJerk-mean()-X
timeBodyAccelerometerJerk-mean()-Y
timeBodyAccelerometerJerk-mean()-Z
timeBodyGyroscope-mean()-X
timeBodyGyroscope-mean()-Y
timeBodyGyroscope-mean()-Z
timeBodyGyroscopeJerk-mean()-X
timeBodyGyroscopeJerk-mean()-Y
timeBodyGyroscopeJerk-mean()-Z
timeBodyAccelerometerMagnitude-mean()
timeGravityAccelerometerMagnitude-mean()
timeBodyAccelerometerJerkMagnitude-mean()
timeBodyGyroscopeMagnitude-mean()
timeBodyGyroscopeJerkMagnitude-mean()
frequencyBodyAccelerometer-mean()-X
frequencyBodyAccelerometer-mean()-Y
frequencyBodyAccelerometer-mean()-Z
frequencyBodyAccelerometerJerk-mean()-X
frequencyBodyAccelerometerJerk-mean()-Y
frequencyBodyAccelerometerJerk-mean()-Z
frequencyBodyGyroscope-mean()-X
frequencyBodyGyroscope-mean()-Y
frequencyBodyGyroscope-mean()-Z
frequencyBodyAccelerometerMagnitude-mean()
frequencyBodyAccelerometerJerkMagnitude-mean()
frequencyBodyGyroscopeMagnitude-mean()
frequencyBodyGyroscopeJerkMagnitude-mean()
timeBodyAccelerometer-std()-X
timeBodyAccelerometer-std()-Y
timeBodyAccelerometer-std()-Z
timeGravityAccelerometer-std()-X
timeGravityAccelerometer-std()-Y
timeGravityAccelerometer-std()-Z
timeBodyAccelerometerJerk-std()-X
timeBodyAccelerometerJerk-std()-Y
timeBodyAccelerometerJerk-std()-Z
timeBodyGyroscope-std()-X
timeBodyGyroscope-std()-Y
timeBodyGyroscope-std()-Z
timeBodyGyroscopeJerk-std()-X
timeBodyGyroscopeJerk-std()-Y
timeBodyGyroscopeJerk-std()-Z
timeBodyAccelerometerMagnitude-std()
timeGravityAccelerometerMagnitude-std()
timeBodyAccelerometerJerkMagnitude-std()
timeBodyGyroscopeMagnitude-std()
timeBodyGyroscopeJerkMagnitude-std()
frequencyBodyAccelerometer-std()-X
frequencyBodyAccelerometer-std()-Y
frequencyBodyAccelerometer-std()-Z
frequencyBodyAccelerometerJerk-std()-X
frequencyBodyAccelerometerJerk-std()-Y
frequencyBodyAccelerometerJerk-std()-Z
frequencyBodyGyroscope-std()-X
frequencyBodyGyroscope-std()-Y
frequencyBodyGyroscope-std()-Z
frequencyBodyAccelerometerMagnitude-std()
frequencyBodyAccelerometerJerkMagnitude-std()
frequencyBodyGyroscopeMagnitude-std()
frequencyBodyGyroscopeJerkMagnitude-std()



