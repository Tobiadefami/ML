# Data preprocessing

#import the dataset
data_set <- read.csv("Data.csv")
data_set

# Taking care of the dataset
data_set$Age <- ifelse(is.na(data_set$Age),
                       ave(data_set$Age, FUN = function(x) mean(x, na.rm = TRUE)),
                       data_set$Age)

data_set$Salary <- ifelse(is.na(data_set$Salary),
                          ave(data_set$Salary, FUN = function(x) mean(x, na.rm = TRUE)),
                          data_set$Salary)

# Encoding categorical data
data_set$Country <- factor(data_set$Country,
                           levels = c("France", "Spain", "Germany"),
                           labels = c(1, 2, 3))

data_set$Purchased <- factor(data_set$Purchased,
                             levels = c("No", "Yes"),
                             labels = c(0, 1))