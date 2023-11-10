##Create a sample dataset in a CSV file named "employee_data.csv." The dataset should contain the following columns:
##Employee ID: A unique identifier for each employee.
##Name: The name of the employee.
##Department: The department in which the employee works.
##Salary: The monthly salary of the employee (in USD).
##Joining Date: The date on which the employee joined the company (in YYYY-MM-DD format).
employee_data <- data.frame(
  Employee_ID = c(1, 2, 3, 4, 5, 6),
  Name = c("Roney Colemen", "Arnold", "Cbum", "David laid", "tren", "Riyas"),
  Department = c("Physical education", "Movie", "Media", "Influencer", "Chemistry", "Movie"),
  Salary = c(51000, 1600000, 125000, 507000, 5200000, 580000),
  Joining_Date = as.Date(c("2019-12-12", "2010-01-24", "1980-06-12", "2011-02-18", "2015-11-11", "2001-02-01"))
)
write.csv(employee_data, "employee_data.csv", row.names = FALSE)

##Load the dataset from "employee_data.csv" into a data frame in R.
df <- read.csv("employee_data.csv")

##Display the structure of the data frame, including column names and data types.
str(df)

##Calculate and add a new column named "Years of Service" to the data frame, representing the number of years each employee has worked in the company.
df$YearsOfExperience = c("4", "13", "43", "12", "8", "22"); df

##Create a new data frame named "Senior Employees" containing records of employees who have worked for the company for 5 or more years.
seniorEmployees <- subset(df, YearsOfExperience >= 5); seniorEmployees

##Calculate and print the average salary of employees in each department.
select <- df$Salary
sum <- sum(select)
count <- length(select)
average <- sum / count
average

##Determine the highest and lowest salaries in the entire dataset and identify the employees with these salaries.
maxSalary <- subset(df, Salary == max(Salary)); maxSalary
minSalary <- subset(df, Salary == min(Salary)); minSalary

##Create a bar plot to visualize the number of employees in each department.
barplot(table(df$Department), main = "Number of Employees in Department", xlab = "Department", ylab = "Number of Employees")

##Generate a scatter plot to explore the relationship between years of service and salary.
plot(df$YearsOfExperience, df$Salary, main = "Scatter Plot: Years of Experience vs Salary", xlab = "Years of Experience", ylab = "Salary")

##Save the "Senior Employees" data frame as a CSV file named "senior_employees.csv."
write.csv(seniorEmployees,"senior_employees.csv")