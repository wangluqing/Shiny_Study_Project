###################
#isolate应用
#屏蔽reactive的操作
###################

library(shiny)

ui <- fluidPage(
  sliderInput(inputId = "num", 
              label = "Choose a number", 
              value = 25, min = 1, max = 100),
  textInput(inputId = "title", 
            label = "Write a title",
            value = "Histogram of Random Normal Values"),
  plotOutput("hist")
)

server <- function(input, output, session) {
  output$hist <- renderPlot({
    hist(rnorm(input$num), main = isolate(input$title))
  })
}

shinyApp(ui, server)