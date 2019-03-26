#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

## Server function connecting input and output
library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  sliderInput("n", "Number of samples", 1, 100, 10),
  fluidRow(
    column(width=6,
           sliderInput("test", "Test baby", 1, 100, 10),
           offset=0
           )
  ),
  sidebarPanel(
    radioButtons("dist_type", "What type of distribution would you like?", 
                 c("normal", "uniform", "exponential"))
  ),
  mainPanel(
    plotOutput("hist")) 
  )
)
