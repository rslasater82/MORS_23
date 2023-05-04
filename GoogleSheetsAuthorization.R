library(googlesheets4)
gs4_auth(email = "rslasater82@gmail.com", cache = ".secrets")
usethis::use_git_ignore(".secrets")
usethis::use_git_ignore("*/.secrets")
