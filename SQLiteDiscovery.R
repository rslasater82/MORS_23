#load packages
library(tidyverse)
library(DBI)

#Create database, three tables will be saved
mydb <- dbConnect(RSQLite::SQLite(), "test.sqlite")
dbDisconnect(mydb)  

#This is how you can write a table from a dataframe to a SQL Table
mydb <- dbConnect(RSQLite::SQLite(), "https://github.com/rslasater82/MORS_23/blob/main/test.sqlite")
dbWriteTable(mydb, "mtcars", mtcars)
dbWriteTable(mydb, "iris", iris)
dbListTables(mydb)

dbGetQuery(mydb, 'SELECT * FROM mtcars LIMIT 5')
dbDisconnect(mydb)

#Lets build a dataframe from scratch now
#DF will be favorite movies
#Fields will be name, email, favorite movie
#I'm going to use row functions to add in, these will be
#replaced with SQL commands later

#Initiate dataframe and field
favorite_movies <- tibble(Name = "George Costanza", Email = "George@Costanza.net", Favorite_Movie = "Jaws")

#Write to table to DB
mydb <- dbConnect(RSQLite::SQLite(), "test.sqlite")
dbWriteTable(mydb, "Favorite_Movies", favorite_movies)

#Create new entry and add to DB Table
new_entry <- tibble(Name = "Tony Hawk", Email = "900@rad.org", Favorite_Movie = "Gleaming the Cube")
dbAppendTable(mydb, "Favorite_Movies", new_entry)

#Check table for entry
dbReadTable(mydb, "Favorite_Movies")

