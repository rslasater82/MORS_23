#Load googlesheets package
library(googlesheets4)
#Authorize access to googlesheet
gs4_auth(cache = ".secrets", email = "rslasater82@gmail.com")

#Connect to google sheet
sheet_id <- "https://docs.google.com/spreadsheets/d/1-RUgXisoc8anA2kSJ2JNoUk9mtCRWModMyvvEdNWOU8/edit#gid=0"

library(shiny)

# Define server logic required to draw a histogram
function(input, output, session) {

#Action button submission
  observeEvent(input$Submit,{
    
               record = data.frame("DODID" = input$DODID,
                               "Name" = input$Name,
                               "Age" = input$Age,
                               "MOS" = input$MOS,
                               "HT" = input$Height,
                               "WT" = input$Weight,
                               "Company" = input$Company,
                               "Q1" = input$Q1,
                               "Q2" = input$Q2,
                               "Q3" = input$Q3,
                               "Q4" = input$Q4,
                               "Q5" = input$Q5,
                               "Q6" = input$Q6,
                               "Q7" = input$Q7,
                               "Q8" = input$Q8)
               sheet_append(sheet_id, record)
               shinyjs::disable(id = "Submit")
               shinyjs::show(id = "text1")
               })
}
