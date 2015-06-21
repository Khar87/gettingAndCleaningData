#Data frame variables:
subject - individual that performed the activity, values 1 to 30

activity - activity performed by the subject - WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

other values - averages for particular measurments for subject and activity

Data was created from original Human Activity Recognition Using Smartphones Dataset. 
Steps performed by the script:

  1) Reads the data from the original dataset.
  
  2) Converts activities codes to their names.
  
  3) Adds descriptive column names provided by the original dataset.
  
  4) Merges subjects, activities and measurments from the original dataset.
  
  5) Merges the training and the test sets to create one data set.
  
  6) Extracts only the measurements on the mean and standard deviation for each measurement (along with subjects and activities). 
  
  7) Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
