##Sleep & Study habits and Exam Scores: DS Task 

## Set the working directory

###Add Code Here###

## Load the dataset

student_data<- read.csv("students_sleep_study_data.csv") # reads and stores data

## Understand the data
## (Read about description of variables and unit of observation)

###Add Code Here###

## Identify the number of observations

###Add Code Here###

## Frequency table for study hours after creating interval

study_bins <- cut(student_data$Study_Hours, breaks = seq(3, 10, by = 1), right = FALSE) #Create intervals from 3 to 10 in 1-hour increments ### Specify that the intervals are left-inclusive (e.g., [3, 4))
table(study_bins) # creates frequency table of vote

# Create bins for exam scores (e.g., intervals of 10 points)
exam_bins <- cut(student_data$Exam_Score, breaks = seq(40, 100, by = 10), right = FALSE)

# Set up bins for Sleep Hours (you can adjust the breaks as needed)
sleep_bins <- cut(student_data$Sleep_Hours, breaks = seq(4, 10, by = 1), right = FALSE)

# Create a frequency table on sleep bins

###Add Code Here###

# Create a frequency table on exam bins

###Add Code Here###

## Two-way frequency tables on study bin and exam bin ##

###Make a two way table on study and exam bin###

## Two-way tables of proportions

##With Margin == 1 and Margin ==2## 

## Histograms

#create histogram of all observations in Study Hours
#Create histogram for all observations in sleep hours
#Create histogram for all observations in exam scores

# Create a new variable 'Sleep_Above_8' where if student has slept above 8 hours it becomes 1 else 0 


###Add Code Here###


# Display the first few rows to check the new variable


###Add Code Here###

#More Histograms 

#Create Histogram of Exam Scores for People who have slept above 8 hours

#Create Histogram of Exam Scores for People who have slept below 8 hours

## Density histograms

#Create Density Histogram of Exam Scores for People who have slept above 8 hours

#Create Density Histogram of Exam Scores for People who have slept below 8 hours

## Descriptive statistics

#Find Mean Exam Score

#Find Mean Exam Score for Students who have slept above 8 hours

#Find Mean Exam Score for Students who have slept less than 8 hours

#Find Mean Exam Score for Students who have studied more than 5 hours

#Find Mean Exam Score for Students who have studied less than 5 hours

###Find Median as well! 


## Scatter plot

#Create scatter plot, required arguments in this order: X, Y where X is Sleep Hours and Y is Exam Score

#Create scatter plot, required arguments in this order: X, Y where X is Study Hours and Y is Exam Score

## Add straight dashed lines to the most recent graph

##Make a boxplot

boxplot(student_data$Exam_Score,
        main = "Box Plot of Exam Scores",      # Title of the plot
        ylab = "Exam Scores",                   # Label for the y-axis
        col = "lightgreen",                     # Color of the box
        border = "black",                       # Color of the box border
        horizontal = FALSE)                     # Orientation of the box plot (vertical)

## Correlation

# Find correlation between X and Y, where X is Sleep Hours and Y is Exam Score
# Find correlation between X and Y, where X is Study Hours and Y is Exam Score







