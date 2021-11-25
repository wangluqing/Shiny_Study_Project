##############
#两个输出的APP
#提示：
#快速创建shinyapp的模板的快捷方式
#输入shinyapp 按 Shift + Tab键
#############

library(shiny)

ui <- fluidPage(
  sliderInput(inputId = "num", 
              label = "Choose a number", 
              value = 25, min = 1, max = 100),
  plotOutput("hist"),
  verbatimTextOutput("stats")
)

server <- function(input, output, session) {
  output$hist <- renderPlot({
    hist(rnorm(input$num))
  })
  output$stats <- renderPrint({
    summary(rnorm(input$num))
  })
}

shinyApp(ui, server)