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
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Iris Data"),
  
  sidebarLayout(
    sidebarPanel(
        radioButtons(inputId = "dataSource", label = "Choose a Species?", 
                     choices = list("Setosa", "Versicolor", "Virginica"), 
                     selected = "Setosa")
    ),
    
    
    mainPanel(
        conditionalPanel(
            condition="input.dataSource == 'Setosa'",
            plotOutput("SetosaPlot"),
            HTML("<p> A linear relationship with the slope of 0.7985 and R-sqaured value 0.5514</p>")
        ), 
        conditionalPanel(
            condition="input.dataSource == 'Versicolor'",
            plotOutput("VersicolorPlot"), 
            HTML("<p> A linear relationship with the slope of 0.3197 and R-sqaured value 0.2766</p>")
        ), 
        conditionalPanel(
            condition="input.dataSource == 'Virginica'",
            plotOutput("VirginicaPlot"), 
            HTML("<p> A linear relationship with the slope of 0.2319 and R-sqaured value 0.2091</p>")
        )
    )
  )
))
