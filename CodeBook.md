# uci.txt Code Book
- A code book that describes the variables, the data, and any transformations 
or work that you performed to clean up the data.
- Below we list each column at uci.txt and from which raw data file it comes from. Columns 1 (actitvity) comes from y_test.txt
or y_train.txt, column 2 (subject) comes from subject_test.txt or subject_train.txt. Columns 3 to 68 are the average
of all measurements corresponding of a activity, subject combination, but considering only measuremnts that 
contains 'mean()' or 'std()' in the correspondent raw data feature name (features.txt). The raw measuremnts data
comes from X_test.txt or X_train.txt.

<pre>
Column     Column Name               Raw Data Column Name      Raw Data Column    Raw Data file        
      1    activity                                                          1    y_test.txt or y_train
      2    subject                                                           1    subject_test.txt or s
      3    tbodyaccmeanx             tBodyAcc-mean()-X                       1    X-test.txt or X.train
      4    tbodyaccmeany             tBodyAcc-mean()-Y                       2    X-test.txt or X.train
      5    tbodyaccmeanz             tBodyAcc-mean()-Z                       3    X-test.txt or X.train
      6    tbodyaccstdx              tBodyAcc-std()-X                        4    X-test.txt or X.train
      7    tbodyaccstdy              tBodyAcc-std()-Y                        5    X-test.txt or X.train
      8    tbodyaccstdz              tBodyAcc-std()-Z                        6    X-test.txt or X.train
      9    tgravityaccmeanx          tGravityAcc-mean()-X                   41    X-test.txt or X.train
     10    tgravityaccmeany          tGravityAcc-mean()-Y                   42    X-test.txt or X.train
     11    tgravityaccmeanz          tGravityAcc-mean()-Z                   43    X-test.txt or X.train
     12    tgravityaccstdx           tGravityAcc-std()-X                    44    X-test.txt or X.train
     13    tgravityaccstdy           tGravityAcc-std()-Y                    45    X-test.txt or X.train
     14    tgravityaccstdz           tGravityAcc-std()-Z                    46    X-test.txt or X.train
     15    tbodyaccjerkmeanx         tBodyAccJerk-mean()-X                  81    X-test.txt or X.train
     16    tbodyaccjerkmeany         tBodyAccJerk-mean()-Y                  82    X-test.txt or X.train
     17    tbodyaccjerkmeanz         tBodyAccJerk-mean()-Z                  83    X-test.txt or X.train
     18    tbodyaccjerkstdx          tBodyAccJerk-std()-X                   84    X-test.txt or X.train
     19    tbodyaccjerkstdy          tBodyAccJerk-std()-Y                   85    X-test.txt or X.train
     20    tbodyaccjerkstdz          tBodyAccJerk-std()-Z                   86    X-test.txt or X.train
     21    tbodygyromeanx            tBodyGyro-mean()-X                    121    X-test.txt or X.train
     22    tbodygyromeany            tBodyGyro-mean()-Y                    122    X-test.txt or X.train
     23    tbodygyromeanz            tBodyGyro-mean()-Z                    123    X-test.txt or X.train
     24    tbodygyrostdx             tBodyGyro-std()-X                     124    X-test.txt or X.train
     25    tbodygyrostdy             tBodyGyro-std()-Y                     125    X-test.txt or X.train
     26    tbodygyrostdz             tBodyGyro-std()-Z                     126    X-test.txt or X.train
     27    tbodygyrojerkmeanx        tBodyGyroJerk-mean()-X                161    X-test.txt or X.train
     28    tbodygyrojerkmeany        tBodyGyroJerk-mean()-Y                162    X-test.txt or X.train
     29    tbodygyrojerkmeanz        tBodyGyroJerk-mean()-Z                163    X-test.txt or X.train
     30    tbodygyrojerkstdx         tBodyGyroJerk-std()-X                 164    X-test.txt or X.train
     31    tbodygyrojerkstdy         tBodyGyroJerk-std()-Y                 165    X-test.txt or X.train
     32    tbodygyrojerkstdz         tBodyGyroJerk-std()-Z                 166    X-test.txt or X.train
     33    tbodyaccmagmean           tBodyAccMag-mean()                    201    X-test.txt or X.train
     34    tbodyaccmagstd            tBodyAccMag-std()                     202    X-test.txt or X.train
     35    tgravityaccmagmean        tGravityAccMag-mean()                 214    X-test.txt or X.train
     36    tgravityaccmagstd         tGravityAccMag-std()                  215    X-test.txt or X.train
     37    tbodyaccjerkmagmean       tBodyAccJerkMag-mean()                227    X-test.txt or X.train
     38    tbodyaccjerkmagstd        tBodyAccJerkMag-std()                 228    X-test.txt or X.train
     39    tbodygyromagmean          tBodyGyroMag-mean()                   240    X-test.txt or X.train
     40    tbodygyromagstd           tBodyGyroMag-std()                    241    X-test.txt or X.train
     41    tbodygyrojerkmagmean      tBodyGyroJerkMag-mean(                253    X-test.txt or X.train
     42    tbodygyrojerkmagstd       tBodyGyroJerkMag-std()                254    X-test.txt or X.train
     43    fbodyaccmeanx             fBodyAcc-mean()-X                     266    X-test.txt or X.train
     44    fbodyaccmeany             fBodyAcc-mean()-Y                     267    X-test.txt or X.train
     45    fbodyaccmeanz             fBodyAcc-mean()-Z                     268    X-test.txt or X.train
     46    fbodyaccstdx              fBodyAcc-std()-X                      269    X-test.txt or X.train
     47    fbodyaccstdy              fBodyAcc-std()-Y                      270    X-test.txt or X.train
     48    fbodyaccstdz              fBodyAcc-std()-Z                      271    X-test.txt or X.train
     49    fbodyaccjerkmeanx         fBodyAccJerk-mean()-X                 345    X-test.txt or X.train
     50    fbodyaccjerkmeany         fBodyAccJerk-mean()-Y                 346    X-test.txt or X.train
     51    fbodyaccjerkmeanz         fBodyAccJerk-mean()-Z                 347    X-test.txt or X.train
     52    fbodyaccjerkstdx          fBodyAccJerk-std()-X                  348    X-test.txt or X.train
     53    fbodyaccjerkstdy          fBodyAccJerk-std()-Y                  349    X-test.txt or X.train
     54    fbodyaccjerkstdz          fBodyAccJerk-std()-Z                  350    X-test.txt or X.train
     55    fbodygyromeanx            fBodyGyro-mean()-X                    424    X-test.txt or X.train
     56    fbodygyromeany            fBodyGyro-mean()-Y                    425    X-test.txt or X.train
     57    fbodygyromeanz            fBodyGyro-mean()-Z                    426    X-test.txt or X.train
     58    fbodygyrostdx             fBodyGyro-std()-X                     427    X-test.txt or X.train
     59    fbodygyrostdy             fBodyGyro-std()-Y                     428    X-test.txt or X.train
     60    fbodygyrostdz             fBodyGyro-std()-Z                     429    X-test.txt or X.train
     61    fbodyaccmagmean           fBodyAccMag-mean()                    503    X-test.txt or X.train
     62    fbodyaccmagstd            fBodyAccMag-std()                     504    X-test.txt or X.train
     63    fbodybodyaccjerkmagmea    fBodyBodyAccJerkMag-me                516    X-test.txt or X.train
     64    fbodybodyaccjerkmagstd    fBodyBodyAccJerkMag-st                517    X-test.txt or X.train
     65    fbodybodygyromagmean      fBodyBodyGyroMag-mean(                529    X-test.txt or X.train
     66    fbodybodygyromagstd       fBodyBodyGyroMag-std()                530    X-test.txt or X.train
     67    fbodybodygyrojerkmagme    fBodyBodyGyroJerkMag-m                542    X-test.txt or X.train
     68    fbodybodygyrojerkmagst    fBodyBodyGyroJerkMag-s                543    X-test.txt or X.train
     <pre>
