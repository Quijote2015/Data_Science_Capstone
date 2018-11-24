suppressPackageStartupMessages(c(
  library(shiny),
  library(tm),
  library(stringr)))


source("C:/Users/Usuario/Documents/final/en_US/WordLogic.R")

# LoadData()


shinyServer(function(input, output) {
  output$NextWord <- renderPrint({
    result <- predictWord(input$inputText)
    result
  });
  output$inputWords <- renderText({
    input$inputText});
}
)
