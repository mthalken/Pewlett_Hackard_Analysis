# Pewlett Hackard Analysis

## The purpose of this analysis was to analyze the age of employees based on retirement age to give managers a since of a timeline for new hires to fill the roles. We also did an analysis of individuals for a mentorship program with the same data. 

## Project Overview:
1. Create an ERD to help visualize the data. 
2. Organize, clean, and create tables for management to see the number of potential retirees.
3. Get a count of potential retirees for each department. 
4. Find the number of employees eligible for the mentorship program.

## Resources
- Source of data: [departments.csv](https://github.com/mthalken/Pewlett_Hackard_Analysis/blob/main/Data/departments.csv), [dept_emp.csv](https://github.com/mthalken/Pewlett_Hackard_Analysis/blob/main/Data/dept_emp.csv), [dept_managers.csv](https://github.com/mthalken/Pewlett_Hackard_Analysis/blob/main/Data/dept_manager.csv), [employees.csv](https://github.com/mthalken/Pewlett_Hackard_Analysis/blob/main/Data/employees.csv), [salaries.csv](https://github.com/mthalken/Pewlett_Hackard_Analysis/blob/main/Data/salaries.csv), & [titles.csv](https://github.com/mthalken/Pewlett_Hackard_Analysis/blob/main/Data/titles.csv)
- Software: pgAdmin 4.6.1, PostgreSQL, Visual Studio Code 1.60.2
- Please see the [here](https://github.com/mthalken/Pewlett_Hackard_Analysis/blob/main/Queries/employee_database_challenge.sql) to see the refactored code.
- You can also see the preliminary code [here](https://github.com/mthalken/Pewlett_Hackard_Analysis/blob/main/Queries/queries.sql)

## Results 
- There were three questions that came up looking into the results of the data:
    1. While looking through the data and csv's we noticed that there was no data on salaries and changes in salaries. This could be a good opportunity for further analysis on salary changes over time in each department and for each position. 
    2. Looking at the number of current manager there are for each department we were only able to find 5. This brings up a question if this data is updated or being updated through the employment cycle. 
    ![png](https://github.com/mthalken/Pewlett_Hackard_Analysis/blob/main/Results/manager_info.png)
    3. To further the last point we wanted to find the average length of employment for current employees (29 years and 2 months). This could be that the company does an extremely excelent job of job retention or the data has not been updated. We also found the average length of employment for previous employees was 4 years and 7 months. 

- Current employees:

![png](https://github.com/mthalken/Pewlett_Hackard_Analysis/blob/main/Results/current_employment_count.png)

- Average length of current employees:

![png](https://github.com/mthalken/Pewlett_Hackard_Analysis/blob/main/Results/avg_employment_length.png)

- Average length of previous employees:

![png](https://github.com/mthalken/Pewlett_Hackard_Analysis/blob/main/Results/avg_employment_length_past.png)

- Total retirement eligible:

![png](https://github.com/mthalken/Pewlett_Hackard_Analysis/blob/main/Results/unique_count.png)

- Retirement count per department:

![png](https://github.com/mthalken/Pewlett_Hackard_Analysis/blob/main/Results/retirement_count_by_department.png)

- Retirement salary sum per department:

![png](https://github.com/mthalken/Pewlett_Hackard_Analysis/blob/main/Results/retirement_sum_salary_by_department.png)

- Retirement titles:

![png](https://github.com/mthalken/Pewlett_Hackard_Analysis/blob/main/Results/retiring_title_count.png)

- Mentorship eligible:

![png](https://github.com/mthalken/Pewlett_Hackard_Analysis/blob/main/Results/mentorship_eligible.png)

- Mentorship eligible by department:

![png]()



## Summary
Upon further review of the data provided it would be best to check the records of the employees and confirm they are accurate to the reported data. 

From the data provided, out of the 240,124 employees there are 90,395 eligible for retirement and only 1549 eligible for the mentorship program. Using some of the potential retirees as mentors could help close the gap. 


