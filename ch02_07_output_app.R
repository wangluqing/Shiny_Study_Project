library(shiny)

ui <- fluidPage(
  tableOutput("static"),
  dataTableOutput("dynmic")
)

server <- function(input, output, session) {
  output$static <- renderTable(head(mtcars))
  output$dynmic <- renderDataTable(mtcars, options = list(pageLength = 5))
}

shinyApp(ui, server)