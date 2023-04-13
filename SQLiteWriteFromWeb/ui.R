#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
fluidPage(

    # Application title
    titlePanel("SQLite Write from Web"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            textInput("Name", 
                      "Name: ",
                      value = ""),
            textInput("Email",
                      "Email: ",
                      value = ""),
            textInput("FavoriteMovie",
                      "Favorite Movie: ")
            ),

        # Show a plot of the generated distribution
        mainPanel(
            dataTableOutput("Movies")
        )
    )
)
