### Getting and Cleaning Data - Course Project for coursera class


This document described the work done for the course 'Getting and Cleaning Data'. 

Following files are included:

1. R script run_analysis.R
2. tidy_mean_set.txt - the final product of the code run
3. CodeBook.txt documenting final data set column names
4. THis README.md file tying it all together.


R script is named run_analysis.R; it executes the following tasks:

- Downloads and unzips the project data zip file
- Merges the training and the test sets to create one data set.
- Extracts only the measurements on the mean and standard deviation for each measurement.
- Modifies data frame column names to use activity names to name the activities in the data set
- Modifies labels in the data set with descriptive variable names.
- Creates a second, independent tidy data set with the average of each variable for each activity and each subject.


git hub location: https://github.com/zoplex/getting-and-cleaning-data-project

Second data set with mean values 'tidy_mean_set.txt' is also attached to the repository together with the R script run_analysis.R;
There is only one R script that completes the full job required.

CodeBook.md describes the variables, the data, and any transformations or work that was performed to clean up the data.



    