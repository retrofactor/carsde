library(shiny)
library(ggplot2)

shinyUI(pageWithSidebar(

  headerPanel("Miles per Gallon Dataset Explorer"),

  sidebarPanel(
    helpText("The application visualizes interactions between variables in the classic mtcars dataset. You can choose the variables for X and Y axis using the selection lists below."),
    selectInput('x', 'X', names(mtcars)),
    selectInput('y', 'Y', names(mtcars)),
    helpText("The smoothing method for the curve that is fit to the points may be selected from the list below."),
    selectInput('method', 'Smoothing method', c('lm', 'glm', 'loess', 'gam')),
    helpText("The confidence interval for the smoothing method can be selected with the slider beneath."),
    sliderInput('level', 'Level of Confidence', min=0.9, max=1, value=0.95, step=0.001)
  ),

  mainPanel(
    plotOutput('plot')
  )
))
