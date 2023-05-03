#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

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
                               "Q1" = input$Q1,
                               "Q2" = input$Q2,
                               "Q3" = input$Q3,
                               "Q4" = input$Q4,
                               "Q5" = input$Q5,
                               "Q6" = input$Q6,
                               "Q7" = input$Q7,
                               "Q8" = input$Q8)
               
               })
  
}
