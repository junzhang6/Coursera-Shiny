#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(dplyr)

data(iris)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$SetosaPlot <- renderPlot({
      setosa <- filter(iris, Species == "setosa")
      plot(setosa$Sepal.Length, setosa$Sepal.Width, col=2, pch=19, 
           xlab="Speal Length", ylab="Sepal Width")
  })
  
  output$VersicolorPlot <- renderPlot({
      versicolor <- filter(iris, Species == "versicolor")
      plot(versicolor$Sepal.Length, versicolor$Sepal.Width, col=3, pch=19, 
           xlab="Speal Length", ylab="Sepal Width")
  })
  
  output$VirginicaPlot <- renderPlot({
      virginica <- filter(iris, Species == "virginica")
      plot(virginica$Sepal.Length, virginica$Sepal.Width, col=4, pch=19, 
           xlab="Speal Length", ylab="Sepal Width")
  })
  
})
