# 1) Merges the training and the test sets to create one data set.
uci_ds_path <- "/media/My Passport/work/materia/ds_gacd/project/UCI HAR Dataset"

uci_file <- function (uci_ds_path, test_train, type) {
        uci_ds_testtrain_path <- paste(uci_ds_path, test_train, sep="/")
        paste(uci_ds_testtrain_path, paste0(type,"_",test_train ,".txt"), sep="/")
}

# subject : reading -> subject [1,30]
# X : reading x features
# y : reading -> activty

uci_subject_test <- read.csv(uci_file(uci_ds_path, "test", "subject"), stringsAsFactors=FALSE, header=FALSE)
uci_X_test <- read.csv(uci_file(uci_ds_path, "test", "X"), stringsAsFactors=FALSE, header=FALSE, sep="")
uci_y_test <- read.csv(uci_file(uci_ds_path, "test", "y"), stringsAsFactors=FALSE, header=FALSE)

uci_subject_train <- read.csv(uci_file(uci_ds_path, "train", "subject"), stringsAsFactors=FALSE, header=FALSE)
uci_X_train <- read.csv(uci_file(uci_ds_path, "train", "X"), stringsAsFactors=FALSE, header=FALSE, sep="")
uci_y_train <- read.csv(uci_file(uci_ds_path, "train", "y"), stringsAsFactors=FALSE, header=FALSE)

uci_feature_labels_file <- paste(uci_ds_path,"features.txt",sep="/")
uci_feature_labels <- read.csv(uci_feature_labels_file, stringsAsFactors=FALSE, header=FALSE, sep="")

uci_activity_labels_file <- paste(uci_ds_path,"activity_labels.txt",sep="/")
uci_activity_labels <- read.csv(uci_activity_labels_file, stringsAsFactors=FALSE, header=FALSE, sep="")

library(dplyr)


uci_train_length <- dim(uci_subject_train)[1]
uci_test_length <- dim(uci_subject_test)[1]

uci_partition_train<- data.frame(istest = rep(FALSE,uci_train_length))
uci_partition_test<- data.frame(istest = rep(TRUE,uci_test_length))

uci_partition<- rbind(uci_partition_train, uci_partition_test)
uci_X <- rbind(uci_X_train, uci_X_test)
uci_y <- rbind(uci_y_train, uci_y_test)
uci_subject <- rbind(uci_subject_train, uci_subject_test)

names(uci_subject) <- "subject"
names(uci_y) <- "activity"
names(uci_X) <- uci_feature_labels$V2


# 2) Extracts only the measurements on the mean and standard deviation 
#   for each measurement. 
project_names <- grep("mean\\(\\)|std\\(\\)", names(uci_X), value = T)
uci_X_project <- uci_X[,project_names]
names(uci_X_project) <- gsub("[\\(\\)\\-]","",tolower(names(uci_X_project)))

# 3) Uses descriptive activity names to name the activities in the data set
uci_y$activity <- factor(uci_y$activity, levels = uci_activity_labels$V1, labels = uci_activity_labels$V2, ordered = T)

# 4) Appropriately labels the data set with descriptive variable names. 
uci_ds_raw <- cbind(uci_subject, uci_y, uci_X_project )

# 5) From the data set in step 4, creates a second, 
#    independent tidy data set with the average of each variable 
#    for each activity and each subject.
uci_ds <- (  uci_ds_raw %>%
            group_by(activity, subject) %>%
            summarise_each(funs(mean)) 
)

View(uci_ds)

write.csv(uci_ds, file = paste(uci_ds_path,"uci.txt", sep = "/"), row.names = FALSE)

data <- read.csv(paste(uci_ds_path,"uci.txt", sep = "/"))

View(data)
