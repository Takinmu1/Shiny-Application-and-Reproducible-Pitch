

library(shiny)
shinyUI(fluidPage(

    # Application title
    titlePanel("Cars Data"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            sliderInput("Cylinders",
                        "Number of Cylinders:",
                        min = 4,
                        max = 8,
                        value = 4,
                        step = 2)
        ),

        # Show a plot of the generated distribution
        mainPanel(
            plotOutput("Plot1")
        )
    )
))
