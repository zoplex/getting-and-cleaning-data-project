### Codebook.md file


The script run_analysis.R performs the following steps in transforming the data:

- reads the unziped file into the data frame - one frame for each data type measurement, as well as for activity list and features. 
- merges train and test data sets into one frame alldata, and adds/joines in the aactivity description.
- loads feature names and uses it to set descriptive names for the main data set in alldata data frame
- select subset for mean and standard deviation columns mean_stdev_df 
- expands parts of the column names with the full attribute words - like replacing 'f' with 'frequency' at the beginning of the selected column names
- aggregates alldata data frame into tidy_df  

