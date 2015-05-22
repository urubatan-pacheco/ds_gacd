# Programming Assignments of Data Science - Getting and Cleaning Data

An independent tidy data set with the average of each variable for each activity and each subject using the "Human Activity Recognition Using Smartphones Dataset" [1]. The variables are means and standard deviations of the measurements of the experiments. For each experiment record it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
- An identifier of the subject who carried out the experiment.

We prepare a tidy data that can be used for later analysis that contains:
- An identifier of the subject who carried out the experiment.
- Its activity label (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
- Means and Standard Deviations of the features:
  - Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
  - Triaxial Angular velocity from the gyroscope. 
  
The dataset uci.txt contains the analysis:
- An identifier of the subject who carried out the experiment.
- Its activity label (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
- The Average of Means and Standard Deviations of the features below for each combination of activity and subject:
  - Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
  - Triaxial Angular velocity from the gyroscope. 
  
The dataset includes the following files:
=========================================
- 'README.md' - This file.
- 'CodeBook.md' - Describe all the columns of the dataset uci.txt.
- 'uci.txt' -  The dataset.
- 'run_analisis.R' - An R script that extracts the a tidy dataset from the raw data and produces 
the analysis saved at uci.txt,an independent tidy data set with the average of each variable for each activity and each subject.



# References:
[1] The raw dataset can be downloaded from the link below:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
Use of this dataset in publications must be acknowledged by referencing the following publication:

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.


