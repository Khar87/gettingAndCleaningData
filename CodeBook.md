#Data frame variables:
subject - individual that performed the activity, values 1 to 30

activity - activity performed by the subject - WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

other values - averages for particular measurments for subject and activity

Data was created from original Human Activity Recognition Using Smartphones Dataset. 
Steps performed by the script:
  1)Read data
  
  2)Merge the training and the test sets to create one data set.
  
  3)Extracts only the measurements on the mean and standard deviation for each measurement. 
  
  4)Uses descriptive activity names to name the activities in the data set
  
  5)Appropriately labels the data set with descriptive variable names. 
  
  6)From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
