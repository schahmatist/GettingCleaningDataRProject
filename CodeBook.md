I. run_analysis.R transforms the Samsung set and creates two dataframes:
"combine_set" and "tidy_avg"

II. "combine_sets" has 10,299 rows and is combined set of training and testing Samsung sets for std() and mean() function
     
     "tidy_avg" has 35 rows and is based on "combine_sets" but had average readings for each variable grouped by subject and activity. "tidy_avg" set is saved as a separate "tidy_avg.txt" file.


III. Each table has the following columns:

-Activity Description 
(
Factor with 6 levels:
	WALKING"
	"WALKING_UPSTAIRS"
	"WALKING_DOWNSTAIRS"
	"SITTING"           
	"STANDING"
	"LAYING")


- Subject Code (integer)

- 66 columns for each of the variables with mean() and std() functions:

 [1] "fBodyAcc-mean()-X"           "fBodyAcc-mean()-Y"           "fBodyAcc-mean()-Z"          
 [4] "fBodyAcc-std()-X"            "fBodyAcc-std()-Y"            "fBodyAcc-std()-Z"           
 [7] "fBodyAccJerk-mean()-X"       "fBodyAccJerk-mean()-Y"       "fBodyAccJerk-mean()-Z"      
[10] "fBodyAccJerk-std()-X"        "fBodyAccJerk-std()-Y"        "fBodyAccJerk-std()-Z"       
[13] "fBodyAccMag-mean()"          "fBodyAccMag-std()"           "fBodyBodyAccJerkMag-mean()" 
[16] "fBodyBodyAccJerkMag-std()"   "fBodyBodyGyroJerkMag-mean()" "fBodyBodyGyroJerkMag-std()" 
[19] "fBodyBodyGyroMag-mean()"     "fBodyBodyGyroMag-std()"      "fBodyGyro-mean()-X"         
[22] "fBodyGyro-mean()-Y"          "fBodyGyro-mean()-Z"          "fBodyGyro-std()-X"          
[25] "fBodyGyro-std()-Y"           "fBodyGyro-std()-Z"           "tBodyAcc-mean()-X"          
[28] "tBodyAcc-mean()-Y"           "tBodyAcc-mean()-Z"           "tBodyAcc-std()-X"           
[31] "tBodyAcc-std()-Y"            "tBodyAcc-std()-Z"            "tBodyAccJerk-mean()-X"      
[34] "tBodyAccJerk-mean()-Y"       "tBodyAccJerk-mean()-Z"       "tBodyAccJerk-std()-X"       
[37] "tBodyAccJerk-std()-Y"        "tBodyAccJerk-std()-Z"        "tBodyAccJerkMag-mean()"     
[40] "tBodyAccJerkMag-std()"       "tBodyAccMag-mean()"          "tBodyAccMag-std()"          
[43] "tBodyGyro-mean()-X"          "tBodyGyro-mean()-Y"          "tBodyGyro-mean()-Z"         
[46] "tBodyGyro-std()-X"           "tBodyGyro-std()-Y"           "tBodyGyro-std()-Z"          
[49] "tBodyGyroJerk-mean()-X"      "tBodyGyroJerk-mean()-Y"      "tBodyGyroJerk-mean()-Z"     
[52] "tBodyGyroJerk-std()-X"       "tBodyGyroJerk-std()-Y"       "tBodyGyroJerk-std()-Z"      
[55] "tBodyGyroJerkMag-mean()"     "tBodyGyroJerkMag-std()"      "tBodyGyroMag-mean()"        
[58] "tBodyGyroMag-std()"          "tGravityAcc-mean()-X"        "tGravityAcc-mean()-Y"       
[61] "tGravityAcc-mean()-Z"        "tGravityAcc-std()-X"         "tGravityAcc-std()-Y"        
[64] "tGravityAcc-std()-Z"         "tGravityAccMag-mean()"       "tGravityAccMag-std()"  

All the variables are  chosen out of 561 in the Samsung Set.
Only variables for mean() and std(), are included as per requirements.
Note, that meanFreq() - is not included in the set.


