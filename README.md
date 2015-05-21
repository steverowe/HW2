Getting & Cleaning Data Homework
Steve Rowe
May 21, 2015

Contents:
run_analysis.r - R script to tidy the dataset and output the final file.
* loads the data	
* merges the files
* names the columns
* selects only the std() and mean() columns
** Cleans up the names so they are valid in R
* Adds subject and activity columns
* creates summary table
* outputs tidy.txt file

run_analysis.R assumes that the content of UCI HAR Dataset is in the root of the working directory.

codebook.md - codebook explaining the columns of the various files.

