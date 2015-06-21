#test <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
#train <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
#names <- read.table("./data/UCI HAR Dataset/features.txt")
activitiesNames <- read.table("./data/UCI HAR Dataset/activity_labels.txt")
testActivities <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
trainActivities <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
testSubjects <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")
trainSubjects <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")

testActivities <- merge(testActivities, activitiesNames)[-1]
trainActivities <- merge(trainActivities, activitiesNames)[-1]
colnames(test) <- names[, 2]
colnames(train) <- names[, 2]
testAct <- cbind(testSubjects, testActivities, test)
trainAct <- cbind(trainSubjects, trainActivities, train)
combined <- rbind(testAct, trainAct)
colnames(combined)[1:2] <- c("subject", "activity")
meansAndStds <- combined[, grep("^(subject)|(activity)|(.*(mean[(][)]|std[(][)]).*)$", names(combined))]

#summary <- tapply(meansAndStds[, 3], meansAndStds[, 1:2], mean)
library("stats")
newFrame <- aggregate(meansAndStds, list(subject=meansAndStds[,1], activity=meansAndStds[,2]), mean)[c(-3, -4)]
write.table(newFrame, row.name = FALSE)

