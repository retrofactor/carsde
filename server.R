library(shiny)
library(ggplot2)
data(mtcars)

shinyServer(function(input, output) {

  output$plot <- renderPlot({

    p <- ggplot(mtcars, aes_string(x=input$x, y=input$y)) + geom_point() + stat_smooth(method=input$method, level=input$level)

    print(p)

  }, height=700)

})
