library(shiny)

shinyUI(fluidPage(
        
        titlePanel("Text Prediction"),
        
        # Sidebar with a slider input for the number of bins
        sidebarLayout(
                sidebarPanel(
                        p("This is my app for the data science specialization!"),
                        
                        textInput("text", "Here are some words", value = "")
                ),
                
                # Show a plot of the generated distribution
                mainPanel(
                        tags$li(textOutput("text1")),
                        tags$li(textOutput("text2")),
                        tags$li(textOutput("text3"))
                )
        )
))