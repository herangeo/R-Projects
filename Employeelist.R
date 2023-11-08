##Create a list named employee representing the details of an employee with the following components:
##EmployeeID: A unique employee identifier (as a numeric value).
##Name: The employee's full name (as a string).
##Salary: The employee's monthly salary (as a numeric value).
##Departments: A vector containing the names of the departments the employee is associated with (as strings).
EmployeeID<-1
Name<-"Hiran George"
Salary<-200000L
Departments<-c("Gym","cricket","coding","football","automobile")
employee <- list(EmployeeID = EmployeeID, Name = Name, Salary = Salary, Departments = Departments); employee

##Display the entire content of the employee list
print(employee)

##Calculate and print the employee's annual salary (12 times the monthly salary)
annualsalary<-12*(employee$Salary);annualsalary

##Update the employee's name to a different name
employee$Name<-"Heran";employee$Name

##Add a new department to the Departments vector for the employee
employee$Departments <- c(employee$Departments, "Gaming");employee

##Create a list named organization to represent an organization with the following components:
##Name: The name of the organization (as a string).
##Employees: A list containing details of at least three employees, using the structure created in Task 1.
newName<-"War Gym"
employee2 <- list(EmployeeID = 2, Name = "dhanwin kn", Salary = 20000000, Departments = Departments); employee2
employee3 <- list(EmployeeID = 3, Name = "mohit", Salary = 5000000, Departments = Departments); employee3
employee4 <- list(EmployeeID = 4, Name = "joe", Salary = 7500000, Departments = Departments); employee4
organization<- list(newName = newName, Employees = list(employee,employee2, employee3, employee4));organization

##Display the entire content of the nested list organization
print(organization)

##Access and print the annual salary of the second employee in the organization
access<-organization$Employees[[2]]$Salary;access

##Access and print the name of the organization.
access<-organization$newName;access

##Create a new list named department_employees that groups employees by department. Each 
##department should have a list of employees associated with it.
employees<-list(employee,employee2,employee3,employee4)
department_employees <- list()
for (employee in employees) 
{
  for (department in employee$Departments) 
  {
    if (department %in% names(department_employees)) 
    {
      department_employees[[department]] <- c(department_employees[[department]], employee)
    } 
    else 
    {
      department_employees[[department]] <- list(employee)
    }
  }
}

##Print each list created in the script to show the structure and content of the lists after performing the operations in Tasks 1-5.
employee; employee2; employee3; employee4
organization
department_employees

##Also, print the department_employees list to demonstrate how employees are grouped by department.
print(department_employees)