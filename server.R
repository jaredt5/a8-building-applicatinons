library(shiny)
library(plotly)
source("build_chart.R")
data <- iris

shinyServer(function(input, output) {
  # Creates plot
  output$chart <- renderPlotly({
    build_chart(data, input$info, input$info2, input$obs, input$checkGroup)
  })
  
})