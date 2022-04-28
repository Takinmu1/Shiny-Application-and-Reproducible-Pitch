library(shiny)
data(mtcars)
library(dplyr)
library(ggplot2)

# Define server logic required to draw a histogram



shinyServer(function(input, output) {

    output$Plot1 <- renderPlot({
        set.seed(2022-04-27)
        Model1 <-mtcars[mtcars$cyl==input$Cylinders,]
        fit <- lm(mpg~ hp, data=Model1)
        dataX<- Model1$hp
        dataY<- Model1$mpg
        plot(dataX, dataY, data= Model1, xlab="HP", ylab="MPG", col= "blue")
        abline(lm(dataY~ dataX, data = Model1), col="red")

    })

})
