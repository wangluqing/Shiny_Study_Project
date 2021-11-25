##################
#按钮操作应用
##################

library(shiny)

ui <- fluidPage(
  actionButton(inputId = "clicks", 
               label = "Click me")
)

server <- function(input, output, session) {
  observeEvent(input$clicks, {
    print(as.numeric(input$clicks))
  })
}

shinyApp(ui, server)