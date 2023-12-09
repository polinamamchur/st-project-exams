#Does participating in a course that prepares students for exams have a significant impact on their scores?
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))
exams<- read.csv("exams_new.csv", header = TRUE, stringsAsFactors = FALSE)
mean_course_completed <- mean(exams$average.score[exams$test.preparation.course == 'completed'])
mean_course_none <- mean(exams$average.score[exams$test.preparation.course == 'none'])
cat("Mean for scores (completed test preparation):", mean_course_completed, 
    " | Mean for scores (not completed test preparation):", mean_course_none, "\n")

#mean for each subject 
mean_course_completed_math <- mean(exams$math.score[exams$test.preparation.course == 'completed'])
mean_course_none_math <- mean(exams$math.score[exams$test.preparation.course == 'none'])
mean_course_completed_reading <- mean(exams$reading.score[exams$test.preparation.course == 'completed'])
mean_course_none_reading <- mean(exams$reading.score[exams$test.preparation.course == 'none'])
mean_course_completed_writing <- mean(exams$writing.score[exams$test.preparation.course == 'completed'])
mean_course_none_writing <- mean(exams$writing.score[exams$test.preparation.course == 'none'])

#combine results in matrix
mean_course_matrix <- matrix(
  c(
    mean_course_completed_math, mean_course_none_math,
    mean_course_completed_reading, mean_course_none_reading,
    mean_course_completed_writing, mean_course_none_writing
  ),
  nrow = 3,  
  byrow = TRUE,  
  dimnames = list(c("math", "reading", "writing"), c("completed", "none"))  
)
print(mean_course_matrix)

#median for each subject 
median_course_completed_math <- median(exams$math.score[exams$test.preparation.course == 'completed'])
median_course_none_math <- median(exams$math.score[exams$test.preparation.course == 'none'])
median_course_completed_reading <- median(exams$reading.score[exams$test.preparation.course == 'completed'])
median_course_none_reading <- median(exams$reading.score[exams$test.preparation.course == 'none'])
median_course_completed_writing <- median(exams$writing.score[exams$test.preparation.course == 'completed'])
median_course_none_writing <- median(exams$writing.score[exams$test.preparation.course == 'none'])

#combine results in matrix
median_course_matrix <- matrix(
  c(
    median_course_completed_math, median_course_none_math,
    median_course_completed_reading, median_course_none_reading,
    median_course_completed_writing, median_course_none_writing
  ),
  nrow = 3,  
  byrow = TRUE,  
  dimnames = list(c("math", "reading", "writing"), c("completed", "none"))  
)
print(median_course_matrix)

#sd for each subject 
sd_course_completed_math <- sd(exams$math.score[exams$test.preparation.course == 'completed'])
sd_course_none_math <- sd(exams$math.score[exams$test.preparation.course == 'none'])
sd_course_completed_reading <- sd(exams$reading.score[exams$test.preparation.course == 'completed'])
sd_course_none_reading <- sd(exams$reading.score[exams$test.preparation.course == 'none'])
sd_course_completed_writing <- sd(exams$writing.score[exams$test.preparation.course == 'completed'])
sd_course_none_writing <- sd(exams$writing.score[exams$test.preparation.course == 'none'])

#combine results in matrix
sd_course_matrix <- matrix(
  c(
    sd_course_completed_math, sd_course_none_math,
    sd_course_completed_reading, sd_course_none_reading,
    sd_course_completed_writing, sd_course_none_writing
  ),
  nrow = 3,  
  byrow = TRUE,  
  dimnames = list(c("math", "reading", "writing"), c("completed", "none"))  
)
print(sd_course_matrix)

