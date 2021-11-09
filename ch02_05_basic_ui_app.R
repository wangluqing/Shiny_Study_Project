library(shiny)

animals <- c("dog", "cat", "other")
ui <- fluidPage(
  radioButtons(
    "rb",
    "Choose one:",
    choiceNames = list(
      icon("angry"),
      icon("smile"),
      icon("sad-tear")
    ),
    choiceValues = list("angry", "happy", "sad")
  ),
  
  selectInput(
    "state", "What's your favourite state?", state.name, 
    multiple = TRUE
  ),
  
  checkboxGroupInput(
    "animal",
    "What's animals do you like?",
    animals
  ),
  
  checkboxInput("cleanup", "Clean up?", value = TRUE),
  checkboxInput("shutdown", "Shutdown?"),
  
  fileInput("upload", NULL),
  
  actionButton("click", "Click me!"),
  actionButton("drink", "Drink me!", icon = icon("cocktail")),
  
  fluidRow(
    actionButton("click1", "Click me!", class = "btn-danger"),
    actionButton("drink1", "Drink me!", class = "btn-lg btn-success")
  ),
  
  fluidRow(
    actionButton("eat", "Eat me!", class = "btn-block")
  )
  
)

server <- function(input, output, session) {
  
}

shinyApp(ui, server)