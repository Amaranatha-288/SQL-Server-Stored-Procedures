# SQL-Server-Stored-Procedures
This repository contains my **Day 12 hands-on practice with Stored Procedures in SQL Server**.

A stored procedure is a precompiled group of SQL statements stored in a database. It can accept parameters and be executed whenever a specific task needs to be performed.

## Concepts Covered

* **Creating Stored Procedures**

  * Convert SQL queries into reusable stored procedures
  * Generate customer summary reports

* **Executing Stored Procedures**

  * Execute stored procedures using `EXEC`

* **Using Parameters**

  * Pass country values as parameters
  * Generate dynamic customer and sales summaries

* **Using Variables**

  * Declare variables to store customer counts and average scores
  * Assign query results to variables

* **Conditional Logic**

  * Use `IF EXISTS` to check for missing scores
  * Use `IF...ELSE` to control execution flow

* **Data Cleaning**

  * Identify NULL customer scores
  * Update missing scores when required

* **Generating Reports**

  * Display total customers and average scores
  * Calculate total orders and total sales
  * Display results using `PRINT`

* **Error-Handling Practice**

  * Explore how SQL errors can occur during procedure execution

## Real-World Applications

* Creating reusable business reports
* Generating customer summaries
* Calculating sales and order metrics
* Automating repeated database operations
* Accepting user inputs through parameters
* Performing data-cleaning tasks
* Applying conditional business logic
* Supporting ETL processes
* Improving consistency in database operations
* Preparing data for reporting and analytics

## Tools Used

* Microsoft SQL Server
* SQL Server Management Studio (SSMS)

## Repository Structure

```text
sql-server-stored-procedures/
│
├── README.md
└── stored_procedures.sql
```

## Purpose

The purpose of this practice is to understand how SQL Server Stored Procedures can be used to **create reusable queries, accept parameters, perform calculations, apply business logic, and generate meaningful reports**.
