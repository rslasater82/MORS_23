# MORS_23

## Purpose
This project is attempting to solve the problem of getting adhoc data from outside the A365 system into Power BI. Th 

## Method

Step 1: Create DB in SQLite
Step 2: Create Shiny app to write data to DB
Step 3: Connect excel document to read database
Step 4: Connect Sharepoint to external excel document

## Step 1: Create DB in SQLite
There are a number of way to do this. I created the DB using DBI and RSQLite packages. The R document "SQLiteDiscover.R" has the code that I used to initialize the database.

## Step 2: Create Shiny app to write to DB
