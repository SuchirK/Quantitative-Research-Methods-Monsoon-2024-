##Sleep & Study habits and Exam Scores 

## Set the working directory ((According to your working directory - where ever you have saved your dataset))

setwd("~/Desktop/QRM_Monsoon 2024/R Code_Monsoon 2024")

## Load the dataset

student_data<- read.csv("students_sleep_study_data.csv") # reads and stores data

## Understand the data
## (Read about description of variables and unit of observation)
head(student_data) # shows first observations

## Identify the number of observations
dim(student_data) # provides dimensions of dataframe: rows, columns

## Frequency table for study hours after creating interval
study_bins <- cut(student_data$Study_Hours, breaks = seq(3, 10, by = 1), right = FALSE) #Create intervals from 3 to 10 in 1-hour increments ### Specify that the intervals are left-inclusive (e.g., [3, 4))
table(study_bins) # creates frequency table of vote

## Tables of proportions 
## option a: create frequency table first
freq_table <- table(bes$vote) # object with frequency table
prop.table(freq_table) # creates table of proportions

# Create bins for exam scores (e.g., intervals of 10 points)
exam_bins <- cut(student_data$Exam_Score, breaks = seq(40, 100, by = 10), right = FALSE)

# Set up bins for Sleep Hours (you can adjust the breaks as needed)
sleep_bins <- cut(student_data$Sleep_Hours, breaks = seq(4, 10, by = 1), right = FALSE)

# Create a frequency table
sleep_frequency <- table(sleep_bins)

# Display the frequency table
sleep_frequency

# Create a frequency table
exam_frequency <- table(exam_bins)

# Display the frequency table
exam_frequency

## Two-way frequency tables
table(study_bins,exam_bins) 

## Two-way tables of proportions
prop.table(table(study_bins,exam_bins))
prop.table(table(study_bins,exam_bins), margin=1) # with margin=1. Sets the row. Row wise would add up to 1. 
prop.table(table(study_bins,exam_bins), margin=2) # with margin=2. Sets the column. Column wise would add up to 1.

## Histograms
hist(student_data$Study_Hours) # creates histogram of all observations in Study Hours
hist(student_data$Sleep_Hours) # creates histogram for all observations in sleep hours


# Create a new variable 'Sleep_Above_8' 
student_data$Sleep_Above_8 <- ifelse(student_data$Sleep_Hours > 8, 1, 0)

# Display the first few rows to check the new variable
head(student_data)

#More Histograms 

hist(student_data$Exam_Score[student_data$Sleep_Above_8==1]) #Create Histogram of Exam Scores for People who have slept above 8 hours
hist(student_data$Exam_Score[student_data$Sleep_Above_8==0]) #Create Histogram of Exam Scores for People who have slept below 8 hours



## Create density histograms
hist(student_data$Exam_Score[student_data$Sleep_Above_8==1], freq=FALSE)


hist(student_data$Exam_Score[student_data$Sleep_Above_8==0], freq=FALSE)

## Descriptive statistics
mean(student_data$Exam_Score) #Mean Exam Score
mean(student_data$Exam_Score[student_data$Sleep_Above_8==1]) #Mean Exam Score for Students who have slept above 8 hours
mean(student_data$Exam_Score[student_data$Sleep_Above_8==0]) #Mean Exam Score for Students who have slept less than 8 hours
mean(student_data$Exam_Score[student_data$Study_Hours>5]) #Mean Exam Score for Students who have studied more than 5 hours
mean(student_data$Exam_Score[student_data$Study_Hours<5]) #Mean Exam Score for Students who have studied less than 5 hours

mean(student_data$Exam_Score[student_data$Sleep_Above_8==1]) # median Exam Score for Students who have slept above 8 hours
mean(student_data$Exam_Score[student_data$Sleep_Above_8==0]) #median Exam Score for Students who have slept less than 8 hours

## Scatter plot
plot(student_data$Sleep_Hours,student_data$Exam_Score) # creates scatter plot, required arguments in this order: X, Y
plot(student_data$Study_Hours,student_data$Exam_Score) # creates scatter plot, required arguments in this order: X, Y

###Log it 

plot(student_data$Sleep_Hours, student_data$Exam_Score,
     log = "xy",  # Apply log scale to both axes
     xlab = "Sleep Hours (log scale)", ylab = "Exam Score (log scale)",
     main = "Exam Score vs Sleep Hours (Log-Log Scale)") ##No change between the previous plot or after logging 



## Add straight dashed lines to the most recent graph
abline(v=mean(student_data$Study_Hours), lty="dashed") # vertical
abline(h=mean(student_data$Exam_Score), lty="dashed") # horizontal

##Make a boxplot

boxplot(student_data$Exam_Score,
        main = "Box Plot of Exam Scores",      # Title of the plot
        ylab = "Exam Scores",                   # Label for the y-axis
        col = "lightgreen",                     # Color of the box
        border = "black",                       # Color of the box border
        horizontal = FALSE)                     # Orientation of the box plot (vertical)

max(student_data$Exam_Score)

IQR(student_data$Exam_Score)

summary(student_data$Exam_Score)
## Correlation
cor(student_data$Study_Hours, student_data$Exam_Score) # calculates correlation between X and Y
cor(student_data$Exam_Score, student_data$Study_Hours) # calculates correlation between Y and X


