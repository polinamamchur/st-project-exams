setwd(dirname(rstudioapi::getActiveDocumentContext()$path))
exams<- read.csv("exams_new.csv", header = TRUE, stringsAsFactors = FALSE)
table(exams$gender)
#What effect do parental education levels have on the academic achievements of students?
#mean for the average test score depending on parental education level 
mean_some_high_school <- mean(exams$average.score[exams$parental.level.of.education == 'some high school'])
mean_high_school <- mean(exams$average.score[exams$parental.level.of.education == 'high school'])
mean_some_college <- mean(exams$average.score[exams$parental.level.of.education == 'some college'])
mean_associates_degree <- mean(exams$average.score[exams$parental.level.of.education == "associate's degree"])
mean_bachelor_degree <- mean(exams$average.score[exams$parental.level.of.education == "bachelor's degree"])
mean_master_degree <- mean(exams$average.score[exams$parental.level.of.education == "master's degree"])

#combine results in matrix
mean_edu_data_frame <- data.frame(
  education = c("some_high_school", "high_school", "some_college", "associate's_degree", "bachelor's_degree", "master's_degree"),
  score = c(mean_some_high_school, mean_high_school, mean_some_college, mean_associates_degree, mean_bachelor_degree, mean_master_degree)
)

print(mean_edu_data_frame)

#median for the average test score depending on parental education level 
median_some_high_school <- median(exams$average.score[exams$parental.level.of.education == 'some high school'])
median_high_school <- median(exams$average.score[exams$parental.level.of.education == 'high school'])
median_some_college <- median(exams$average.score[exams$parental.level.of.education == 'some college'])
median_associates_degree <- median(exams$average.score[exams$parental.level.of.education == "associate's degree"])
median_bachelor_degree <- median(exams$average.score[exams$parental.level.of.education == "bachelor's degree"])
median_master_degree <- median(exams$average.score[exams$parental.level.of.education == "master's degree"])

#combine results in matrix
median_edu_data_frame <- data.frame(
  education = c("some_high_school", "high_school", "some_college", "associate's_degree", "bachelor's_degree", "master's_degree"),
  score = c(median_some_high_school, median_high_school, median_some_college, median_associates_degree, median_bachelor_degree, median_master_degree)
)

print(median_edu_data_frame)

#standard deviation for the average test score depending on parental education level 
sd_some_high_school <- sd(exams$average.score[exams$parental.level.of.education == 'some high school'])
sd_high_school <- sd(exams$average.score[exams$parental.level.of.education == 'high school'])
sd_some_college <- sd(exams$average.score[exams$parental.level.of.education == 'some college'])
sd_associates_degree <- sd(exams$average.score[exams$parental.level.of.education == "associate's degree"])
sd_bachelor_degree <- sd(exams$average.score[exams$parental.level.of.education == "bachelor's degree"])
sd_master_degree <- sd(exams$average.score[exams$parental.level.of.education == "master's degree"])

#combine results in matrix
sd_edu_data_frame <- data.frame(
  education = c("some_high_school", "high_school", "some_college", "associate's_degree", "bachelor's_degree", "master's_degree"),
  score = c(sd_some_high_school, sd_high_school, sd_some_college, sd_associates_degree, sd_bachelor_degree, sd_master_degree)
)

print(sd_edu_data_frame)

