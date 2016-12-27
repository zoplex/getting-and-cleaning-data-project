#
# Final Project for the class Getting and Cleaning Data
#
# run_analysis.R
#
#       zoplex  2016/12/18
#
#       Steps needed:
#       
#       1.      Merges the training and the test sets to create one data set.
#       2.      Extracts only the measurements on the mean and standard deviation for each measurement.
#       3.      Uses descriptive activity names to name the activities in the data set
#       4.      Appropriately labels the data set with descriptive variable names.
#       5.      From the data set in step 4, creates a second, independent tidy data set with the 
#               average of each variable for each activity and each subject.
#
#
#
library(data.table)
library(dplyr)

#       common place for unzip dir path
get_unzip_dir_path              <- function() { 
        return ( ".\\unzipdir\\UCI HAR Dataset\\" ) 
}


#       download and unzip the zip file  function - download only once
#
download_unzip         <- function( ) {
        zip_file_path           <- ".\\zip01.zip"
        if ( !file.exists(zip_file_path) ) {
                download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", zip_file_path)
                unzip(zipfile=zip_file_path, exdir=".\\unzipdir")                 
        }
        return ( )
}
#       read activity labels from the file into the data table  function
#``
get_activity_labels             <- function( ) {
        activity_levels_fl      <- paste0( get_unzip_dir_path(), "activity_labels.txt" )
        acl                     <- fread(activity_levels_fl)
        return ( acl )
}
#       read features  from the file into the data table  function
#
get_features                    <- function( ) {
        features_fl             <- paste0( get_unzip_dir_path(), "features.txt" )
        features                <- fread(features_fl)
        return ( features )
}
#       get X_test/train sets functions
get_Xy_set                      <- function( settype, xy ) {
        fname                   <- paste0(get_unzip_dir_path(), settype, "\\", xy, "_", settype, ".txt")
        x_set                   <- fread(fname)
        return ( x_set )
}

get_X_test_set                  <- function() { return ( get_Xy_set("test", "X") ) }
get_X_train_set                 <- function() { return ( get_Xy_set("train", "X") ) }
get_y_test_set                  <- function() { return ( get_Xy_set("test", "y" ) ) }
get_y_train_set                 <- function() { return ( get_Xy_set("train", "y" ) ) }

#       get subject set functions
get_subject_set                 <- function( settype ) {
        fname                   <- paste0(get_unzip_dir_path(), settype, "\\subject_", settype, ".txt")
        subj_set                <- fread(fname)
        return ( subj_set )
}
get_subject_test_set            <- function() { return ( get_subject_set("test") ) }
get_subject_train_set           <- function() { return ( get_subject_set("train") ) }

#       get body measurements functions 
get_measurements_set       <- function( settype, tprefix, tsubtype, tcoord ) {
        fname                   <- paste0(get_unzip_dir_path(), settype, "\\Inertial Signals\\", tprefix, "_", tsubtype, "_", tcoord, "_", settype, ".txt")
        measurement_set         <- fread( fname )
        return( measurement_set )
}
get_bod_acc_x_test_set               <- function() { return (get_measurements_set("test", "body", "acc", "x" )) }
get_bod_acc_y_test_set               <- function() { return (get_measurements_set("test", "body", "acc", "y" )) }
get_bod_acc_z_test_set               <- function() { return (get_measurements_set("test", "body", "acc", "z" )) }
get_bod_gyr_x_test_set               <- function() { return (get_measurements_set("test", "body", "gyro", "x" )) }
get_bod_gyr_y_test_set               <- function() { return (get_measurements_set("test", "body", "gyro", "y" )) }
get_bod_gyr_z_test_set               <- function() { return (get_measurements_set("test", "body", "gyro", "z" )) }
get_tot_acc_x_test_set               <- function() { return (get_measurements_set("test", "total", "acc", "x" )) }
get_tot_acc_y_test_set               <- function() { return (get_measurements_set("test", "total", "acc", "y" )) }
get_tot_acc_z_test_set               <- function() { return (get_measurements_set("test", "total", "acc", "z" )) }
get_bod_acc_x_train_set              <- function() { return (get_measurements_set("train", "body", "acc", "x" )) }
get_bod_acc_y_train_set              <- function() { return (get_measurements_set("train", "body", "acc", "y" )) }
get_bod_acc_z_train_set              <- function() { return (get_measurements_set("train", "body", "acc", "z" )) }
get_bod_gyr_x_train_set              <- function() { return (get_measurements_set("train", "body", "gyro", "x" )) }
get_bod_gyr_y_train_set              <- function() { return (get_measurements_set("train", "body", "gyro", "y" )) }
get_bod_gyr_z_train_set              <- function() { return (get_measurements_set("train", "body", "gyro", "z" )) }
get_tot_acc_x_train_set              <- function() { return (get_measurements_set("train", "total", "acc", "x" )) }
get_tot_acc_y_train_set              <- function() { return (get_measurements_set("train", "total", "acc", "y" )) }
get_tot_acc_z_train_set              <- function() { return (get_measurements_set("train", "total", "acc", "z" )) }






