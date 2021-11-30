#############
#tags操作
#############

library(shiny)

ui <- fluidPage(
  h1("My Shiny App"),
  p(style = "font-family:Impact",
    "See other apps in the",
    a("Shiny Showcase",
      href = "https://shiny.rstudio.com/gallery/")
  )
)

server <- function(input, output, session) {
  
}

shinyApp(ui, server)