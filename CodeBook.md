### Codebook.md file


The script run_analysis.R performs the following steps in transforming the data:

- reads the unzipped file into the data frame - one frame for each data type measurement, as well as for activity list and features. 
- merges train and test data sets into one frame alldata, and adds/joines in the aactivity description.
- loads feature names and uses it to set descriptive names for the main data set in alldata data frame
- select subset for mean and standard deviation columns mean_stdev_df 
- expands parts of the column names with the full attribute words - like replacing 'f' with 'frequency' at the beginning of the selected column names
- aggregates alldata data frame into tidy_df  

The final tidy data frame columns are:

names(tidy_df)
 [1] "subject_id"                                     "activity_name"                                  "timeBodyAccelerometer-mean()-X"                 "timeBodyAccelerometer-mean()-Y"                
 [5] "timeBodyAccelerometer-mean()-Z"                 "timeGravityAccelerometer-mean()-X"              "timeGravityAccelerometer-mean()-Y"              "timeGravityAccelerometer-mean()-Z"             
 [9] "timeBodyAccelerometerJerk-mean()-X"             "timeBodyAccelerometerJerk-mean()-Y"             "timeBodyAccelerometerJerk-mean()-Z"             "timeBodyGyroscope-mean()-X"                    
[13] "timeBodyGyroscope-mean()-Y"                     "timeBodyGyroscope-mean()-Z"                     "timeBodyGyroscopeJerk-mean()-X"                 "timeBodyGyroscopeJerk-mean()-Y"                
[17] "timeBodyGyroscopeJerk-mean()-Z"                 "timeBodyAccelerometerMagnitude-mean()"          "timeGravityAccelerometerMagnitude-mean()"       "timeBodyAccelerometerJerkMagnitude-mean()"     
[21] "timeBodyGyroscopeMagnitude-mean()"              "timeBodyGyroscopeJerkMagnitude-mean()"          "frequencyBodyAccelerometer-mean()-X"            "frequencyBodyAccelerometer-mean()-Y"           
[25] "frequencyBodyAccelerometer-mean()-Z"            "frequencyBodyAccelerometerJerk-mean()-X"        "frequencyBodyAccelerometerJerk-mean()-Y"        "frequencyBodyAccelerometerJerk-mean()-Z"       
[29] "frequencyBodyGyroscope-mean()-X"                "frequencyBodyGyroscope-mean()-Y"                "frequencyBodyGyroscope-mean()-Z"                "frequencyBodyAccelerometerMagnitude-mean()"    
[33] "frequencyBodyAccelerometerJerkMagnitude-mean()" "frequencyBodyGyroscopeMagnitude-mean()"         "frequencyBodyGyroscopeJerkMagnitude-mean()"     "timeBodyAccelerometer-std()-X"                 
[37] "timeBodyAccelerometer-std()-Y"                  "timeBodyAccelerometer-std()-Z"                  "timeGravityAccelerometer-std()-X"               "timeGravityAccelerometer-std()-Y"              
[41] "timeGravityAccelerometer-std()-Z"               "timeBodyAccelerometerJerk-std()-X"              "timeBodyAccelerometerJerk-std()-Y"              "timeBodyAccelerometerJerk-std()-Z"             
[45] "timeBodyGyroscope-std()-X"                      "timeBodyGyroscope-std()-Y"                      "timeBodyGyroscope-std()-Z"                      "timeBodyGyroscopeJerk-std()-X"                 
[49] "timeBodyGyroscopeJerk-std()-Y"                  "timeBodyGyroscopeJerk-std()-Z"                  "timeBodyAccelerometerMagnitude-std()"           "timeGravityAccelerometerMagnitude-std()"       
[53] "timeBodyAccelerometerJerkMagnitude-std()"       "timeBodyGyroscopeMagnitude-std()"               "timeBodyGyroscopeJerkMagnitude-std()"           "frequencyBodyAccelerometer-std()-X"            
[57] "frequencyBodyAccelerometer-std()-Y"             "frequencyBodyAccelerometer-std()-Z"             "frequencyBodyAccelerometerJerk-std()-X"         "frequencyBodyAccelerometerJerk-std()-Y"        
[61] "frequencyBodyAccelerometerJerk-std()-Z"         "frequencyBodyGyroscope-std()-X"                 "frequencyBodyGyroscope-std()-Y"                 "frequencyBodyGyroscope-std()-Z"                
[65] "frequencyBodyAccelerometerMagnitude-std()"      "frequencyBodyAccelerometerJerkMagnitude-std()"  "frequencyBodyGyroscopeMagnitude-std()"          "frequencyBodyGyroscopeJerkMagnitude-std()" 