IV. The variables are renamed to lowcase without any special characters.
Acc is replaced for acceleration, Gyro to gyroscope, t for time, f - for frequency:

 [1] "timebodyaccelerationmeanx"                     
 [2] "timebodyaccelerationmeany"                     
 [3] "timebodyaccelerationmeanz"                     
 [4] "timebodyaccelerationstdx"                      
 [5] "timebodyaccelerationstdy"                      
 [6] "timebodyaccelerationstdz"                      
 [7] "timegravityaccelerationmeanx"                  
 [8] "timegravityaccelerationmeany"                  
 [9] "timegravityaccelerationmeanz"                  
[10] "timegravityaccelerationstdx"                   
[11] "timegravityaccelerationstdy"                   
[12] "timegravityaccelerationstdz"                   
[13] "timebodyaccelerationjerkmeanx"                 
[14] "timebodyaccelerationjerkmeany"                 
[15] "timebodyaccelerationjerkmeanz"                 
[16] "timebodyaccelerationjerkstdx"                  
[17] "timebodyaccelerationjerkstdy"                  
[18] "timebodyaccelerationjerkstdz"                  
[19] "timebodygyroscopemeanx"                        
[20] "timebodygyroscopemeany"                        
[21] "timebodygyroscopemeanz"                        
[22] "timebodygyroscopestdx"                         
[23] "timebodygyroscopestdy"                         
[24] "timebodygyroscopestdz"                         
[25] "timebodygyroscopejerkmeanx"                    
[26] "timebodygyroscopejerkmeany"                    
[27] "timebodygyroscopejerkmeanz"                    
[28] "timebodygyroscopejerkstdx"                     
[29] "timebodygyroscopejerkstdy"                     
[30] "timebodygyroscopejerkstdz"                     
[31] "timebodyaccelerationmagnitudemean"             
[32] "timebodyaccelerationmagnitudestd"              
[33] "timegravityaccelerationmagnitudemean"          
[34] "timegravityaccelerationmagnitudestd"           
[35] "timebodyaccelerationjerkmagnitudemean"         
[36] "timebodyaccelerationjerkmagnitudestd"          
[37] "timebodygyroscopemagnitudemean"                
[38] "timebodygyroscopemagnitudestd"                 
[39] "timebodygyroscopejerkmagnitudemean"            
[40] "timebodygyroscopejerkmagnitudestd"             
[41] "frequencybodyaccelerationmeanx"                
[42] "frequencybodyaccelerationmeany"                
[43] "frequencybodyaccelerationmeanz"                
[44] "frequencybodyaccelerationstdx"                 
[45] "frequencybodyaccelerationstdy"                 
[46] "frequencybodyaccelerationstdz"                 
[47] "frequencybodyaccelerationjerkmeanx"            
[48] "frequencybodyaccelerationjerkmeany"            
[49] "frequencybodyaccelerationjerkmeanz"            
[50] "frequencybodyaccelerationjerkstdx"             
[51] "frequencybodyaccelerationjerkstdy"             
[52] "frequencybodyaccelerationjerkstdz"             
[53] "frequencybodygyroscopemeanx"                   
[54] "frequencybodygyroscopemeany"                   
[55] "frequencybodygyroscopemeanz"                   
[56] "frequencybodygyroscopestdx"                    
[57] "frequencybodygyroscopestdy"                    
[58] "frequencybodygyroscopestdz"                    
[59] "frequencybodyaccelerationmagnitudemean"        
[60] "frequencybodyaccelerationmagnitudestd"         
[61] "frequencybodybodyaccelerationjerkmagnitudemean"
[62] "frequencybodybodyaccelerationjerkmagnitudestd" 
[63] "frequencybodybodygyroscopemagnitudemean"       
[64] "frequencybodybodygyroscopemagnitudestd"        
[65] "frequencybodybodygyroscopejerkmagnitudemean"   
[66] "frequencybodybodygyroscopejerkmagnitudestd"    

More information is provided in README.md