# ----------------------------------- Main code start ------------------------------------------------------------
#
#                       Download zip file and expand it
setwd("C:\\_Zdata\\MachineLearning\\gettingAndCleaningData\\FinalProject")
download_unzip()

#                       load activity list
acl                     <- get_activity_labels()
setnames(acl, c("activity_id", "activity_name" ) )
acl

#                       load features
featl                   <- get_features()
setnames(featl, c("nfeature", "feature_name" ) )
featl

#                       load X/y sets
test_x_set              <- get_X_test_set()
train_x_set             <- get_X_train_set()
test_y_set              <- get_y_test_set()
train_y_set             <- get_y_train_set()

subj_test_set           <- get_subject_test_set()
subj_train_set          <- get_subject_train_set()

bod_acc_x_test_set      <- get_bod_acc_x_test_set()
bod_acc_y_test_set      <- get_bod_acc_y_test_set()
bod_acc_z_test_set      <- get_bod_acc_z_test_set()
bod_gyr_x_test_set      <- get_bod_gyr_x_test_set()
bod_gyr_y_test_set      <- get_bod_gyr_y_test_set()
bod_gyr_z_test_set      <- get_bod_gyr_z_test_set()
tot_acc_x_test_set      <- get_tot_acc_x_test_set()
tot_acc_y_test_set      <- get_tot_acc_y_test_set()
tot_acc_z_test_set      <- get_tot_acc_z_test_set()
bod_acc_x_train_set     <- get_bod_acc_x_train_set()
bod_acc_y_train_set     <- get_bod_acc_y_train_set()
bod_acc_z_train_set     <- get_bod_acc_z_train_set()
bod_gyr_x_train_set     <- get_bod_gyr_x_train_set()
bod_gyr_y_train_set     <- get_bod_gyr_y_train_set()
bod_gyr_z_train_set     <- get_bod_gyr_z_train_set()
tot_acc_x_train_set     <- get_tot_acc_x_train_set()
tot_acc_y_train_set     <- get_tot_acc_y_train_set()
tot_acc_z_train_set     <- get_tot_acc_z_train_set()

cat("all basic data loading completed, tarting data assembly phase ... \n")


cat("all done\n")

all_subjects            <- rbind( subj_test_set, subj_train_set )
all_labels              <- rbind( test_y_set, train_y_set)
alldata                 <- data.frame( subject_id = all_subjects$V1 )
alldata                 <- cbind( alldata, activity_id = all_labels$V1 )
measure_data            <- rbind(test_x_set, train_x_set)
names(measure_data)     <- featl$feature_name
alldata                 <- cbind( alldata, measure_data )

#       mean and std names set - two separate names lists so we get data frame with mean columns first 
#       followed by standard dev column
mean_names              <- grep("mean\\(", featl$feature_name, ignore.case=TRUE, value=TRUE)
stdev_names             <- grep("std\\(", featl$feature_name, ignore.case=TRUE, value=TRUE)
mean_stdev_df           <- alldata[, c("activity_id", "subject_id", mean_names, stdev_names)]

#       expand activity into full descriptive field
desc_df                 <- inner_join(mean_stdev_df,acl)

#       reorder columns and sdrop activity_id column since it is not needed any more
desc_df                 <- desc_df[,c(length(names(desc_df)), c(2:(length(names(desc_df))-1)))]

#       set descriptive variable names using the information provided in the 
#       features_info.txt file:
#
#       "... These time domain signals (prefix 't' to denote time)"     
#               [ACTION]:       replace 't' with time for the beggining of the variable names
#
#       "... Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing 
#       fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag
#       . (Note the 'f' to indicate frequency domain signals). 
#               [ACTION]:       replace 'f' with 'frequency"
#
#               [ACTION]:       replace 'Mag' with 'Magnitude'
#               [ACTION]:       replace 'Gyro' with 'Gyroscope"
#               [CATION]:       replace "Acc" with "Accelerometer"
#
#       also replace BodyBody with one Body only as it seems like typo?
#
better_col_names        <- sub("BodyBody", "Body", names(desc_df))    
better_col_names        <- sub("^t", "time", better_col_names)          # only first 't' in the line
better_col_names        <- sub("^f", "frequency", better_col_names)     # only first 'f' in the line
better_col_names        <- sub("Gyro", "Gyroscope", better_col_names)
better_col_names        <- sub("Acc", "Accelerometer", better_col_names)
better_col_names        <- sub("Mag", "Magnitude", better_col_names)
names(desc_df)          <- better_col_names

#      second, independent tidy data set with the average of each variable for each activity and each subject:
#               agreggate - using dot notation for as there is large number of columns:
data_df_2               <- aggregate( . ~subject_id + activity_name, desc_df, mean)

#               sort by subject, then by activity under it:
data_df_2               <- data_df_2[ order( data_df_2$subject_id, data_df_2$activity_name), ]

#               save to file:
write.table(data_df_2, "tidy_mean_set.txt", row.names = FALSE, quote = FALSE)

cat("all done\n")





