# AdventureWorks 2022 Data Analysis Project

## Project Overview: 
A brief description of what this project achieves (e.g., "Analyzing sales performance and customer demographics for a global manufacturing company using SQL server").

## Business Questions Answered
a. Get all the details from the person table including email ID, phone number and phone number type
b. Get the details of the sales header order made in May 2011
c. Get the details of the sales details order made in the month of May 2011
d. Get the total sales made in May 2011
e. Get the total sales made in the year 2011 by month order by increasing sales
f. Get the total sales made to the customer with FirstName='Gustavo' and LastName = 'Achong'

## Tools Used
* SQL Server Management Studio (SSMS)

## Key Insights
* **Insight 1:** June has the lowest and October has the highest total sales in 2011.
* **Insight 2:** In 2011, Sales in last 4 months are quite impressive.

## How to Run the Scripts
1. Download the AdventureWorks database from the following location andrestore it in your server:
Location: https://github.com/Microsoft/sql-server-samples/releases/download/adventureworks/AdventureWorksLT2022.bak
File Name: AdventureWorksLT2022.bak

AdventureWorks is a sample database shipped with SQL Server and it can be downloaded from the GitHub site. AdventureWorks has replaced
Northwind and Pubs sample databases that were available in SQL Server in 2005. Microsoft keeps updating the sample database as it releases new
versions.

2. Restore Backup:
  Follow the below steps to restore a backup of your database using SQLServer Management Studio:
a. Open SQL Server Management Studio and connect to the target SQL Server instance
b. Right-click on the Databases Node and select Restore Database
c. Select Device and click on the ellipsis (...)
d. In the dialog box, select Backup devices, click on Add, navigate to the database backup in the file system of the server, select the
backup, and click on OK.
e. If needed, change the target location for the data and log files in the Files pane
f. Now, click on OK
3. Run the scripts located in the `/Scripts` folder.
