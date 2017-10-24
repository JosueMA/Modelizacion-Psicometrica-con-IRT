# Código a original #####
theta <- seq(-3, 3, .1)

bmedium <- 0
amoderate <- 1
P <- 1 / (1 + exp(-amoderate * (theta - bmedium)))
plot(theta, P)

## Shiny 1 #####
library(shiny)
theta <- seq(-3, 3, .1)
ui <- fluidPage(
  sliderInput(
    inputId = "b",
    label = "Elige un valor de dificultad (b)",
    value = 0, min = -4, max = 4,
    animate = TRUE),
  sliderInput(
    inputId = "a",
    label = "Elige un valor de discriminación (a)",
    value = 0, min = -5, max = 5,
    animate = TRUE),
  plotOutput("icc")
)


server <- function(input, output) {
P <- reactive({1 / (1 + exp(-input$a * (theta - input$b)))})
output$icc <- renderPlot(
    plot(theta, P(),
         # type = "line",
         col = "steelblue",
         main = "Curva característica de un item",
         xlab = expression(paste("Habilidad, ", theta)),
         ylab = expression(paste("Probabilidad de responder correctamente, P (",theta,")")))
  )
}

shinyApp(ui = ui, server = server)


## Shiny 2 ####

library(shiny)
theta <- seq(-3, 3, .1)
ui <- fluidPage( 
  headerPanel('IRT - 2 parámetros'),
  sidebarPanel(
    numericInput(
      "b",
      label = "Elige un valor de dificultad (b)",
      value = 0, min = -4, max = 4),
    numericInput(
      "a",
      label = "Elige un valor de discriminación (a)",
      value = 0, min = -5, max = 5
    )), 
  mainPanel(
    plotOutput("icc")
  )
)


server <- function(input, output) {
  P <- reactive({1 / (1 + exp(-input$a * (theta - input$b)))})
  output$icc <- renderPlot(
    plot(theta, P(),
         # type = "line",
         col = "steelblue",
         main = "Curva característica de un item",
         xlab = expression(paste("Habilidad, ", theta)),
         ylab = expression(paste("Probabilidad de responder correctamente, P (",theta,")")))
  )
}

shinyApp(ui = ui, server = server)
