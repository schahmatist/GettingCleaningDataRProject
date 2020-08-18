library(dplyr)

setwd("UCI HAR Dataset")
# load the datasets
test_set<-read.table("test/X_test.txt")
test_label<-read.table("test/Y_test.txt")
test_subject<-read.table("test/subject_test.txt")

train_set<-read.table("train/X_train.txt")
train_label<-read.table("train/Y_train.txt")
train_subject<-read.table("train/subject_train.txt")

feat<-read.table("features.txt",sep=" ")
colnames(feat)<-c("id","feature")

activ_label<-read.table("activity_labels.txt",sep=" ")
colnames(activ_label)<-c("id","activity")

# combine train and test set

all_set<-rbind(train_set,test_set)
colnames(all_set)<-feat$feature

# combine train and test subject

all_subject<-rbind(train_subject,test_subject)
colnames(all_subject)<-"subjectcode"


# combine train and test labels and assign descriptive activities to labels

all_label<-rbind(train_label,test_label)
colnames(all_label)<-"labelcode"
all_label_set=merge(all_label,activ_label,by.x="labelcode",by.y="id")


# chose only std() and mean() functions

select_set<-all_set[,grepl( "mean\\(|std\\(", colnames(all_set) ) ]
combine_set=cbind(select_set,all_label_set[2],all_subject)

# change column names to descriptive column names
cols=names(combine_set)
cols=tolower(gsub("\\(\\)","",cols))
cols=gsub("acc","acceleration",cols)
cols=gsub("mag","magnitude",cols)
cols=gsub("gyro","gyroscope",cols)
cols=gsub("^f","frequency",cols)
cols=gsub("^t","time",cols)
cols=gsub("-","",cols)
colnames(combine_set)<-cols

# create an additional tidy set with means by subject/activity

by_subj_activ<-group_by(combine_set, subjectcode, activity)
tidy_avg<-summarize_all(by_subj_activ, mean)

write.table(tidy_avg, "tidy_mean.txt", row.name=FALSE)
