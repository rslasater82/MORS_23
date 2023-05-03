#This file will do the same as SQLite Discovery, except it will write to a google sheet.

library(tidyverse)
library(googlesheets4)

#Below code sets up the authorization to google drive
gargle_oauth_email = TRUE
gargle_oauth_cache = "./.secrets"
googledrive::drive_auth()

#Create a new sheet from dataframe
googlesheets4::gs4_create(name = "Favorite Movies")
#To create the connection to the sheet
sheet_id <- googledrive::drive_get("Favorite Movies")

#Read the sheet in
df <- read_sheet(ss = sheet_id, sheet = "Sheet1")

#Create a new record
new_entry <- tibble(Name = "Joe DiMaggio", Email = "Legend@Yankees.com", Favorite_Movie = "Some Like it Hot")

#Append the dataset with the new record
sheet_append(data = new_entry,
             ss = sheet_id,
             sheet = "Sheet1")
