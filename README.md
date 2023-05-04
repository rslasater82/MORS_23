# MORS_23

## Purpose
This project is attempting to solve the problem of getting adhoc data from outside the A365 system into Power BI. Th 

## Method

Step 1: Create in Google Sheets file
Step 2: Create Shiny app to write data to the Google Sheets
Step 3: Use power automate to pull data from google sheet into a Sharepoint list

## Step 1: Create Google Sheets file
Ideally, this would be done using an instance of the Army Google platform. This would provide an IL4 data environment. However, I was unable to get an account setup, so instead I am using a public google account. Using 


## Step 2: Create Shiny app to write to DB
Ran into a problem that SQLite is meant to be local, not saved in the cloud. The better solution is to use google sheets.