setwd(dirname(rstudioapi::getActiveDocumentContext()$path))
exams<- read.csv("exams.csv", header = TRUE, stringsAsFactors = FALSE)
table(exams$gender)
#common mean
mean_math_score <- mean(exams$math.score)
mean_reading_score <- mean(exams$reading.score)
mean_writing_score <- mean(exams$writing.score)
cat("Mean for math score:", mean_math_score, 
    " | Mean for reading score:", mean_reading_score, 
    " | Mean for writing score:", mean_writing_score, "\n")

#What is the relationship between different demographic factors and examination results?
#plots for each exam
par(mfrow = c(1,2))
plot(as.factor(exams$math.score[exams$gender == 'female']), 
     main = "Math Scores - Female")
plot(as.factor(exams$math.score[exams$gender == 'male']),
     main = "Math Scores - Male")

plot(as.factor(exams$reading.score[exams$gender == 'female']),
     main = "Reading Scores - Female")
plot(as.factor(exams$reading.score[exams$gender == 'male']),
     main = "Reading Scores - Male")

plot(as.factor(exams$writing.score[exams$gender == 'female']),
     main = "Writing Scores - Female")
plot(as.factor(exams$writing.score[exams$gender == 'male']),
     main = "Writing Scores - Male")

#mean for each gender
mean_math_score_female <- mean(exams$math.score[exams$gender == 'female'])
mean_math_score_male <- mean(exams$math.score[exams$gender == 'male'])
mean_reading_score_female <- mean(exams$reading.score[exams$gender == 'female'])
mean_reading_score_male <- mean(exams$reading.score[exams$gender == 'male'])
mean_writing_score_female <- mean(exams$writing.score[exams$gender == 'female'])
mean_writing_score_male <- mean(exams$writing.score[exams$gender == 'male'])

#combine results in matrix
mean_gender_matrix <- matrix(
  c(
    mean_math_score_female, mean_math_score_male,
    mean_reading_score_female, mean_reading_score_male,
    mean_writing_score_female, mean_writing_score_male
  ),
  nrow = 3,  
  byrow = TRUE,  
  dimnames = list(c("math", "reading", "writing"), c("female", "male"))  
)
print(mean_gender_matrix)


#common median
median_math_score <- median(exams$math.score)
median_reading_score <- median(exams$reading.score)
median_writing_score <- median(exams$writing.score)
cat("Median for math score:", median_math_score, 
    " | Median for reading score:", median_reading_score, 
    " | Median for writing score:", median_writing_score, "\n")

#median for each gender
median_math_score_female <- median(exams$math.score[exams$gender == 'female'])
median_math_score_male <- median(exams$math.score[exams$gender == 'male'])
median_reading_score_female <- median(exams$reading.score[exams$gender == 'female'])
median_reading_score_male <- median(exams$reading.score[exams$gender == 'male'])
median_writing_score_female <- median(exams$writing.score[exams$gender == 'female'])
median_writing_score_male <- median(exams$writing.score[exams$gender == 'male'])

#combine results in matrix
median_gender_matrix <- matrix(
  c(
    median_math_score_female, median_math_score_male,
    median_reading_score_female, median_reading_score_male,
    median_writing_score_female, median_writing_score_male
  ),
  nrow = 3,  
  byrow = TRUE,  
  dimnames = list(c("math", "reading", "writing"), c("female", "male"))  
)
print(median_gender_matrix)

#common standard deviation
sd_math_score <- sd(exams$math.score)
sd_reading_score <- sd(exams$reading.score)
sd_writing_score <- sd(exams$writing.score)
cat("Standard Deviation for math score:", sd_math_score, 
    " | Standard Deviation for reading score:", sd_reading_score, 
    " | Standard Deviation for writing score:", sd_writing_score, "\n")


#standard deviation for each gender
sd_math_score_female <- sd(exams$math.score[exams$gender == 'female'])
sd_math_score_male <- sd(exams$math.score[exams$gender == 'male'])
sd_reading_score_female <- sd(exams$reading.score[exams$gender == 'female'])
sd_reading_score_male <- sd(exams$reading.score[exams$gender == 'male'])
sd_writing_score_female <- sd(exams$writing.score[exams$gender == 'female'])
sd_writing_score_male <- sd(exams$writing.score[exams$gender == 'male'])

#combine results in matrix
sd_gender_matrix <- matrix(
  c(
    sd_math_score_female, sd_math_score_male,
    sd_reading_score_female, sd_reading_score_male,
    sd_writing_score_female, sd_writing_score_male
  ),
  nrow = 3,  
  byrow = TRUE,  
  dimnames = list(c("math", "reading", "writing"), c("female", "male"))  
)
print(sd_gender_matrix)

#Calculating average score according to gend
library(tidyverse)
#adding a column with average score
exams <- exams %>%
  mutate(average.score = (math.score + reading.score + writing.score)/3)

mean_average_score_female <- mean(exams$average.score[exams$gender == 'female'])
mean_average_score_male <- mean(exams$average.score[exams$gender == 'male'])
cat("Mean for average score (female):", mean_average_score_female, 
    " | Mean for average score (male):", mean_average_score_male, "\n")


write.csv(exams, "exams_new.csv")

