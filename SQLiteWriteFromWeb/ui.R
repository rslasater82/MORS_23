#This is the UI portion of the survey application

library(shiny)
#Load googlesheets package


# Define UI for application that draws a histogram
fluidPage(

    # Application title
    titlePanel("Shiny Form Example"),
#Theres no output, only questions
      mainPanel(
        numericInput(
          "DODID",
          "Enter your DODID:",
          value = 0
        ),
        textInput(
          "Name",
          "Enter your name:"
        ),
        numericInput(
          "Age",
          "Enter your Age:",
          value = 0
        ),
        textInput(
          "MOS",
          "Enter your MOS:"
        ),
        numericInput(
          "Height",
          "Enter your Height in inches:",
          value = 0
        ),
        numericInput(
          "Weight",
          "Enter your weight in pounds:",
          value = 0
        ),
        "Cognitive Performance Questionanaire",
        "For the next eight questions, use the following scale:",
        "1: False 100% of the time",
        "2: False 85% of the time",
        "3: False, 60% of the time",
        "4: 50/50",
        "5: True 60% of the time",
        "6: True 85% of the time",
        "7: True 100% of the time",
        sliderInput("Q1",
                    "I believe in my ability to achieve my goals", 
                    min = 1,
                    max = 7,
                    value = 4),
        sliderInput("Q2",
                    "I am able to regulate my focus when performing tasks", 
                    min = 1,
                    max = 7,
                    value = 4),
        sliderInput("Q3",
                    "I am able to use my emotions to perform the way I want to", 
                    min = 1,
                    max = 7,
                    value = 4),
        sliderInput("Q4",
                    "I strive for continued success", 
                    min = 1,
                    max = 7,
                    value = 4),
        sliderInput("Q5",
                    "I effectively execute my knowledge of what is required to achieve my goals", 
                    min = 1,
                    max = 7,
                    value = 4),
        sliderInput("Q6",
                     "I consistently overcome adversity", 
                     min = 1,
                     max = 7,
                    value = 4),
        sliderInput("Q7",
                    "I am able to execute appropriate skills or knowledge when challenged", 
                    min = 1,
                    max = 7,
                    value = 4),
        sliderInput("Q8",
                    "I can find a positive in most situations", 
                    min = 1,
                    max = 7,
                    value = 4),
        actionButton("Submit", "Submit Response")
    )
)

